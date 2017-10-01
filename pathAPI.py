import subprocess


def addFlowRule(dpid, match, out_port, table_id=0, priority=2, flag="add"):
    cmd = ["curl -X POST -d \'{ "]
    cmd.append('\"dpid\": ' + str(dpid) + ",")
    cmd.append('\"table_id\": ' + str(table_id) + ",")
    cmd.append('\"priority\": ' + str(priority) + ",")

    match_para = ['\"match\":{ ']
    for key in match.keys():
        if "ip" in key:
            match_para.append('\"%s\":\"%s\"' %(key, str(match[key])))
        else:
            match_para.append('\"%s\":%s' %(key, str(match[key])))
        match_para.append(",")
    match_para.pop()
    match_para.append("},")

    instructions = ['\"instructions\":[{\"type\":\"APPLY_ACTIONS\",\"actions\":[{\"type\": \"OUTPUT\",\"port\": %s}]}]' %(str(out_port))]

    cmd = cmd + match_para
    cmd = cmd + instructions
    cmd.append("}\' http://localhost:8080/stats/flowentry/%s \n\n" %flag)
    return ''.join(cmd)


def addTMPRule(dpid, match, rtmp, ttmp, out_port, table_id=0, priority=2, flag="add"):
    cmd = ["curl -X POST -d \'{ "]
    cmd.append('\"dpid\": ' + str(dpid) + ",")
    cmd.append('\"table_id\": ' + str(table_id) + ",")
    cmd.append('\"priority\": ' + str(priority) + ",")

    match_para = ['\"match\":{ ']
    for key in match.keys():
        if "ip" in key:
            match_para.append('\"%s\":\"%s\"' %(key, str(match[key])))
        else:
            match_para.append('\"%s\":%s' %(key, str(match[key])))
        match_para.append(",")
    match_para.append('\"dl_vlan\":%s' % str(rtmp))
    match_para.append("},")

    instructions = ['\"instructions\":[{\"type\":\"APPLY_ACTIONS\",\"actions\":[{\"type\":\"SET_FIELD\",\"field\":\"vlan_vid\",\"value\": %s},{\"type\": \"OUTPUT\",\"port\": %s}]}]' %(str(ttmp+4096), str(out_port))]

    cmd = cmd + match_para
    cmd = cmd + instructions
    cmd.append("}\' http://localhost:8080/stats/flowentry/%s \n\n" %flag)
    return ''.join(cmd)

def arpRule(dpid, table_id=0, priority=1, flag="add"):
    cmd = ["curl -X POST -d \'{ "]
    cmd.append('\"dpid\": ' + str(dpid) + ",")
    cmd.append('\"table_id\": ' + str(table_id) + ",")
    cmd.append('\"priority\": ' + str(priority) + ",")

    cmd.append('\"match\":{\"eth_type\":0x0806},')

    instructions = ['\"instructions\":[{\"type\":\"APPLY_ACTIONS\",\"actions\":[{\"type\": \"OUTPUT\",\"port\": \"FLOOD\"}]}]']

    cmd = cmd + instructions
    cmd.append("}\' http://localhost:8080/stats/flowentry/%s \n\n" %flag)
    return ''.join(cmd)


def bundleAddMsg(dpid, bdid, match, rtmp, ttmp, out_port, table_id=0, priority=2, flag="add"):
    cmd = ["curl -X POST -d \'{ "]
    cmd.append('\"dpid\": ' + str(dpid) + ",")
    cmd.append('\"bdid\": ' + str(bdid) + ",")
    cmd.append('\"table_id\": ' + str(table_id) + ",")
    cmd.append('\"priority\": ' + str(priority) + ",")

    match_para = ['\"match\":{ ']
    for key in match.keys():
        if "ip" in key:
            match_para.append('\"%s\":\"%s\"' %(key, str(match[key])))
        else:
            match_para.append('\"%s\":%s' %(key, str(match[key])))
        match_para.append(",")
    match_para.append('\"dl_vlan\":%s' % str(rtmp))
    match_para.append("},")

    instructions = ['\"instructions\":[{\"type\":\"APPLY_ACTIONS\",\"actions\":[{\"type\":\"SET_FIELD\",\"field\":\"vlan_vid\",\"value\": %s},{\"type\": \"OUTPUT\",\"port\": %s}]}]' %(str(ttmp+4096), str(out_port))]

    cmd = cmd + match_para
    cmd = cmd + instructions
    cmd.append("}\' http://localhost:8080/stats/bundleadd/%s \n\n" %flag)
    return ''.join(cmd)

def bundleCtrlMsg(dpid, bdid, flag):
    cmd = ["curl -X POST -d \'{ "]
    cmd.append('\"dpid\": ' + str(dpid) + ",")
    cmd.append('\"bdid\": ' + str(bdid))
    cmd.append("}\' http://localhost:8080/stats/bundlectrl/%s \n\n" %flag)
    return ''.join(cmd)

def pushTMP(dpid, bdid, match, ttmp, out_port, table_id=0, priority=2):
    cmd = ["curl -X POST -d \'{ "]
    cmd.append('\"dpid\": ' + str(dpid) + ",")
    cmd.append('\"bdid\": ' + str(bdid) + ",")
    cmd.append('\"table_id\": ' + str(table_id) + ",")
    cmd.append('\"priority\": ' + str(priority) + ",")

    match_para = ['\"match\":{ ']
    for key in match.keys():
        if "ip" in key:
            match_para.append('\"%s\":\"%s\"' %(key, str(match[key])))
        else:
            match_para.append('\"%s\":%s' %(key, str(match[key])))
        match_para.append(",")
    match_para.pop()
    match_para.append("},")

    instructions = ['\"instructions\":[{\"type\":\"APPLY_ACTIONS\",\"actions\":[{\"type\": \"PUSH_VLAN\",\"ethertype\": 33024}, {\"type\":\"SET_FIELD\",\"field\":\"vlan_vid\",\"value\": %s},{\"type\": \"OUTPUT\",\"port\": %s}]}]' %(str(ttmp+4096), str(out_port))]

    cmd = cmd + match_para
    cmd = cmd + instructions
    cmd.append("}\' http://localhost:8080/stats/bundleadd/add \n\n")
    return ''.join(cmd)



def popTMP(dpid, bdid, match, rtmp, out_port, table_id=0, priority=2):
    cmd = ["curl -X POST -d \'{ "]
    cmd.append('\"dpid\": ' + str(dpid) + ",")
    cmd.append('\"bdid\": ' + str(bdid) + ",")
    cmd.append('\"table_id\": ' + str(table_id) + ",")
    cmd.append('\"priority\": ' + str(priority) + ",")

    match_para = ['\"match\":{ ']
    for key in match.keys():
        if "ip" in key:
            match_para.append('\"%s\":\"%s\"' %(key, str(match[key])))
        else:
            match_para.append('\"%s\":%s' %(key, str(match[key])))
        match_para.append(",")
    match_para.append('"dl_vlan":%s' % str(rtmp))
    match_para.append("},")

    instructions = ['\"instructions\":[{\"type\":\"APPLY_ACTIONS\",\"actions\":[{\"type\": \"POP_VLAN\"}, {\"type\": \"OUTPUT\",\"port\": %s}]}]' %(str(out_port))]

    cmd = cmd + match_para
    cmd = cmd + instructions
    cmd.append("}\' http://localhost:8080/stats/bundleadd/add \n\n")
    return ''.join(cmd)

def table_clear(dpid):
    cmd = ["curl -X DELETE http://localhost:8080/stats/flowentry/clear/%s \n\n" %(str(dpid))]
    return ''.join(cmd)

def script_init(path):
    with open(path,"w+") as f:
        f.write("#!/bin/bash\n")
        f.close()

def script_write(path, str):
    with open(path,"a+") as f:
        f.write(str)
        f.close()

def network_clear(dp_range, filepath):
    for i in range(dp_range):
        script_write(filepath, table_clear(i+1))

def network_arp_push(dp_range, filepath):
    for i in range(dp_range):
        script_write(filepath, arpRule(i+1, 0, 1, "add"))


if __name__ == '__main__':
    filepath = "/home/shengliu/Workspace/mininet/haha/cmd_test.sh"
    node_num = 5

    script_init(filepath)
    network_clear(node_num, filepath)
    network_arp_push(node_num, filepath)

    match = {}
    match["ipv4_src"] = "10.0.0.1/255.255.255.255"
    match["ipv4_dst"] = "10.0.0.2/255.255.255.255"
    match["eth_type"] = 2048

    dp = 1
    bdid = 1
    script_write(filepath, bundleCtrlMsg(dp, bdid, "open"))
    #script_write(filepath, bundleAddMsg(dp, bdid, match, rtmp, ttmp, out_port, 0, priority=2, "add"))
    #script_write(filepath, popTMP(dp, bdid, match, rtmp, out_port, 0, priority=2))
    script_write(filepath, pushTMP(dp, bdid, match, 2, 2, 0, 2))
    script_write(filepath, bundleCtrlMsg(dp, bdid, "commit"))

    dp = 2
    bdid = 2
    script_write(filepath, bundleCtrlMsg(dp, bdid, "open"))
    script_write(filepath, bundleAddMsg(dp, bdid, match, 3, 2, 2, 0, 2, "add"))
    #script_write(filepath, popTMP(dp, bdid, match, rtmp, out_port, 0, priority=2))
    #script_write(filepath, pushTMP(dp, bdid, match, ttmp, out_port, 0, priority=2))
    script_write(filepath, bundleCtrlMsg(dp, bdid, "commit"))

    dp = 3
    bdid = 3
    script_write(filepath, bundleCtrlMsg(dp, bdid, "open"))
    script_write(filepath, bundleAddMsg(dp, bdid, match, 2, 4, 3, 0, 2, "add"))
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

    dp = 5
    bdid = 5
    script_write(filepath, bundleCtrlMsg(dp, bdid, "open"))
    #script_write(filepath, bundleAddMsg(dp, bdid, match, rtmp, ttmp, out_port, 0, priority=2, "add"))
    script_write(filepath, popTMP(dp, bdid, match, 4, 2, 0, 2))
    #script_write(filepath, pushTMP(dp, bdid, match, ttmp, out_port, 0, priority=2))
    script_write(filepath, bundleCtrlMsg(dp, bdid, "commit"))

    #subprocess.call(".%s" %path)
    #process = subprocess.Popen('.%s' %path, stdout=subprocess.PIPE)
    #output, error = process.communicate()
