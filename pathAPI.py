import subprocess

def addFlowRule(dpid, match, out_port, table_id=0, priority=2):
    cmd = ["curl -X POST -d '{ "]
    cmd.append('"dpid": ' + str(dpid) + ",")
    cmd.append('"table_id": ' + str(table_id) + ",")
    cmd.append('"priority": ' + str(priority) + ",")

    match_para = ['"match":{ ']
    for key in match.keys():
        if "ip" in key:
            match_para.append('"%s":"%s"' %(key, match[key]))
        else:
            match_para.append('"%s":%s' %(key, str(match[key])))
        match_para.append(",")
    match_para.pop()
    match_para.append("},")

    instructions = ['"instructions": [{"type": "APPLY_ACTIONS","actions": [{"type": "OUTPUT","port": %s}]}]' %(str(out_port))]

    cmd = cmd + match_para
    cmd = cmd + instructions
    cmd.append("}' http://localhost:8080/stats/flowentry/add")
    return ''.join(cmd)


def addTMPRule(dpid, match, rtmp, ttmp, out_port, table_id=0, priority=2):
    cmd = ["curl -X POST -d \'{ "]
    cmd.append('\"dpid\": ' + str(dpid) + ",")
    cmd.append('\"table_id\": ' + str(table_id) + ",")
    cmd.append('\"priority\": ' + str(priority) + ",")

    match_para = ['\"match\":{ ']
    for key in match.keys():
        if "ip" in key:
            match_para.append('\"%s\":\"%s\"' %(key, match[key]))
        else:
            match_para.append('\"%s\":%s' %(key, str(match[key])))
        match_para.append(",")
    match_para.append('\"dl_vlan\":%s' % str(rtmp))
    match_para.append("},")

    instructions = ['\"instructions\":[{\"type\":\"APPLY_ACTIONS\",\"actions\":[{\"type\":\"SET_FIELD\",\"field\":\"vlan_vid\",\"value\": %s},{\"type\": \"OUTPUT\",\"port\": %s}]}]' %(str(ttmp), str(out_port))]

    cmd = cmd + match_para
    cmd = cmd + instructions
    cmd.append("}\' http://localhost:8080/stats/flowentry/add")
    return ''.join(cmd)


def pushTMP(dpid, match, rtmp, ttmp, out_port, table_id=0, priority=2):
    cmd = ["curl -X POST -d '{ "]
    cmd.append('"dpid": ' + str(dpid) + ",")
    cmd.append('"table_id": ' + str(table_id) + ",")
    cmd.append('"priority": ' + str(priority) + ",")

    match_para = ['"match":{ ']
    for key in match.keys():
        if "ip" in key:
            match_para.append('"%s":"%s"' %(key, match[key]))
        else:
            match_para.append('"%s":%s' %(key, str(match[key])))
        match_para.append(",")
    match_para.pop()
    match_para.append("},")

    instructions = ['"instructions": [{"type": "APPLY_ACTIONS","actions": [{"type": "PUSH_VLAN", "ethertype": 33024}, {"type": "SET_FIELD","field": "vlan_vid","value": %s},{"type": "OUTPUT","port": %s}]}]' %(str(ttmp), str(out_port))]

    cmd = cmd + match_para
    cmd = cmd + instructions
    cmd.append("}' http://localhost:8080/stats/flowentry/add")
    return ''.join(cmd)


def popTMP(dpid, match, rtmp, ttmp, out_port, table_id=0, priority=2):
    cmd = ["curl -X POST -d '{ "]
    cmd.append('"dpid": ' + str(dpid) + ",")
    cmd.append('"table_id": ' + str(table_id) + ",")
    cmd.append('"priority": ' + str(priority) + ",")

    match_para = ['"match":{ ']
    for key in match.keys():
        if "ip" in key:
            match_para.append('"%s":"%s"' %(key, match[key]))
        else:
            match_para.append('"%s":%s' %(key, str(match[key])))
        match_para.append(",")
    match_para.append('"dl_vlan":%s' % str(rtmp))
    match_para.append("},")

    instructions = ['"instructions": [{"type": "APPLY_ACTIONS","actions": [{"type": "POP_VLAN"},{"type": "OUTPUT","port": %s}]}]' %(str(out_port))]

    cmd = cmd + match_para
    cmd = cmd + instructions
    cmd.append("}' http://localhost:8080/stats/flowentry/add")
    return ''.join(cmd)


if __name__ == '__main__':
    path = "/home/shengliu/Workspace/mininet/causalSDN/cmd_test.sh"
    dpid = 2
    table_id = 0
    priority = 2
    match = {}
    match["ipv4_src"] = "10.0.0.3/255.255.255.255"
    match["ipv4_dst"] = "10.0.0.1/255.255.255.255"
    match["eth_type"] = 2048
    rtmp = 19
    ttmp = 20
    out_port = 1
    cmd = addTMPRule(dpid, match, rtmp, ttmp + 4096, out_port, table_id, priority)
    print cmd
    file = open(path,"a")
    file.write(cmd)
    subprocess.call(".%s" %path)
    process = subprocess.Popen('.%s' %path, stdout=subprocess.PIPE)
    output, error = process.communicate()
