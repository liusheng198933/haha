from util import *
from cmd_issue_new import *
from timestamp import *
import subprocess

def network_init(K, filepath, state_cur, state_next):
    script_init(filepath)
    table_id = 0
    dpset = ['1'*7] # arp switch
    for core in range(pow((K/2),2)):
        dpset.append(int2dpid(1, core))
    for i in range(2,3):
        for pod in range(K):
            for swNum in range(K/2):
                dpset.append(int2dpid(i, swNum, pod))
    for i in dpset:
        script_write(filepath, table_clear(i))
    for i in dpset:
        if i != '1'*7:
            script_write(filepath, drop_rule_push(i, filepath, 1, 1, table_id, 1))
            # default rule has rtmp=1, ttmp=1 and priority=1
    arp_rule_push('1'*7, filepath, table_id, 1)
    subprocess.call("%s" %filepath)

    for i in dpset:
        if i != '1'*7:
            state_cur.add_table(i,0)
            state_next.add_table(i,0)
            state_cur.get_table(i, 0).add_rule({}, 1, 1, 0, 1)
            state_next.get_table(i, 0).add_rule({}, 1, 1, 0, 1)


if __name__ = '__main__':
    filepath = "/home/shengliu/Workspace/mininet/haha/cmd_test.sh"
    K = 4
    state_cur = net()
    state_next = net()
    network_init(K, filepath, state_cur, state_next)

    filepath2 = '/home/shengliu/Workspace/mininet/haha/API/flow_update.tsv'
    K = 4
    path_list = path_read(filepath2, K)

    old_path = path_list['old_path'][0]
    new_path = path_list['new_path'][0]

    match1 = {}
    match1["ipv4_src"] = "10.0.1.1/255.255.255.255"
    match1["ipv4_dst"] = "10.0.1.4/255.255.255.255"
    match1["eth_type"] = 2048

    match2 = {}
    match2["ipv4_src"] = "10.0.1.4/255.255.255.255"
    match2["ipv4_dst"] = "10.0.1.1/255.255.255.255"
    match2["eth_type"] = 2048

    dp = 1
    bdid = 1
    script_write(filepath, bundleCtrlMsg(dp, bdid, "open"))
    #script_write(filepath, bundleAddMsg(dp, bdid, match, rtmp, ttmp, out_port, 0, priority=2, "add"))
    script_write(filepath, pushTMP(dp, bdid, match1, 1, 3, 0, 2, "add"))
    script_write(filepath, popTMP(dp, bdid, match2, 2, 2, 0, 2, "add"))
    script_write(filepath, bundleCtrlMsg(dp, bdid, "commit"))

    dp = 9
    bdid = 2
    script_write(filepath, bundleCtrlMsg(dp, bdid, "open"))
    script_write(filepath, bundleAddMsg(dp, bdid, match1, 1, 1, 4, 0, 2, "add"))
    script_write(filepath, bundleAddMsg(dp, bdid, match2, 2, 2, 1, 0, 2, "add"))
    #script_write(filepath, popTMP(dp, bdid, match2, 4, 1, 0, 2, "add"))
    #script_write(filepath, pushTMP(dp, bdid, match1, 2, 2, 0, 2, "add"))
    script_write(filepath, bundleCtrlMsg(dp, bdid, "commit"))

    dp = 18
    bdid = 3
    script_write(filepath, bundleCtrlMsg(dp, bdid, "open"))
    #script_write(filepath, bundleAddMsg(dp, bdid, match1, 3, 2, 2, 0, 2, "add"))
    script_write(filepath, bundleAddMsg(dp, bdid, match1, 1, 1, 2, 0, 2, "add"))
    script_write(filepath, bundleAddMsg(dp, bdid, match2, 2, 2, 1, 0, 2, "add"))
    #script_write(filepath, bundleAddMsg(dp, bdid, match1, 1, 1, 'drop', 0, 1, "add"))
    #script_write(filepath, bundleAddMsg(dp, bdid, match2, 1, 1, 'drop', 0, 1, "add"))
    #script_write(filepath, popTMP(dp, bdid, match, rtmp, out_port, 0, priority=2))
    #script_write(filepath, pushTMP(dp, bdid, match, ttmp, out_port, 0, priority=2))
    script_write(filepath, bundleCtrlMsg(dp, bdid, "commit"))

    dp = 11
    bdid = 4
    script_write(filepath, bundleCtrlMsg(dp, bdid, "open"))
    script_write(filepath, bundleAddMsg(dp, bdid, match1, 1, 1, 1, 0, 2, "add"))
    script_write(filepath, bundleAddMsg(dp, bdid, match2, 2, 2, 4, 0, 2, "add"))
    #script_write(filepath, popTMP(dp, bdid, match, rtmp, out_port, 0, priority=2))
    #script_write(filepath, pushTMP(dp, bdid, match, ttmp, out_port, 0, priority=2))
    script_write(filepath, bundleCtrlMsg(dp, bdid, "commit"))

    #dp = 4
    #bdid = 4
    #script_write(filepath, bundleCtrlMsg(dp, bdid, "open"))
    #script_write(filepath, bundleAddMsg(dp, bdid, match, rtmp, ttmp, out_port, 0, priority=2, "add"))
    #script_write(filepath, popTMP(dp, bdid, match, rtmp, out_port, 0, priority=2))
    #script_write(filepath, pushTMP(dp, bdid, match, ttmp, out_port, 0, priority=2))
    #script_write(filepath, bundleCtrlMsg(dp, bdid, "commit"))

    dp = 3
    bdid = 5
    script_write(filepath, bundleCtrlMsg(dp, bdid, "open"))
    #script_write(filepath, bundleAddMsg(dp, bdid, match, rtmp, ttmp, out_port, 0, priority=2, "add"))
    script_write(filepath, popTMP(dp, bdid, match1, 1, 1, 0, 2, "add"))
    script_write(filepath, pushTMP(dp, bdid, match2, 2, 3, 0, 2, "add"))
    script_write(filepath, bundleCtrlMsg(dp, bdid, "commit"))

    subprocess.call("%s" %filepath)


    time.sleep(10)



    script_init(filepath)
    dp = 11
    bdid = 6
    script_write(filepath, bundleCtrlMsg(dp, bdid, "open"))
    script_write(filepath, bundleAddMsg(dp, bdid, match2, 2, 2, 4, 0, 2, "delete_strict"))
    script_write(filepath, bundleAddMsg(dp, bdid, match2, 4, 4, 3, 0, 2, "add"))
    #script_write(filepath, bundleAddMsg(dp, bdid, match1, 5, 5, "in_port", 0, 2, "add"))
    #script_write(filepath, bundleAddMsg(dp, bdid, match2, 4, 4, 1, 0, 2, "delete_strict"))
    #script_write(filepath, bundleAddMsg(dp, bdid, match2, 5, 5, "in_port", 0, 2, "add"))
    #script_write(filepath, popTMP(dp, bdid, match, rtmp, out_port, 0, priority=2))
    #script_write(filepath, pushTMP(dp, bdid, match, ttmp, out_port, 0, priority=2))
    script_write(filepath, bundleCtrlMsg(dp, bdid, "commit"))
#    subprocess.call("%s" %filepath)

    dp = 17
    bdid = 7
    script_write(filepath, bundleCtrlMsg(dp, bdid, "open"))
    #script_write(filepath, bundleAddMsg(dp, bdid, match1, 3, 2, 2, 0, 2, "delete_strict"))
    #script_write(filepath, bundleAddMsg(dp, bdid, match1, 5, 5, "in_port", 0, 2, "add"))
    script_write(filepath, bundleAddMsg(dp, bdid, match1, 3, 1, 2, 0, 2, "add"))
    script_write(filepath, bundleAddMsg(dp, bdid, match2, 4, 2, 1, 0, 2, "add"))
    #script_write(filepath, bundleAddMsg(dp, bdid, match2, 5, 5, "in_port", 0, 2, "add"))
    #script_write(filepath, popTMP(dp, bdid, match, rtmp, out_port, 0, priority=2))
    #script_write(filepath, pushTMP(dp, bdid, match, ttmp, out_port, 0, priority=2))
    script_write(filepath, bundleCtrlMsg(dp, bdid, "commit"))
#    subprocess.call("%s" %filepath)

    dp = 18
    bdid = 8
    script_write(filepath, bundleCtrlMsg(dp, bdid, "open"))
    script_write(filepath, bundleAddMsg(dp, bdid, match1, 1, 1, 2, 0, 2, "delete_strict"))
    script_write(filepath, bundleAddMsg(dp, bdid, match1, 3, 3, -1, 0, 5, "add"))
    script_write(filepath, bundleAddMsg(dp, bdid, match2, 2, 2, 1, 0, 2, "delete_strict"))
    script_write(filepath, bundleAddMsg(dp, bdid, match2, 4, 4, -1, 0, 5, "add"))
    #script_write(filepath, popTMP(dp, bdid, match, rtmp, out_port, 0, priority=2))
    #script_write(filepath, pushTMP(dp, bdid, match, ttmp, out_port, 0, priority=2))
    script_write(filepath, bundleCtrlMsg(dp, bdid, "commit"))
    subprocess.call("%s" %filepath)

    time.sleep(1)
    script_init(filepath)
    dp = 9
    bdid = 9
    script_write(filepath, bundleCtrlMsg(dp, bdid, "open"))
        #script_write(filepath, popTMP(dp, bdid, match, rtmp, out_port, 0, priority=2))
    script_write(filepath, bundleAddMsg(dp, bdid, match1, 1, 1, 4, 0, 2, "delete_strict"))
    script_write(filepath, bundleAddMsg(dp, bdid, match1, 3, 3, 3, 0, 2, "add"))
    #script_write(filepath, bundleAddMsg(dp, bdid, match, rtmp, ttmp, out_port, 0, priority=2, "add"))
    script_write(filepath, bundleCtrlMsg(dp, bdid, "commit"))

    #subprocess.call("%s" %filepath)



    #dp = 3
    #bdid = 8
    #script_write(filepath, bundleCtrlMsg(dp, bdid, "open"))
    #script_write(filepath, bundleAddMsg(dp, bdid, match2, 4, 4, 1, 0, 2, "delete_strict"))
    #script_write(filepath, bundleAddMsg(dp, bdid, match2, 5, 5, 2, 0, 2, "add"))
    #script_write(filepath, bundleAddMsg(dp, bdid, match, 2, 4, 3, 0, 2, "add"))
    #script_write(filepath, popTMP(dp, bdid, match, rtmp, out_port, 0, priority=2))
    #script_write(filepath, pushTMP(dp, bdid, match, ttmp, out_port, 0, priority=2))
    #script_write(filepath, bundleCtrlMsg(dp, bdid, "commit"))

    #dp = 4
    #bdid = 9
    #script_write(filepath, bundleCtrlMsg(dp, bdid, "open"))
    #script_write(filepath, bundleAddMsg(dp, bdid, match1, 5, 2, 2, 0, 2, "add"))
    #script_write(filepath, bundleAddMsg(dp, bdid, match2, 5, 4, 1, 0, 2, "add"))
    #script_write(filepath, popTMP(dp, bdid, match, rtmp, out_port, 0, priority=2))
    #script_write(filepath, pushTMP(dp, bdid, match, ttmp, out_port, 0, priority=2))
    #script_write(filepath, bundleCtrlMsg(dp, bdid, "commit"))

    #dp = 5
    #bdid = 10
    #script_write(filepath, bundleCtrlMsg(dp, bdid, "open"))
    #script_write(filepath, bundleAddMsg(dp, bdid, match, rtmp, ttmp, out_port, 0, priority=2, "add"))
    #script_write(filepath, popTMP(dp, bdid, match, 4, 2, 0, 2))
    #script_write(filepath, pushTMP(dp, bdid, match, ttmp, out_port, 0, priority=2))
    #script_write(filepath, bundleCtrlMsg(dp, bdid, "commit"))

    subprocess.call("%s" %filepath)
