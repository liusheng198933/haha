from util import *
from cmd_issue_new import *
from timestamp import *
from readFile import *
import copy
import subprocess
import time
import random
from mininet.cli import CLI

PRTMAX = 100

def network_init(K, filepath, state):
    state_cur = copy.deepcopy(state)
    script_init(filepath)
    table_id = 0
    dpset = ['1'*7] # arp switch
    for core in range(pow((K/2),2)):
        dpset.append(int2dpid(1, core))
    for i in range(2,4):
        for pod in range(K):
            for swNum in range(K/2):
                dpset.append(int2dpid(i, swNum, pod))
    for i in dpset:
        script_write(filepath, table_clear(i))
    for i in dpset:
        if i != '1'*7:
            #print "drop_rule_push:"
            #print i
            drop_rule_push(i, filepath, 1, 1, table_id, 1)
            # default rule has rtmp=1, ttmp=1 and priority=1
    arp_rule_push('1'*7, filepath, table_id, 1)
    for pod in range(K):
        for swNum in range(K/2):
            arp_rule_push(int2dpid(3, swNum, pod), filepath, table_id, 2)
    subprocess.Popen("%s" %filepath)

    for i in dpset:
        if i != '1'*7:
            state_cur.add_table(i, 0)
            #state_next.add_table(i,0)
            state_cur.get_table(i, 0).add_rule({}, 1, 1, 0, 0)
            #state_next.get_table(i, 0).add_rule({}, 1, 1, 0, 0)
    time.sleep(1)
    return state_cur

def old_path_deploy(filepath, K, state_cur, prt):
    state_next = copy.deepcopy(state_cur)
    path_list = path_read(filepath, K)
    flow_list = {}
    for j in range(len(path_list['flow'])):
        i = path_list['flow'][j]
        f = match_parse(i)
        f_reverse = match_parse(reverse_flow(i))
        if f not in flow_list.keys() and f_reverse not in flow_list.keys():
            flow_list[f] = path_list['old_path'][j]

    for i in flow_list.keys():
        old_path = flow_list[i]['path']
        in_port = out_port_construct(old_path, flow_list[i]['in_port'])
        out_port = out_port_construct(old_path, flow_list[i]['out_port'])
        flow = match_reverse(i)
        clk = 7
        bdid = 1
        deploy_ret = path_deploy([], old_path, flow, state_next, prt, in_port, out_port, clk, bdid, 0)
        state_next = deploy_ret['state']
        clk = deploy_ret['clk']
        bdid = deploy_ret['bdid']
        time.sleep(1)

    return {'state': state_next, 'flow_list': flow_list}


def path_deploy_cu(old_path, new_path, flow, state_cur, prt, in_port, out_port, clock, bd, if_delay):
    bdid = bd
    clk = clock + 1

    #clk = 0
    rule_ret = rule_construct_cu(old_path, new_path, flow, state_cur, prt, out_port, clk)
    rule_set = rule_ret['rule_set']
    state_next = state_update(rule_set, state_cur)

    rule_set_extra = {}
    rule_set_extra[new_path[0]] = rule_ret['first_rule']

    flow_reverse = reverse_flow(flow)
    #flow_reverse['ipv4_src'] = flow['ipv4_dst']
    #flow_reverse['ipv4_dst'] = flow['ipv4_src']

    old_path_reverse = copy.deepcopy(old_path)
    old_path_reverse.reverse()
    new_path_reverse = copy.deepcopy(new_path)
    new_path_reverse.reverse()

    rule_reverse_ret = rule_construct_cu(old_path_reverse, new_path_reverse, flow_reverse, state_next, prt, in_port, clk)
    rule_set_reverse = rule_reverse_ret['rule_set']
    state_next_next = state_update(rule_set_reverse, state_next)

    rule_set_extra[new_path_reverse[0]] = rule_reverse_ret['first_rule']
    state_next_next = state_update(rule_set_extra, state_next_next)

    #rule_set_reverse = setTMP(old_path_reverse, new_path_reverse, flow_reverse, state_next, state_next_next, rule_set_reverse, clk)
    #state_next_next = state_update(rule_set_reverse, state_next, clk)
    #state_next.copy_state(state_cur)

    for i in rule_set_reverse.keys():
        if i in rule_set.keys():
            for j in rule_set_reverse[i]['add']:
                rule_set[i]['add'].append(j)
            for j in rule_set_reverse[i]['del']:
                rule_set[i]['del'].append(j)
        else:
            rule_set[i] = rule_set_reverse[i]

    #table_id = 0
    #script_init(filepath)
    if not if_delay:
        for dp in rule_set.keys():
            bdid = bdid + 1
            switch_deploy(dp, rule_set[dp], bdid)
        for dp in rule_set_extra.keys():
            bdid = bdid + 1
            switch_deploy(dp, rule_set_extra[dp], bdid)
        return {'state': state_next_next, 'bdid': bdid, 'clk': clk}

    delay_list = delay_generate(rule_set)
    dp_sort = []
    sleep_time = [0]
    for dp in delay_list.keys():
        e = 0
        while e < len(dp_sort) and delay_list[dp_sort[e]] <= delay_list[dp]:
            e = e + 1
        dp_sort.insert(e, dp)
        sleep_time.insert(e+1, delay_list[dp])

    #print delay_list
    #print sleep_time

    for e in range(len(dp_sort)):
        time.sleep(sleep_time[e+1] - sleep_time[e])
        dp = dp_sort[e]
        bdid = bdid + 1
        switch_deploy(dp, rule_set[dp], bdid)

    delay_list = delay_generate(rule_set_extra)
    dp_sort = []
    sleep_time = [0]
    for dp in delay_list.keys():
        e = 0
        while e < len(dp_sort) and delay_list[dp_sort[e]] <= delay_list[dp]:
            e = e + 1
        dp_sort.insert(e, dp)
        sleep_time.insert(e+1, delay_list[dp])

    #print delay_list
    #print sleep_time

    for e in range(len(dp_sort)):
        time.sleep(sleep_time[e+1] - sleep_time[e])
        dp = dp_sort[e]
        bdid = bdid + 1
        switch_deploy(dp, rule_set_extra[dp], bdid)

    return {'state': state_next_next, 'bdid': bdid, 'clk': clk}



def path_deploy_normal(old_path, new_path, flow, state_cur, prt, in_port, out_port, bd, if_delay):
    bdid = bd
    #clk = clock + 1
    clk = 0
    rule_set = rule_construct_normal(old_path, new_path, flow, state_cur, prt, out_port)
    state_next = state_update(rule_set, state_cur)

    flow_reverse = reverse_flow(flow)
    #flow_reverse['ipv4_src'] = flow['ipv4_dst']
    #flow_reverse['ipv4_dst'] = flow['ipv4_src']

    old_path_reverse = copy.deepcopy(old_path)
    old_path_reverse.reverse()
    new_path_reverse = copy.deepcopy(new_path)
    new_path_reverse.reverse()

    rule_set_reverse = rule_construct_normal(old_path_reverse, new_path_reverse, flow_reverse, state_next, prt, in_port)
    state_next_next = state_update(rule_set_reverse, state_next)

    #rule_set_reverse = setTMP(old_path_reverse, new_path_reverse, flow_reverse, state_next, state_next_next, rule_set_reverse, clk)
    #state_next_next = state_update(rule_set_reverse, state_next, clk)
    #state_next.copy_state(state_cur)

    for i in rule_set_reverse.keys():
        if i in rule_set.keys():
            for j in rule_set_reverse[i]['add']:
                rule_set[i]['add'].append(j)
            for j in rule_set_reverse[i]['del']:
                rule_set[i]['del'].append(j)
        else:
            rule_set[i] = rule_set_reverse[i]

    #table_id = 0
    #script_init(filepath)
    if not if_delay:
        for dp in rule_set.keys():
            bdid = bdid + 1
            switch_deploy(dp, rule_set[dp], bdid)
        return {'state': state_next_next, 'bdid': bdid, 'clk': clk}

    delay_list = delay_generate(rule_set)
    dp_sort = []
    sleep_time = [0]
    for dp in delay_list.keys():
        e = 0
        while e < len(dp_sort) and delay_list[dp_sort[e]] <= delay_list[dp]:
            e = e + 1
        dp_sort.insert(e, dp)
        sleep_time.insert(e+1, delay_list[dp])

    #print delay_list
    #print sleep_time

    for e in range(len(dp_sort)):
        time.sleep(sleep_time[e+1] - sleep_time[e])
        dp = dp_sort[e]
        bdid = bdid + 1
        switch_deploy(dp, rule_set[dp], bdid)

    return {'state': state_next_next, 'bdid': bdid, 'clk': clk}


def path_deploy_coco(old_path, new_path, flow, state_cur, prt, in_port, out_port, clock, bd, if_delay):
    bdid = bd
    clk = clock + 1
    #clk = 0
    rule_set = rule_construct_coco(old_path, new_path, flow, state_cur, prt, out_port, clk)
    state_next = state_update(rule_set, state_cur)

    flow_reverse = reverse_flow(flow)
    #flow_reverse['ipv4_src'] = flow['ipv4_dst']
    #flow_reverse['ipv4_dst'] = flow['ipv4_src']

    old_path_reverse = copy.deepcopy(old_path)
    old_path_reverse.reverse()
    new_path_reverse = copy.deepcopy(new_path)
    new_path_reverse.reverse()

    rule_set_reverse = rule_construct_coco(old_path_reverse, new_path_reverse, flow_reverse, state_next, prt, in_port, clk)
    state_next_next = state_update(rule_set_reverse, state_next)

    #rule_set_reverse = setTMP(old_path_reverse, new_path_reverse, flow_reverse, state_next, state_next_next, rule_set_reverse, clk)
    #state_next_next = state_update(rule_set_reverse, state_next, clk)
    #state_next.copy_state(state_cur)

    for i in rule_set_reverse.keys():
        if i in rule_set.keys():
            for j in rule_set_reverse[i]['add']:
                rule_set[i]['add'].append(j)
            for j in rule_set_reverse[i]['del']:
                rule_set[i]['del'].append(j)
        else:
            rule_set[i] = rule_set_reverse[i]

    #table_id = 0
    #script_init(filepath)
    if not if_delay:
        for dp in rule_set.keys():
            bdid = bdid + 1
            switch_deploy(dp, rule_set[dp], bdid)
        return {'state': state_next_next, 'bdid': bdid, 'clk': clk}

    delay_list = delay_generate(rule_set)
    dp_sort = []
    sleep_time = [0]
    for dp in delay_list.keys():
        e = 0
        while e < len(dp_sort) and delay_list[dp_sort[e]] <= delay_list[dp]:
            e = e + 1
        dp_sort.insert(e, dp)
        sleep_time.insert(e+1, delay_list[dp])

    #print delay_list
    #print dp_sort
    #print old_path
    #print new_path
    #print delay_list[old_path[1]] - delay_list[old_path[2]]
    #print delay_list[old_path[3]] - delay_list[old_path[2]]

    for e in range(len(dp_sort)):
        time.sleep(sleep_time[e+1] - sleep_time[e])
        dp = dp_sort[e]
        bdid = bdid + 1
        switch_deploy(dp, rule_set[dp], bdid)

    return {'state': state_next_next, 'bdid': bdid, 'clk': clk}


def path_deploy(old_path, new_path, flow, state_cur, prt, in_port, out_port, clock, bd, if_delay):
    bdid = bd
    clk = clock + 1

    rule_set = rule_construct(old_path, new_path, flow, state_cur, prt, out_port, clk)
    state_next = state_update(rule_set, state_cur)

    rule_set = setTMP(old_path, new_path, flow, state_cur, state_next, rule_set, clk)
    state_next = state_update(rule_set, state_cur)
    #state_next.copy_state(state_cur)
    """
    for r in rule_set.keys():
        print "add rules:"
        for x in rule_set[r]['add']:
            x.print_rule()
        print "del rules:"
        for x in rule_set[r]['del']:
            x.print_rule()
    """
    flow_reverse = reverse_flow(flow)
    #flow_reverse['ipv4_src'] = flow['ipv4_dst']
    #flow_reverse['ipv4_dst'] = flow['ipv4_src']

    old_path_reverse = copy.deepcopy(old_path)
    old_path_reverse.reverse()
    new_path_reverse = copy.deepcopy(new_path)
    new_path_reverse.reverse()

    rule_set_reverse = rule_construct(old_path_reverse, new_path_reverse, flow_reverse, state_next, prt, in_port, clk)
    state_next_next = state_update(rule_set_reverse, state_next)

    rule_set_reverse = setTMP(old_path_reverse, new_path_reverse, flow_reverse, state_next, state_next_next, rule_set_reverse, clk)
    state_next_next = state_update(rule_set_reverse, state_next)
    #state_next.copy_state(state_cur)

    for i in rule_set_reverse.keys():
        if i in rule_set.keys():
            for j in rule_set_reverse[i]['add']:
                rule_set[i]['add'].append(j)
            for j in rule_set_reverse[i]['del']:
                rule_set[i]['del'].append(j)
        else:
            rule_set[i] = rule_set_reverse[i]

    if not rule_set.keys():
        return {'state': state_next_next, 'bdid': bdid, 'clk': clk}
    #table_id = 0
    #script_init(filepath)
    if not if_delay:
        for dp in rule_set.keys():
            bdid = bdid + 1
            switch_deploy(dp, rule_set[dp], bdid)
        return {'state': state_next_next, 'bdid': bdid, 'clk': clk}

    delay_list = delay_generate(rule_set)
    dp_sort = []
    sleep_time = [0]
    for dp in delay_list.keys():
        e = 0
        while e < len(dp_sort) and delay_list[dp_sort[e]] <= delay_list[dp]:
            e = e + 1
        dp_sort.insert(e, dp)
        sleep_time.insert(e+1, delay_list[dp])

    print delay_list
    print sleep_time

    for e in range(len(dp_sort)):
        time.sleep(sleep_time[e+1] - sleep_time[e])
        dp = dp_sort[e]
        bdid = bdid + 1
        switch_deploy(dp, rule_set[dp], bdid)

    return {'state': state_next_next, 'bdid': bdid, 'clk': clk}

    #for dp in rule_set.keys():
        #bdid = bdid + 1
        #switch_deploy(dp, rule_set[dp], bdid)
        #script_write(filepath, bundleCtrlMsg(dp, bdid, "open"))
        #for r in rule_set[dp]['del']:
        #    script_write(filepath, bundleAddMsg(dp, bdid, r.get_match(), r.get_rtmp(), r.get_ttmp(), r.get_action(), table_id, r.get_prt(), "delete_strict"))
        #for r in rule_set[dp]['add']:
        #    script_write(filepath, bundleAddMsg(dp, bdid, r.get_match(), r.get_rtmp(), r.get_ttmp(), r.get_action(), table_id, r.get_prt(), "add"))
        #script_write(filepath, bundleCtrlMsg(dp, bdid, "commit"))
        #subprocess.Popen("%s" %filepath)



def path_deploy_link_init(old_path, new_path, flow, state_cur, prt, in_port, out_port, clock, bd, proto):
    bdid = bd
    #clk = clock + 1

    if proto == 0:
        clk = 0
        rule_set = rule_construct_normal([], old_path, flow, state_cur, prt, out_port)
        state_next = state_update(rule_set, state_cur)

    if proto == 1:
        clk = clock + 1

        rule_set = rule_construct([], old_path, flow, state_cur, prt, out_port, clk)
        state_next = state_update(rule_set, state_cur)

        rule_set = setTMP([], old_path, flow, state_cur, state_next, rule_set, clk)
        state_next = state_update(rule_set, state_cur)

    if proto == 2:
        clk = clock + 1
        #clk = 0
        rule_set = rule_construct_cu([], old_path, flow, state_cur, prt, out_port, clk)
        state_next = state_update(rule_set, state_cur)

    if proto == 3:
        clk = clock + 1
        #clk = 0
        rule_set = rule_construct_coco([], old_path, flow, state_cur, prt, out_port, clk)
        state_next = state_update(rule_set, state_cur)


    flow_reverse = reverse_flow(flow)
    #flow_reverse['ipv4_src'] = flow['ipv4_dst']
    #flow_reverse['ipv4_dst'] = flow['ipv4_src']

    new_path_reverse = copy.deepcopy(new_path)
    new_path_reverse.reverse()

    rule_set_reverse = rule_construct_normal([], new_path_reverse, flow_reverse, state_next, prt, in_port)
    state_next_next = state_update(rule_set_reverse, state_next)

    #rule_set_reverse = setTMP(old_path_reverse, new_path_reverse, flow_reverse, state_next, state_next_next, rule_set_reverse, clk)
    #state_next_next = state_update(rule_set_reverse, state_next, clk)
    #state_next.copy_state(state_cur)

    for i in rule_set_reverse.keys():
        if i in rule_set.keys():
            for j in rule_set_reverse[i]['add']:
                rule_set[i]['add'].append(j)
            for j in rule_set_reverse[i]['del']:
                rule_set[i]['del'].append(j)
        else:
            rule_set[i] = rule_set_reverse[i]

    #table_id = 0
    #script_init(filepath)

    for dp in rule_set.keys():
        bdid = bdid + 1
        switch_deploy(dp, rule_set[dp], bdid)
    return {'state': state_next_next, 'bdid': bdid, 'clk': clk}








def path_deploy_link(old_path, new_path, flow, state_cur, prt, out_port, clock, bd, if_delay, proto):
    bdid = bd

    if proto == 0:
        clk = 0
        rule_set = rule_construct_normal(old_path, new_path, flow, state_cur, prt, out_port)
        state_next = state_update(rule_set, state_cur)

    if proto == 1:
        clk = clock + 1

        rule_set = rule_construct(old_path, new_path, flow, state_cur, prt, out_port, clk)
        state_next = state_update(rule_set, state_cur)

        rule_set = setTMP(old_path, new_path, flow, state_cur, state_next, rule_set, clk)
        state_next = state_update(rule_set, state_cur)

    if proto == 3:
        clk = clock + 1
        #clk = 0
        rule_set = rule_construct_coco(old_path, new_path, flow, state_cur, prt, out_port, clk)
        state_next = state_update(rule_set, state_cur)


    if not rule_set.keys():
        return {'state': state_next, 'bdid': bdid, 'clk': clk}

    if not if_delay:
        for dp in rule_set.keys():
            bdid = bdid + 1
            switch_deploy(dp, rule_set[dp], bdid)
        return {'state': state_next, 'bdid': bdid, 'clk': clk}


    delay_list = delay_generate(rule_set)
    dp_sort = []
    sleep_time = [0]
    for dp in delay_list.keys():
        e = 0
        while e < len(dp_sort) and delay_list[dp_sort[e]] <= delay_list[dp]:
            e = e + 1
        dp_sort.insert(e, dp)
        sleep_time.insert(e+1, delay_list[dp])

    #print delay_list
    #print sleep_time
    #print rule_set
    #print old_path[2]
    for e in range(len(dp_sort)):
        time.sleep(sleep_time[e+1] - sleep_time[e])
        #if dp != old_path[2]:
        dp = dp_sort[e]
        if dp != old_path[2]:
            bdid = bdid + 1
            switch_deploy(dp, rule_set[dp], bdid)

    return {'state': state_next, 'bdid': bdid, 'clk': clk}


def path_deploy_twice(old_path, new_path, flow, state_cur, prt, out_port, clock, bd, if_delay, proto):
    bdid = bd

    if proto == 3:
        clk = clock + 1
        #clk = 0
        rule_set = rule_construct_coco_twice(old_path, new_path, flow, state_cur, prt, out_port, clk)
        rule_set_first = rule_set['rule_set_first']
        rule_set_second = rule_set['rule_set_second']
        state_next = state_update(rule_set_first, state_cur)
        state_next = state_update(rule_set_second, state_next)

    if proto == 2:
        clk = clock + 1
        #clk = 0
        rule_set = rule_construct_cu_twice(old_path, new_path, flow, state_cur, prt, out_port, clk)
        rule_set_first = rule_set['rule_set']
        rule_set_second = rule_set['first_rule']
        state_next = state_update(rule_set_first, state_cur)
        state_next = state_update(rule_set_second, state_next)


    delay_list = delay_generate(rule_set_first)
    dp_sort = []
    sleep_time = [0]
    for dp in delay_list.keys():
        e = 0
        while e < len(dp_sort) and delay_list[dp_sort[e]] <= delay_list[dp]:
            e = e + 1
        dp_sort.insert(e, dp)
        sleep_time.insert(e+1, delay_list[dp])

    for e in range(len(dp_sort)):
        time.sleep(sleep_time[e+1] - sleep_time[e])
        #if dp != old_path[2]:
        dp = dp_sort[e]
        if dp != old_path[2]:
            bdid = bdid + 1
            switch_deploy(dp, rule_set_first[dp], bdid)


    #print 'first deploy'
    #print rule_set_first
    #CLI(fat_tree_net)
    #print rule_set_second

    delay_list = delay_generate(rule_set_second)
    dp_sort = []
    sleep_time = [0]
    for dp in delay_list.keys():
        e = 0
        while e < len(dp_sort) and delay_list[dp_sort[e]] <= delay_list[dp]:
            e = e + 1
        dp_sort.insert(e, dp)
        sleep_time.insert(e+1, delay_list[dp])

    for e in range(len(dp_sort)):
        time.sleep(sleep_time[e+1] - sleep_time[e])
        #if dp != old_path[2]:
        dp = dp_sort[e]
        if dp != old_path[2]:
            bdid = bdid + 1
            switch_deploy(dp, rule_set_second[dp], bdid)


    return {'state': state_next, 'bdid': bdid, 'clk': clk}




def switch_deploy(dp, sw_rule, bdid):
    filepath = "/home/shengliu/Workspace/mininet/haha/API/cmd/%s.sh" %(str(dp))
    table_id = 0
    script_init(filepath)
    script_write(filepath, bundleCtrlMsg(dp, bdid, "open"))
    for r in sw_rule['del']:
        script_write(filepath, bundleAddMsg(dp, bdid, r.get_match(), r.get_rtmp(), r.get_ttmp(), r.get_action(), table_id, r.get_prt(), "delete_strict"))
    for r in sw_rule['add']:
        script_write(filepath, bundleAddMsg(dp, bdid, r.get_match(), r.get_rtmp(), r.get_ttmp(), r.get_action(), table_id, r.get_prt(), "add"))
    script_write(filepath, bundleCtrlMsg(dp, bdid, "commit"))
    subprocess.Popen("%s" %filepath)


def clear_sb_rules(filepath, old_path, new_path, flow, old_state, clk):
    new_state = copy.deepcopy(old_state)
    sb_set = sb_rule_construct(old_path, new_path, flow, clk)
    table_id = 0
    script_init(filepath)
    for r in sb_set:
        script_write(filepath, addTMPRule(r.get_dpid(), r.get_match(), r.get_rtmp(), r.get_ttmp(), -1, table_id, PRTMAX, "delete_strict"))
        tb = new_state.get_table(r.get_dpid(), table_id)
        tb.del_rule(r.get_match(), r.get_prt())

    flow_reverse = reverse_flow(flow)
    #flow_reverse['ipv4_src'] = flow['ipv4_dst']
    #flow_reverse['ipv4_dst'] = flow['ipv4_src']

    old_path_reverse = copy.deepcopy(old_path)
    old_path_reverse.reverse()
    new_path_reverse = copy.deepcopy(new_path)
    new_path_reverse.reverse()

    sb_set = sb_rule_construct(old_path_reverse, new_path_reverse, flow_reverse, clk)
    for r in sb_set:
        script_write(filepath, addTMPRule(r.get_dpid(), r.get_match(), r.get_rtmp(), r.get_ttmp(), -1, table_id, PRTMAX, "delete_strict"))
        tb = new_state.get_table(r.get_dpid(), table_id)
        tb.del_rule(r.get_match(), r.get_prt())
    subprocess.call("%s" %filepath)
    time.sleep(1)
    return new_state


def out_port_construct(dpid_list, out_port_list):
    out_port_dic = {}
    for i in range(len(out_port_list)):
        out_port_dic[dpid_list[i]] = out_port_list[i]
    return out_port_dic


def ip2host(ip):
    ret = ip.strip('\'\"')
    if '/' in ret:
        ret = ret.split('/')[0]
    ret = ret.split('.')
    return "h_" + str(ret[1]) + "_" + str(ret[2]) + "_" + str(int(ret[3])-1)


def delay_generate(rule_set):
    delay = {}
    for i in rule_set.keys():
        delay[i] = random.normalvariate(150, 50) / 1000
        while delay[i] <= 0:
            delay[i] = random.normalvariate(150, 50) / 1000

    #return {'2001000': 0.055763203176993896, '2001001': 0.11741014177363102, '3001001': 0.2007134427993989, '3001000': 0.22471555577759653}
    return delay


def test_run_all(K, fat_tree_net, pkt_rate, proto):
    filepath = "/home/shengliu/Workspace/mininet/haha/cmd_test.sh"
    state_cur = net()
    #state_next = net()
    state_cur = network_init(K, filepath, state_cur)
    #filepath2 = '/home/shengliu/Workspace/mininet/haha/API/flow_update.tsv'
    filepath2 = '/home/shengliu/Workspace/mininet/haha/API/flow_update1.csv'
    path_list = path_read(filepath2, K)
    priority = 8
    rt = old_path_deploy(filepath2, K, state_cur, priority)
    state_cur = rt['state']
    flow_list = rt['flow_list']
    #state_cur.print_state()
    #CLI(fat_tree_net)


    clk = 7
    bdid = 1

    for i in range(len(path_list['flow'])):
    #for i in range(1):
        flow = path_list['flow'][i]
        k = match_parse(flow)
        k_reverse = match_parse(reverse_flow(flow))
        if k in flow_list.keys():
            y = k
        if k_reverse in flow_list.keys():
            y = k_reverse
        if cmp(flow_list[y], path_list['old_path'][i]) == 0:
            old_path = path_list['old_path'][i]['path']
            new_path = path_list['new_path'][i]['path']
            in_port = out_port_construct(new_path, path_list['new_path'][i]['in_port'])
            out_port = out_port_construct(new_path, path_list['new_path'][i]['out_port'])

            h_src = fat_tree_net.get(ip2host(flow['ipv4_src']))
            h_dst = fat_tree_net.get(ip2host(flow['ipv4_dst']))


            h_src.cmd('hping3 -1 -c 100 -i u%d %s &' %(pkt_rate, h_dst.IP()))

            if proto:
                deploy_ret = path_deploy(old_path, new_path, flow, state_cur, priority, in_port, out_port, clk, bdid, 1)
            else:
                deploy_ret = path_deploy_normal(old_path, new_path, flow, state_cur, priority, in_port, out_port, bdid, 1)

            state_cur = deploy_ret['state']
            clk = deploy_ret['clk']
            bdid = deploy_ret['bdid']

            time.sleep(10)

            state_cur = clear_sb_rules(filepath, old_path, new_path, flow, state_cur, clk)
            #state_cur.print_state()
            ping_ret = h_src.cmd('echo')

            if 'packets received' in ping_ret:

                ping_ret = ping_ret.strip().split('\n')

                for i in range(len(ping_ret)):
                    if ('packets transmitted' in ping_ret[i]) and ('packets received' in ping_ret[i]):
                        x = ping_ret[i].strip().split()
                        sent_num = x[0]
                        recv_num = x[3]
                        print sent_num
                        print recv_num
                    if 'min/avg/max' in ping_ret[i]:
                        x = ping_ret[i].strip().split()[3]
                        rtt_min = x.split('/')[0]
                        rtt_avg = x.split('/')[1]
                        rtt_max = x.split('/')[2]

                retpath = '/home/shengliu/Workspace/mininet/haha/API/ping_result%d.txt' %proto
                fp = open(retpath, 'a+')
                fp.write('pkt_rate: %d sent_num: %s recv_num: %s rtt_min: %s rtt_avg: %s rtt_max: %s\n' %(pkt_rate, sent_num, recv_num, rtt_min, rtt_avg, rtt_max))
                fp.close()

            #CLI(fat_tree_net)



def test_run(K, fat_tree_net, pkt_rate, proto, nt):
    filepath = "/home/shengliu/Workspace/mininet/haha/cmd_test.sh"
    state_cur = net()
    #state_next = net()
    state_cur = network_init(K, filepath, state_cur)
    filepath2 = '/home/shengliu/Workspace/mininet/haha/API/flow_update.tsv'
    path_list = path_read(filepath2, K)
    old_path = path_list['old_path'][nt]['path']
    new_path = path_list['new_path'][nt]['path']

    in_port = out_port_construct(old_path, path_list['old_path'][nt]['in_port'])
    out_port = out_port_construct(old_path, path_list['old_path'][nt]['out_port'])
    flow = path_list['flow'][nt]
    priority = 8 # > 2
    clk = 7 # > 1
    bdid = 1

    if len(old_path) == 3:
        return 'Error'

    if proto == 0:
        deploy_ret = path_deploy_normal([], old_path, flow, state_cur, priority, in_port, out_port, bdid, 0)
    if proto == 1:
        deploy_ret = path_deploy([], old_path, flow, state_cur, priority, in_port, out_port, clk, bdid, 0)
    if proto == 2:
        deploy_ret = path_deploy_cu([], old_path, flow, state_cur, priority, in_port, out_port, clk, bdid, 0)
    if proto == 3:
        deploy_ret = path_deploy_coco([], old_path, flow, state_cur, priority, in_port, out_port, clk, bdid, 0)


    #deploy_ret = path_deploy([], old_path, flow, state_cur, priority, in_port, out_port, clk, bdid, 0)
    state_cur = deploy_ret['state']
    clk = deploy_ret['clk']
    bdid = deploy_ret['bdid']
    #path_deploy([], old_path, flow, state_cur, state_next, priority, in_port, out_port, clk, bdid, filepath)
    #subprocess.Popen("%s" %filepath)



    time.sleep(4)

    #state_cur.print_state()

    #CLI(fat_tree_net)

    h_src = fat_tree_net.get(ip2host(flow['ipv4_src']))
    h_dst = fat_tree_net.get(ip2host(flow['ipv4_dst']))
    #print ip2host(flow['ipv4_src'])
    #h_src = fat_tree_net.get('h_2_0_0')
    #print "host cmd result:"
    #h_src.cmd('ifconfig &')
    #print h_src.cmd('echo')
    #print h_src.cmd('ifconfig')
    #writepath = '/home/shengliu/Workspace/mininet/haha/API/ping_result.txt'
    #priority = 8
    h_src.cmd('hping3 -1 -c 100 -i u%d %s &' %(pkt_rate, h_dst.IP()))

    #clk = 10
    out_port = out_port_construct(new_path, path_list['new_path'][nt]['out_port'])
    in_port = out_port_construct(new_path, path_list['new_path'][nt]['in_port'])


    if proto == 0:
        deploy_ret = path_deploy_normal(old_path, new_path, flow, state_cur, priority, in_port, out_port, bdid, 1)
    if proto == 1:
        deploy_ret = path_deploy(old_path, new_path, flow, state_cur, priority, in_port, out_port, clk, bdid, 1)
    if proto == 2:
        deploy_ret = path_deploy_cu(old_path, new_path, flow, state_cur, priority, in_port, out_port, clk, bdid, 1)
    if proto == 3:
        deploy_ret = path_deploy_coco(old_path, new_path, flow, state_cur, priority, in_port, out_port, clk, bdid, 1)

    state_cur = deploy_ret['state']
    clk = deploy_ret['clk']
    bdid = deploy_ret['bdid']


    #time.sleep(1)

    #state_cur.print_state()

    #CLI(fat_tree_net)

    #path_deploy(old_path, new_path, flow, state_cur, state_next, priority, in_port, out_port, clk, bdid, filepath)
    #path_deploy_normal(old_path, new_path, flow, state_cur, state_next, priority, in_port, out_port, clk, bdid, filepath)

    #state_next.print_state()
    #subprocess.call("%s" %filepath)

    #print ping_ret
    #with open(writepath, 'a+') as f:
    #    f.write(ping_ret)
    #    f.close()

    #state_cur = clear_sb_rules(filepath, old_path, new_path, flow, state_cur, clk)

    #time.sleep(1)

    #state_cur.print_state()

    #CLI(fat_tree_net)

    #return

    time.sleep(10)
    #print out

    ping_ret_o = h_src.cmd('echo')

    #state_cur = clear_sb_rules(filepath, old_path, new_path, flow, state_cur, clk)
    #state_cur.print_state()
    #CLI(fat_tree_net)
    #print "ping result:" + ping_ret
    if 'packets received' not in ping_ret_o:
        #print ping_ret
        return 'False'

    ping_ret = ping_ret_o.strip().split('\n')

    for i in range(len(ping_ret)):
        if ('packets transmitted' in ping_ret[i]) and ('packets received' in ping_ret[i]):
            x = ping_ret[i].strip().split()
            sent_num = x[0]
            recv_num = x[3]
            print sent_num
            print recv_num
            #if int(recv_num) < int(sent_num):
                #print ping_ret_o
                #CLI(fat_tree_net)
        if 'min/avg/max' in ping_ret[i]:
            x = ping_ret[i].strip().split()[3]
            rtt_min = x.split('/')[0]
            rtt_avg = x.split('/')[1]
            rtt_max = x.split('/')[2]
            #print rtt_min
            #print rtt_avg
            #print rtt_max

    retpath = '/home/shengliu/Workspace/mininet/haha/API/ping_result_%d.txt' %proto
    fp = open(retpath, 'a+')
    fp.write('idx: %d pkt_rate: %d sent_num: %s recv_num: %s min: %s avg: %s max %s\n' %(nt, pkt_rate, sent_num, recv_num, rtt_min, rtt_avg, rtt_max))
    fp.close()

    #CLI(fat_tree_net)

    return 'True'

    #h_src.cmd('python write.py %d %s' %(5, h_dst.IP()))

    #h_dst.cmd('python write.py %d %s' %(5, h_src.IP()))
    #h_src.cmd('python write.py')


def test_run_link(K, fat_tree_net, pkt_rate, proto, nt):
    filepath = "/home/shengliu/Workspace/mininet/haha/cmd_test.sh"
    state_cur = net()
    #state_next = net()
    state_cur = network_init(K, filepath, state_cur)
    filepath2 = '/home/shengliu/Workspace/mininet/haha/API/flow_update.tsv'
    path_list = path_read(filepath2, K)
    old_path = path_list['old_path'][nt]['path']
    new_path = path_list['new_path'][nt]['path']

    in_port = out_port_construct(new_path, path_list['new_path'][nt]['in_port'])
    out_port = out_port_construct(old_path, path_list['old_path'][nt]['out_port'])
    flow = path_list['flow'][nt]
    priority = 8 # > 2
    clk = 7 # > 1
    bdid = 1

    if len(old_path) == 3:
        return 'Error'

    deploy_ret = path_deploy_link_init(old_path, new_path, flow, state_cur, priority, in_port, out_port, clk, bdid, proto)

    #deploy_ret = path_deploy([], old_path, flow, state_cur, priority, in_port, out_port, clk, bdid, 0)
    state_cur = deploy_ret['state']
    clk = deploy_ret['clk']
    bdid = deploy_ret['bdid']
    #path_deploy([], old_path, flow, state_cur, state_next, priority, in_port, out_port, clk, bdid, filepath)
    #subprocess.Popen("%s" %filepath)



    time.sleep(4)

    #state_cur.print_state()
    #print 'route init'
    #CLI(fat_tree_net)

    h_src = fat_tree_net.get(ip2host(flow['ipv4_src']))
    h_dst = fat_tree_net.get(ip2host(flow['ipv4_dst']))

    #priority = 8
    h_src.cmd('hping3 -1 -c 100 -i u%d %s &' %(pkt_rate, h_dst.IP()))

    #clk = 10
    out_port = out_port_construct(new_path, path_list['new_path'][nt]['out_port'])
    #in_port = out_port_construct(new_path, path_list['new_path'][nt]['in_port'])

    tmp_max = 100
    prt_max = 200
    failpath = "/home/shengliu/Workspace/mininet/haha/API/cmd/%s.sh" %(str(old_path[2]))
    script_init(failpath)
    script_write(failpath, addTMPRule(old_path[2], {}, tmp_max, tmp_max, 0, 0, prt_max, "add"))
    subprocess.call("%s" %failpath)

    #state_cur.print_state()
    #print 'link break'
    #CLI(fat_tree_net)

    if proto == 0 or proto == 1:
        deploy_ret = path_deploy_link(old_path, new_path, flow, state_cur, priority, out_port, clk, bdid, 1, proto)

    if proto == 2 or proto == 3:
        deploy_ret = path_deploy_twice(old_path, new_path, flow, state_cur, priority, out_port, clk, bdid, 1, proto)


    state_cur = deploy_ret['state']
    clk = deploy_ret['clk']
    bdid = deploy_ret['bdid']


    #time.sleep(1)

    #state_cur.print_state()

    #CLI(fat_tree_net)


    time.sleep(10)
    #print out

    ping_ret_o = h_src.cmd('echo')

    #state_cur = clear_sb_rules(filepath, old_path, new_path, flow, state_cur, clk)
    #state_cur.print_state()
    #print 'change route'
    #CLI(fat_tree_net)
    #print "ping result:" + ping_ret
    if 'packets received' not in ping_ret_o:
        #print ping_ret
        return 'False'

    ping_ret = ping_ret_o.strip().split('\n')

    for i in range(len(ping_ret)):
        if ('packets transmitted' in ping_ret[i]) and ('packets received' in ping_ret[i]):
            x = ping_ret[i].strip().split()
            sent_num = x[0]
            recv_num = x[3]
            print sent_num
            print recv_num
            #if int(recv_num) < int(sent_num):
                #print ping_ret_o
                #CLI(fat_tree_net)
        if 'min/avg/max' in ping_ret[i]:
            x = ping_ret[i].strip().split()[3]
            rtt_min = x.split('/')[0]
            rtt_avg = x.split('/')[1]
            rtt_max = x.split('/')[2]
            #print rtt_min
            #print rtt_avg
            #print rtt_max

    retpath = '/home/shengliu/Workspace/mininet/haha/API/ping_result_%d.txt' %proto
    fp = open(retpath, 'a+')
    fp.write('idx: %d pkt_rate: %d sent_num: %s recv_num: %s min: %s avg: %s max %s\n' %(nt, pkt_rate, sent_num, recv_num, rtt_min, rtt_avg, rtt_max))
    fp.close()

    #CLI(fat_tree_net)

    return 'True'



if __name__ == '__main__':
    filepath = "/home/shengliu/Workspace/mininet/haha/cmd_test.sh"
    K = 4
    state_cur = net()
    state_next = net()
    network_init(K, filepath, state_cur, state_next)

    filepath2 = '/home/shengliu/Workspace/mininet/haha/API/flow_update.tsv'

    path_list = path_read(filepath2, K)

    old_path = path_list['old_path'][0]['path']
    new_path = path_list['new_path'][0]['path']
    print "wocao"
    print old_path
    print new_path
    print path_list['old_path'][0]['out_port']
    print path_list['new_path'][0]['out_port']
    out_port = out_port_construct(old_path, path_list['old_path'][0]['out_port'])
    in_port = out_port_construct(old_path, path_list['old_path'][0]['in_port'])
    flow = path_list['flow'][0]
    priority = 8
    clk = 8
    bdid = 1

    #rule_set = rule_construct([], old_path, flow, state_cur, priority, out_port, clk)
    #state_update(rule_set, state_next, clk)
    #setTMP([], old_path, flow, state_cur, state_next, rule_set, clk)
    #state_update(rule_set, state_cur, clk)
    #state_next.copy_state(state_cur)
    print in_port
    print out_port
    path_deploy([], old_path, flow, state_cur, state_next, priority, in_port, out_port, clk, bdid, 1)
    state_cur.print_state()
    subprocess.call("%s" %filepath)
    clk = 10
    out_port = out_port_construct(new_path, path_list['new_path'][0]['out_port'])
    in_port = out_port_construct(new_path, path_list['new_path'][0]['in_port'])
    print "\n\n\nnew route:"
    print in_port
    print out_port
    path_deploy(old_path, new_path, flow, state_cur, state_next, priority, in_port, out_port, clk, bdid, 1)
    state_cur.print_state()

    #state_next.print_state()
    subprocess.call("%s" %filepath)

    #print "\n\n\nclear sb rules:"
    #clear_sb_rules(filepath, old_path, new_path, flow, state_cur, state_next, clk)
    #state_cur.print_state()
    #subprocess.call("%s" %filepath)

    """
    out_port = out_port_construct(new_path, path_list['old_path'][0]['out_port'])
    clk = clk + 1

    path_deploy(old_path, new_path, flow, state_cur, state_next, priority, out_port, clk, bdid, filepath)

    #subprocess.call("%s" %filepath)

    clear_sb_rules(filepath, old_path, new_path, flow, clk, bdid)
    #subprocess.call("%s" %filepath)
    """
