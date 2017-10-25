from test_main import *
from readFile import *
from util import *
from cmd_issue_new import *
from timestamp import *
import copy
import subprocess
import time
import random
from mininet.cli import CLI
from time_generate import *
from read_all import *

PRTMAX = 100

def network_init_all(K, filepath, state):
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
    time.sleep(5)
    return state_cur


def path_deploy_time_all(old_path, new_path, flow, state_cur, prt, out_port, clock, bd, if_delay, proto):
    bdid = bd


    if proto == 0:
        clk = 0
        rule_set = rule_construct_normal(old_path, new_path, flow, state_cur, prt, out_port)
        state_next = state_update(rule_set, state_cur)

    if proto == 1:
        clk = clock + 1
        #print flow
        rule_set = rule_construct(old_path, new_path, flow, state_cur, prt, out_port, clk)
        state_next = state_update(rule_set, state_cur)

        rule_set = setTMP(old_path, new_path, flow, state_cur, state_next, rule_set, clk)
        #rule_set = setPRT(rule_set, old_path, new_path, prt)
        state_next = state_update(rule_set, state_cur)

    if proto == 3:
        clk = clock
        rule_set = rule_construct_coco_third(old_path, new_path, flow, state_cur, prt, out_port_old, out_port_new, clk)
        if old_path:
            state_next = state_update(rule_set['rule_set_first'], state_cur)
            state_next = state_update(rule_set['rule_set_second'], state_next)
            state_next = state_update(rule_set['rule_set_third'], state_next)
        else:
            state_next = state_update(rule_set, state_cur)

    rule_set = set_clean(rule_set)

    if not rule_set.keys():
        return {'state': state_next, 'bdid': bdid, 'clk': clk, 'dpid': []}

    dpid = []

    for dp in rule_set.keys():
        bdid = bdid + 1
        switch_write_all(dp, rule_set[dp], bdid, 1)
        dpid.append(dp)

    return {'state': state_next, 'bdid': bdid, 'clk': clk, 'dpid': dpid}


def path_deploy_time_all_coco(old_path, new_path, flow, state_cur, prt, out_port_old, out_port_new, clock, bd, if_delay, proto):
    bdid = bd

    if proto == 3:
        clk = clock
        rule_set = rule_construct_coco_third(old_path, new_path, flow, state_cur, prt, out_port_old, out_port_new, clk)
        if old_path:
            state_next = state_update(rule_set['rule_set_first'], state_cur)
            state_next = state_update(rule_set['rule_set_second'], state_next)
            state_next = state_update(rule_set['rule_set_third'], state_next)
            rule_set_idx = ['rule_set_first', 'rule_set_second', 'rule_set_third']

            for i in range(len(rule_set_idx)):
                rule_set[rule_set_idx[i]] = set_clean(rule_set[rule_set_idx[i]])

            dpid1 = []

            for dp in rule_set['rule_set_first'].keys():
                bdid = bdid + 1
                switch_write_all(dp, rule_set['rule_set_first'][dp], bdid, 1)
                dpid1.append(dp)

            dpid2 = []

            for dp in rule_set['rule_set_second'].keys():
                bdid = bdid + 1
                switch_write_all(dp, rule_set['rule_set_second'][dp], bdid, 2)
                dpid2.append(dp)

            dpid3 = []

            for dp in rule_set['rule_set_third'].keys():
                bdid = bdid + 1
                switch_write_all(dp, rule_set['rule_set_third'][dp], bdid, 3)
                dpid3.append(dp)

            return {'state': state_next, 'bdid': bdid, 'clk': clk, 'dpid1': dpid1, 'dpid2': dpid2, 'dpid3': dpid3}

        else:
            state_next = state_update(rule_set, state_cur)

            rule_set = set_clean(rule_set)

            if not rule_set.keys():
                return {'state': state_next, 'bdid': bdid, 'clk': clk, 'dpid': []}

            dpid = []

            for dp in rule_set.keys():
                bdid = bdid + 1
                switch_write_all(dp, rule_set[dp], bdid, 1)
                dpid.append(dp)

            return {'state': state_next, 'bdid': bdid, 'clk': clk, 'dpid': dpid}


def path_deploy_time_all_cu(old_path, new_path, flow, state_cur, prt, out_port_old, out_port_new, clock, bd, if_delay, proto):
    bdid = bd

    if proto == 2:
        if old_path:
            clk = clock + 1
            del_rule = rule_construct_cu([], old_path, flow, state_cur, prt, out_port_old, clk-1)
            ret_rule = rule_construct_cu(old_path, new_path, flow, state_cur, prt, out_port_new, clk)
            add_rule = ret_rule['rule_set']
            first_rule = ret_rule['first_rule']

            del del_rule[old_path[0]]

            for i in del_rule.keys():
                for j in del_rule[i]['add']:
                    del_rule[i]['del'].append(j)
                del_rule[i]['add'] = []

            state_next = state_update(add_rule, state_cur)
            state_next = state_update(first_rule, state_next)
            state_next = state_update(del_rule, state_next)


            add_rule = set_clean(add_rule)
            first_rule = set_clean(first_rule)
            del_rule = set_clean(del_rule)


            dpid1 = []

            for dp in add_rule.keys():
                bdid = bdid + 1
                switch_write_all(dp, add_rule[dp], bdid, 1)
                dpid1.append(dp)

            dpid2 = []

            for dp in first_rule.keys():
                bdid = bdid + 1
                switch_write_all(dp, first_rule[dp], bdid, 2)
                dpid2.append(dp)

            dpid3 = []

            for dp in del_rule.keys():
                bdid = bdid + 1
                switch_write_all(dp, del_rule[dp], bdid, 3)
                dpid3.append(dp)

            return {'state': state_next, 'bdid': bdid, 'clk': clk, 'dpid1': dpid1, 'dpid2': dpid2, 'dpid3': dpid3}

        else:
            clk = clock + 1
            rule_set = rule_construct_cu(old_path, new_path, flow, state_cur, prt, out_port_new, clk)
            state_next = state_update(rule_set, state_cur)

            rule_set = set_clean(rule_set)

            if not rule_set.keys():
                return {'state': state_next, 'bdid': bdid, 'clk': clk, 'dpid': []}

            dpid = []

            for dp in rule_set.keys():
                bdid = bdid + 1
                switch_write_all(dp, rule_set[dp], bdid, 1)
                dpid.append(dp)

            return {'state': state_next, 'bdid': bdid, 'clk': clk, 'dpid': dpid}




def script_init_all(K):
    for step in range(3):
        for core in range(pow((K/2),2)):
            dp = int2dpid(1, core)
            filepath = "/home/shengliu/Workspace/mininet/haha/API/cmd/cmd%d/%s.sh" %((step+1), str(dp))
            script_init(filepath)

        for pod in range(K):
            for sw in range(K/2):
                dp = int2dpid(2, sw, pod)
                filepath = "/home/shengliu/Workspace/mininet/haha/API/cmd/cmd%d/%s.sh" %((step+1), str(dp))
                script_init(filepath)

                dp = int2dpid(3, sw, pod)
                filepath = "/home/shengliu/Workspace/mininet/haha/API/cmd/cmd%d/%s.sh" %((step+1), str(dp))
                script_init(filepath)



def switch_write_all(dp, sw_rule, bdid, step):
    filepath = "/home/shengliu/Workspace/mininet/haha/API/cmd/cmd%d/%s.sh" %(step, str(dp))
    table_id = 0
    #script_init(filepath)
    script_write(filepath, bundleCtrlMsg(dp, bdid, "open"))
    for r in sw_rule['del']:
        script_write(filepath, bundleAddMsg(dp, bdid, r.get_match(), r.get_rtmp(), r.get_ttmp(), r.get_action(), table_id, r.get_prt(), "delete_strict"))
    for r in sw_rule['add']:
        script_write(filepath, bundleAddMsg(dp, bdid, r.get_match(), r.get_rtmp(), r.get_ttmp(), r.get_action(), table_id, r.get_prt(), "add"))
    script_write(filepath, bundleCtrlMsg(dp, bdid, "commit"))



def switch_deploy_all(dp_set, step, if_delay, sb_set=[]):
    if not if_delay:
        for dp in dp_set:
            filepath = "/home/shengliu/Workspace/mininet/haha/API/cmd/cmd%d/%s.sh" %(step, str(dp))
            subprocess.Popen("%s" %filepath)
            time.sleep(0.3)

    else:
        delay_list = delay_generate_all(dp_set)
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

        subprocess.call('/home/shengliu/Workspace/mininet/haha/API/time_measure')

        for e in range(len(dp_sort)):
            time.sleep(sleep_time[e+1] - sleep_time[e])
            dp = dp_sort[e]
            filepath = "/home/shengliu/Workspace/mininet/haha/API/cmd/cmd%d/%s.sh" %(step, str(dp))
            subprocess.Popen("%s" %filepath)
            for k in sb_set.keys():
                if dp in sb_set[k]['requisite']:
                    sb_set[k]['requisite'].remove(dp)
                    if not sb_set[k]['requisite']:
                        r = sb_set[k]['rule']
                        del sb_set[k]
                        rad = random.randint(0, 199)
                        filepath = "/home/shengliu/Workspace/mininet/haha/API/time/sb_cmd_%d.sh" %rad
                        script_init(filepath)
                        script_write(filepath, addTMPRule(r.get_dpid(), r.get_match(), r.get_rtmp(), r.get_ttmp(), -1, 0, PRTMAX, "delete_strict"))
                        subprocess.Popen(['python', '/home/shengliu/Workspace/mininet/haha/API/delay_deploy.py', '%d' %rad])


def switch_deploy_all_coco(dp_set, step, if_delay):
    if not if_delay:
        for dp in dp_set:
            filepath = "/home/shengliu/Workspace/mininet/haha/API/cmd/cmd%d/%s.sh" %(step, str(dp))
            subprocess.Popen("%s" %filepath)
            time.sleep(0.3)
    else:
        delay_list = delay_generate_all(dp_set)
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
            filepath = "/home/shengliu/Workspace/mininet/haha/API/cmd/cmd%d/%s.sh" %(step, str(dp))
            subprocess.Popen("%s" %filepath)



def get_flow_list(filepath, K, t):
    path_list = path_read_time(filepath, K)
    j = 0
    t = 0
    #ct = 0
    flow_list = {}
    #for j in range(len(path_list['flow'])):
    #while j < len(path_list['flow']) and path_list['time'][j] >= 600*t and path_list['time'][j] < 600*(t+1):
    while j < len(path_list['flow']) and len(flow_list.keys()) < 50:
        i = path_list['flow'][j]
        f = match_parse(i)
        old_path = path_list['old_path'][j]['path']
        new_path = path_list['new_path'][j]['path']
        if len(old_path) == 5:
            if f not in flow_list.keys():
                flow_list[f] = {}
                flow_list[f]['flow'] = i
                flow_list[f]['old_path'] = old_path
                flow_list[f]['out_port_old'] = out_port_construct(old_path, path_list['old_path'][j]['out_port'])
                flow_list[f]['new_path'] = new_path
                flow_list[f]['out_port_new'] = out_port_construct(new_path, path_list['new_path'][j]['out_port'])
                f_reverse = match_parse(reverse_flow(i))
                old_path_reverse = copy.deepcopy(old_path)
                old_path_reverse.reverse()
                new_path_reverse = copy.deepcopy(new_path)
                new_path_reverse.reverse()
                flow_list[f_reverse] = {}
                flow_list[f_reverse]['flow'] = reverse_flow(i)
                flow_list[f_reverse]['old_path'] = old_path_reverse
                flow_list[f_reverse]['out_port_old'] = out_port_construct(old_path, path_list['old_path'][j]['in_port'])
                flow_list[f_reverse]['new_path'] = new_path_reverse
                flow_list[f_reverse]['out_port_new'] = out_port_construct(new_path, path_list['new_path'][j]['in_port'])
                #ct = ct + 1
            else:
                flow_list[f]['new_path'] = new_path
                flow_list[f]['out_port_new'] = out_port_construct(new_path, path_list['new_path'][j]['out_port'])
                f_reverse = match_parse(reverse_flow(i))
                new_path_reverse = copy.deepcopy(new_path)
                new_path_reverse.reverse()
                flow_list[f_reverse]['new_path'] = new_path_reverse
                flow_list[f_reverse]['out_port_new'] = out_port_construct(new_path, path_list['new_path'][j]['in_port'])

        j = j + 1
    print len(flow_list)
    return flow_list


def get_flow_list_all(filepath, K, flow_list_cmp):
    path_list = path_read_time(filepath, K)
    j = 0
    #ct = 0
    flow_list = {}
    #for j in range(len(path_list['flow'])):
    while j < len(path_list['flow']):
        i = path_list['flow'][j]
        f = match_parse(i)
        old_path = path_list['old_path'][j]['path']
        new_path = path_list['new_path'][j]['path']
        if len(old_path) == 5 and f not in flow_list_cmp.keys():
            if f not in flow_list.keys():
                flow_list[f] = {}
                flow_list[f]['flow'] = i
                flow_list[f]['old_path'] = old_path
                flow_list[f]['out_port_old'] = out_port_construct(old_path, path_list['old_path'][j]['out_port'])
                flow_list[f]['new_path'] = new_path
                flow_list[f]['out_port_new'] = out_port_construct(new_path, path_list['new_path'][j]['out_port'])
                f_reverse = match_parse(reverse_flow(i))
                old_path_reverse = copy.deepcopy(old_path)
                old_path_reverse.reverse()
                new_path_reverse = copy.deepcopy(new_path)
                new_path_reverse.reverse()
                flow_list[f_reverse] = {}
                flow_list[f_reverse]['flow'] = reverse_flow(i)
                flow_list[f_reverse]['old_path'] = old_path_reverse
                flow_list[f_reverse]['out_port_old'] = out_port_construct(old_path, path_list['old_path'][j]['in_port'])
                flow_list[f_reverse]['new_path'] = new_path_reverse
                flow_list[f_reverse]['out_port_new'] = out_port_construct(new_path, path_list['new_path'][j]['in_port'])
                #ct = ct + 1
        j = j + 1

    return flow_list

def snapshot_deploy(filepath, K, t):

    time_file_generate()

    flow_list = get_flow_list(filepath, K, t)
    #print flow_list
    script_init_all(K)

    state_cur = net()
    filepath2 = "/home/shengliu/Workspace/mininet/haha/cmd_test.sh"
    #state_next = net()
    state_cur = network_init_all(K, filepath2, state_cur)

    proto = 1
    clk = 5 # > 1
    bdid = 1
    priority = 8
    dpid1 = []
    sb_set = {}

    #print len(flow_list)
    for i in flow_list.keys():
        flow = flow_list[i]['flow']
        old_path = flow_list[i]['old_path']
        new_path = flow_list[i]['new_path']
        out_port_old = flow_list[i]['out_port_old']
        out_port_new = flow_list[i]['out_port_new']

        if proto == 0 or proto == 1:
            deploy_ret = path_deploy_time_all([], old_path, flow, state_cur, priority, out_port_old, clk, bdid, 1, proto)

            state_cur = deploy_ret['state']
            clk = deploy_ret['clk']
            bdid = deploy_ret['bdid']
            dpid = deploy_ret['dpid']
            for b in dpid:
                if b not in dpid1:
                    dpid1.append(b)


    """
    flow_list_other = get_flow_list_all(filepath, K, flow_list)
    for i in flow_list_other.keys():
        flow = flow_list_other[i]['flow']
        old_path = flow_list_other[i]['old_path']
        new_path = flow_list_other[i]['new_path']
        out_port_old = flow_list_other[i]['out_port_old']
        out_port_new = flow_list_other[i]['out_port_new']


        if proto == 0 or proto == 1:
            deploy_ret = path_deploy_time_all([], old_path, flow, state_cur, priority, out_port_old, clk, bdid, 1, proto)

            state_cur = deploy_ret['state']
            clk = deploy_ret['clk']
            bdid = deploy_ret['bdid']
            dpid = deploy_ret['dpid']
            for b in dpid:
                if b not in dpid1:
                    dpid1.append(b)
        #if proto == 2:
            #deploy_ret = path_deploy_time_cu(fat_tree_net, old_path, new_path, flow, state_cur, priority, out_port_old, out_port_new, clk, bdid, 1, proto)

        #if proto == 3:
        #    deploy_ret = path_deploy_third(fat_tree_net, old_path, new_path, flow, state_cur, priority, out_port_old, out_port_new, clk, bdid, 0, proto)


        #print dpid
    """


    #print dpid1
    switch_deploy_all(dpid1, 1, 0, [])
    script_init_all(K)
    time.sleep(10)
    dpid1 = []

    for i in flow_list.keys():
        flow = flow_list[i]['flow']
        old_path = flow_list[i]['old_path']
        new_path = flow_list[i]['new_path']
        out_port_old = flow_list[i]['out_port_old']
        out_port_new = flow_list[i]['out_port_new']

        if old_path != new_path:
            if proto == 0 or proto == 1:
                deploy_ret = path_deploy_time_all(old_path, new_path, flow, state_cur, priority, out_port_new, clk, bdid, 1, proto)
                state_cur = deploy_ret['state']
                clk = deploy_ret['clk']
                bdid = deploy_ret['bdid']
                dpid = deploy_ret['dpid']
                for b in dpid:
                    if b not in dpid1:
                        dpid1.append(b)

                match = {}
                match['ipv4_dst'] = flow['ipv4_dst']
                match['ipv4_src'] = flow['ipv4_src']
                match["eth_type"] = 2048
                sb_set[i] = {}
                sb_set[i]['requisite'] = [old_path[1], old_path[2]]
                sb_set[i]['rule'] = rule(old_path[2], match, clk, clk, -1, 0, PRTMAX)
        #if proto == 2:
            #deploy_ret = path_deploy_time_cu(fat_tree_net, old_path, new_path, flow, state_cur, priority, out_port_old, out_port_new, clk, bdid, 1, proto)

        #if proto == 3:
        #    deploy_ret = path_deploy_third(fat_tree_net, old_path, new_path, flow, state_cur, priority, out_port_old, out_port_new, clk, bdid, 0, proto)



        #print dpid



    #print dpid1
    switch_deploy_all(dpid1, 1, 1, sb_set)
    merge_file()
    return 'True'


def snapshot_deploy_coco(filepath, K, t, proto):

    time_file_generate()

    flow_list = get_flow_list(filepath, K, t)
    #print flow_list

    script_init_all(K)
    state_cur = net()
    filepath2 = "/home/shengliu/Workspace/mininet/haha/cmd_test.sh"
    state_cur = network_init_all(K, filepath2, state_cur)

    script_init_all(K)
    #proto = 3
    clk = 5 # > 1
    bdid = 1
    priority = 8
    dpid1 = []


    for i in flow_list.keys():
        flow = flow_list[i]['flow']
        old_path = flow_list[i]['old_path']
        new_path = flow_list[i]['new_path']
        out_port_old = flow_list[i]['out_port_old']
        out_port_new = flow_list[i]['out_port_new']

        if proto == 2:
            deploy_ret = path_deploy_time_all_cu([], old_path, flow, state_cur, priority, {}, out_port_old, clk, bdid, 0, proto)
            state_cur = deploy_ret['state']
            clk = deploy_ret['clk']
            bdid = deploy_ret['bdid']
            dpid = deploy_ret['dpid']
            for b in dpid:
                if b not in dpid1:
                    dpid1.append(b)

        if proto == 3:
            deploy_ret = path_deploy_time_all_coco([], old_path, flow, state_cur, priority, {}, out_port_old, clk, bdid, 0, proto)
            state_cur = deploy_ret['state']
            clk = deploy_ret['clk']
            bdid = deploy_ret['bdid']
            dpid = deploy_ret['dpid']
            for b in dpid:
                if b not in dpid1:
                    dpid1.append(b)


    """
    flow_list_other = get_flow_list_all(filepath, K, flow_list)
    for i in flow_list_other.keys():
        flow = flow_list_other[i]['flow']
        old_path = flow_list_other[i]['old_path']
        new_path = flow_list_other[i]['new_path']
        out_port_old = flow_list_other[i]['out_port_old']
        out_port_new = flow_list_other[i]['out_port_new']

        if proto == 2:
            deploy_ret = path_deploy_time_all_cu([], old_path, flow, state_cur, priority, {}, out_port_old, clk, bdid, 0, proto)
            state_cur = deploy_ret['state']
            clk = deploy_ret['clk']
            bdid = deploy_ret['bdid']
            dpid = deploy_ret['dpid']
            for b in dpid:
                if b not in dpid1:
                    dpid1.append(b)

        if proto == 3:
            deploy_ret = path_deploy_time_all_coco([], old_path, flow, state_cur, priority, {}, out_port_old, clk, bdid, 0, proto)
            state_cur = deploy_ret['state']
            clk = deploy_ret['clk']
            bdid = deploy_ret['bdid']
            dpid = deploy_ret['dpid']
            for b in dpid:
                if b not in dpid1:
                    dpid1.append(b)
    """
    #print dpid1
    switch_deploy_all_coco(dpid1, 1, 0)
    script_init_all(K)
    time.sleep(10)
    dpid1_all = []
    dpid2_all = []
    dpid3_all = []

    for i in flow_list.keys():
        flow = flow_list[i]['flow']
        old_path = flow_list[i]['old_path']
        new_path = flow_list[i]['new_path']
        out_port_old = flow_list[i]['out_port_old']
        out_port_new = flow_list[i]['out_port_new']

        if old_path != new_path:
            if proto == 2:
                deploy_ret = path_deploy_time_all_cu(old_path, new_path, flow, state_cur, priority, out_port_old, out_port_new, clk, bdid, 1, proto)
                state_cur = deploy_ret['state']
                clk = deploy_ret['clk']
                bdid = deploy_ret['bdid']
                dpid1 = deploy_ret['dpid1']
                dpid2 = deploy_ret['dpid2']
                dpid3 = deploy_ret['dpid3']
                for b in dpid1:
                    if b not in dpid1_all:
                        dpid1_all.append(b)
                for b in dpid2:
                    if b not in dpid2_all:
                        dpid2_all.append(b)
                for b in dpid3:
                    if b not in dpid3_all:
                        dpid3_all.append(b)

            if proto == 3:
                deploy_ret = path_deploy_time_all_coco(old_path, new_path, flow, state_cur, priority, out_port_old, out_port_new, clk, bdid, 1, proto)
                state_cur = deploy_ret['state']
                clk = deploy_ret['clk']
                bdid = deploy_ret['bdid']
                dpid1 = deploy_ret['dpid1']
                dpid2 = deploy_ret['dpid2']
                dpid3 = deploy_ret['dpid3']
                for b in dpid1:
                    if b not in dpid1_all:
                        dpid1_all.append(b)
                for b in dpid2:
                    if b not in dpid2_all:
                        dpid2_all.append(b)
                for b in dpid3:
                    if b not in dpid3_all:
                        dpid3_all.append(b)


    subprocess.call('/home/shengliu/Workspace/mininet/haha/API/time_measure')
    switch_deploy_all_coco(dpid1_all, 1, 1)
    time.sleep(0.3)
    switch_deploy_all_coco(dpid2_all, 2, 1)
    time.sleep(0.3)
    switch_deploy_all_coco(dpid3_all, 3, 1)

    merge_file()
    return 'True'




if __name__ == '__main__':
    K = 8
    filepath = '/home/shengliu/Workspace/mininet/haha/API/flow_update1.tsv'
    t = 0
    snapshot_deploy_coco(filepath, K, 0, 3)
    #snapshot_deploy(filepath, K, t)

    """
    flow_list = get_flow_list(filepath, K, 0)
    #print flow_list
    script_init_all(K)

    state_cur = net()
    filepath2 = "/home/shengliu/Workspace/mininet/haha/cmd_test.sh"
    #state_next = net()
    state_cur = network_init_all(K, filepath2, state_cur)

    proto = 1
    clk = 5 # > 1
    bdid = 1
    priority = 8
    dpid1 = []
    sb_set = {}


    for i in flow_list.keys():
        flow = flow_list[i]['flow']
        old_path = flow_list[i]['old_path']
        new_path = flow_list[i]['new_path']
        out_port_old = flow_list[i]['out_port_old']
        out_port_new = flow_list[i]['out_port_new']


        if proto == 0 or proto == 1:
            deploy_ret = path_deploy_time_all([], old_path, flow, state_cur, priority, out_port_old, clk, bdid, 1, proto)

        #if proto == 2:
            #deploy_ret = path_deploy_time_cu(fat_tree_net, old_path, new_path, flow, state_cur, priority, out_port_old, out_port_new, clk, bdid, 1, proto)

        #if proto == 3:
        #    deploy_ret = path_deploy_third(fat_tree_net, old_path, new_path, flow, state_cur, priority, out_port_old, out_port_new, clk, bdid, 0, proto)

        state_cur = deploy_ret['state']
        clk = deploy_ret['clk']
        bdid = deploy_ret['bdid']
        dpid = deploy_ret['dpid']

        for b in dpid:
            if b not in dpid1:
                dpid1.append(b)


    switch_deploy_all(dpid, 1, 0)
    script_init_all(K)
    time.sleep(4)

    for i in flow_list.keys():
        flow = flow_list[i]['flow']
        old_path = flow_list[i]['old_path']
        new_path = flow_list[i]['new_path']
        out_port_old = flow_list[i]['out_port_old']
        out_port_new = flow_list[i]['out_port_new']


        if proto == 0 or proto == 1:
            deploy_ret = path_deploy_time_all(old_path, new_path, flow, state_cur, priority, out_port_new, clk, bdid, 1, proto)

        #if proto == 2:
            #deploy_ret = path_deploy_time_cu(fat_tree_net, old_path, new_path, flow, state_cur, priority, out_port_old, out_port_new, clk, bdid, 1, proto)

        #if proto == 3:
        #    deploy_ret = path_deploy_third(fat_tree_net, old_path, new_path, flow, state_cur, priority, out_port_old, out_port_new, clk, bdid, 0, proto)

        state_cur = deploy_ret['state']
        clk = deploy_ret['clk']
        bdid = deploy_ret['bdid']
        dpid = deploy_ret['dpid']

        for b in dpid:
            if b not in dpid1:
                dpid1.append(b)

        match = {}
        match['ipv4_dst'] = flow['ipv4_dst']
        match['ipv4_src'] = flow['ipv4_src']
        match["eth_type"] = 2048
        sb_set[i] = {}
        sb_set[i]['requisite'] = [old_path[1], old_path[2]]
        sb_set[i]['rule'] = rule(old_path[2], match, clk, clk, -1, 0, PRTMAX)

    switch_deploy_all(dpid, 1, 1, sb_set)


    state_cur.print_state()
    """
