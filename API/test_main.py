from util import *
from cmd_issue_new import *
from timestamp import *
from readFile import *
import subprocess

PRTMAX = 100

def network_init(K, filepath, state_cur, state_next):
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
            print "drop_rule_push:"
            print i
            drop_rule_push(i, filepath, 1, 1, table_id, 0)
            # default rule has rtmp=1, ttmp=1 and priority=1
    arp_rule_push('1'*7, filepath, table_id, 1)
    for pod in range(K):
        for swNum in range(K/2):
            arp_rule_push(int2dpid(3, swNum, pod), filepath, table_id, 1)
    subprocess.call("%s" %filepath)

    for i in dpset:
        if i != '1'*7:
            state_cur.add_table(i,0)
            state_next.add_table(i,0)
            state_cur.get_table(i, 0).add_rule({}, 1, 1, 0, 1)
            state_next.get_table(i, 0).add_rule({}, 1, 1, 0, 1)


def path_deploy(old_path, new_path, flow, state_cur, state_next, prt, out_port, clk, bdid, filepath):
    rule_set = rule_construct(old_path, new_path, flow, state_cur, prt, out_port, clk)
    state_update(rule_set, state_next, clk)

    setTMP(old_path, new_path, flow, state_cur, state_next, rule_set, clk)
    state_update(rule_set, state_cur, clk)
    state_next.copy_state(state_cur)

    for r in rule_set.keys():
        print "add rules:"
        for x in rule_set[r]['add']:
            x.print_rule()
        print "del rules:"
        for x in rule_set[r]['del']:
            x.print_rule()

    table_id = 0
    script_init(filepath)
    for dp in rule_set.keys():
        bdid = bdid + 1
        script_write(filepath, bundleCtrlMsg(dp, bdid, "open"))
        for r in rule_set[dp]['del']:
            script_write(filepath, bundleAddMsg(dp, bdid, r.get_match(), r.get_rtmp(), r.get_ttmp(), r.get_action(), table_id, r.get_prt(), "delete_strict"))
        for r in rule_set[dp]['add']:
            script_write(filepath, bundleAddMsg(dp, bdid, r.get_match(), r.get_rtmp(), r.get_ttmp(), r.get_action(), table_id, r.get_prt(), "add"))
        script_write(filepath, bundleCtrlMsg(dp, bdid, "commit"))


def clear_sb_rules(filepath, old_path, new_path, flow, old_state, new_state, clk):
    sb_set = sb_rule_construct(old_path, new_path, flow, clk)
    table_id = 0
    script_init(filepath)
    for r in sb_set:
        script_write(filepath, addTMPRule(r.get_dpid(), r.get_match(), r.get_rtmp(), r.get_ttmp(), -1, table_id, PRTMAX, "delete_strict"))
        tb = old_state.get_table(r.get_dpid(), table_id)
        tb.del_rule(r.get_match(), r.get_prt())
        tb = new_state.get_table(r.get_dpid(), table_id)
        tb.del_rule(r.get_match(), r.get_prt())


def out_port_construct(dpid_list, out_port_list):
    out_port_dic = {}
    for i in range(len(out_port_list)):
        out_port_dic[dpid_list[i]] = out_port_list[i]
    return out_port_dic

if __name__ == '__main__':
    filepath = "/home/shengliu/Workspace/mininet/haha/cmd_test.sh"
    K = 4
    state_cur = net()
    state_next = net()
    network_init(K, filepath, state_cur, state_next)

    filepath2 = '/home/shengliu/Workspace/mininet/haha/API/flow_update.tsv'
    K = 4
    path_list = path_read(filepath2, K)

    old_path = path_list['old_path'][0]['path']
    new_path = path_list['new_path'][0]['path']
    print "wocao"
    print old_path
    print new_path
    print path_list['old_path'][0]['out_port']
    print path_list['new_path'][0]['out_port']
    out_port = out_port_construct(old_path, path_list['old_path'][0]['out_port'])
    flow = path_list['flow'][0]
    priority = 8
    clk = 8
    bdid = 1

    #rule_set = rule_construct([], old_path, flow, state_cur, priority, out_port, clk)
    #state_update(rule_set, state_next, clk)
    #setTMP([], old_path, flow, state_cur, state_next, rule_set, clk)
    #state_update(rule_set, state_cur, clk)
    #state_next.copy_state(state_cur)
    print out_port
    path_deploy([], old_path, flow, state_cur, state_next, priority, out_port, clk, bdid, filepath)
    state_cur.print_state()
    subprocess.call("%s" %filepath)
    clk = 10
    out_port = out_port_construct(new_path, path_list['new_path'][0]['out_port'])
    print "\n\n\nnew route:"
    print out_port
    path_deploy(old_path, new_path, flow, state_cur, state_next, priority, out_port, clk, bdid, filepath)
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
