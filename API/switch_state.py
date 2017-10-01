from util import *

class rule:
    def __init__(self, dpid, match, rtmp, ttmp, action, table_id=0, priority=0):
        # self.next_sid is the identifier of the switch
        # match is a list, each element of which is a src-dst ip addresses pair
        self.dpid = dpid
        self.match = match
        self.action = action
        # action = 0: drop;  action = -1: send back
        self.priority = priority
        self.table_id = table_id
        self.rtmp = rtmp
        self.ttmp = ttmp
        self.match_bin = match_parse(self.match)

    def get_exact_match(self, flow_table):
        for r in flow_table.get_all_rule():
            r.get_match()

    def print_rule(self):
        printstr = []
        printstr.append("rule dpid: %i, prt: %i, action: %s, rtmp: %i, ttmp: %i, table_id: %i\n" % (self.dpid, self.priority, self.action, self.rtmp, self.ttmp, self.table_id))
        printstr.append("match: %s" % str(self.match))
        print "".join(printstr)

    def get_rule(self):
        return {'dpid': self.dpid, 'match': self.match, 'action': self.action, 'priority':self.priority, 'rtmp': self.rtmp, 'ttmp': self.ttmp, 'table_id': self.table_id}

    def if_match(self, flow):
        flow_bin = match_parse(flow)
        if intersection(self.match_bin, flow_bin) == flow_bin:
            return True
        else:
            return False

"""        if 'in_port' in self.match.keys():
            if flow['in_port'] != self.match['in_port']:
                return False
        if intersection(ip_parse(flow['ipv4_dst']), ip_parse(self.match['ipv4_dst'])) == ip_parse(flow['ipv4_dst']):
            if 'ipv4_src' in self.match.keys():
                if intersection(ip_parse(flow['ipv4_src']), ip_parse(self.match['ipv4_src'])) == ip_parse(flow['ipv4_src']):
                    return True
                else:
                    return False
            else:
                return True
        return False
"""

    def if_overlap(self, match_cmp, prt_cmp):
        if prt_cmp != self.priority:
            return False
        match_cmp_bin = match_parse(match_cmp)
        if intersection(self.match_bin, match_cmp_bin):
            return True
        else:
            return False

"""
        if 'in_port' in self.match.keys():
            if match_cmp['in_port'] != self.match['in_port']:
                return False
        if intersection(ip_parse(match_cmp['ipv4_dst']), ip_parse(self.match['ipv4_dst'])):
            if 'ipv4_src' in self.match.keys():
                if intersection(ip_parse(match_cmp['ipv4_src']), ip_parse(self.match['ipv4_src'])):
                    return True
                else:
                    return False
            return True
        return False
"""

    def if_equal(self, match_cmp, prt_cmp):
        if cmp(self.match, match_cmp) == 0 and prt_cmp == self.priority:
            return True
        else:
            return False

    def get_dpid(self):
        return self.dpid

    def get_table_id(self):
        return self.table_id

    def get_match(self):
        return self.match

    def get_rtmp(self):
        return self.rtmp

    def get_ttmp(self):
        return self.ttmp

    def get_prt(self):
        return self.priority

    def get_action(self):
        return self.action

    def set_dpid(self, value):
        self.dpid = value

    def set_prt(self, value):
        self.priority = value

    def set_rtmp(self, value):
        self.rtmp = value

    def set_ttmp(self, value):
        self.ttmp = value

    def set_match(self, value):
        self.match = value

    def set_table_id(self, value):
        self.table_id = value

    def set_action(self, value):
        self.action = value


class table:
    # create an image of the switch flow table
    def __init__(self, dpid, table_id):
        self.tb = []
        self.dpid = dpid
        self.table_id = table_id

    def clear(self):
        self.tb = []

    def add_rule(self, match, rtmp, ttmp, action, priority):
        for i in range(len(self.tb)):
            if self.tb[i].if_overlap(match, priority):
                return
        self.tb.append(rule(self.dpid, match, rtmp, ttmp, action, self.table_id, priority))

    def del_rule(self, match, priority):
        for i in range(len(self.tb)):
            if self.tb[i].if_equal(self.sid, match, priority):
                del self.tb[i]
                return

    def get_rule(self, flow):
        rprt = 0
        rule = -1
        for i in range(len(self.tb)):
            if (self.tb[i].if_match(flow)) & (self.tb[i].get_prt() > rprt):
                rprt = self.tb[i].get_prt()
                rule = i
        if rule < 0:
            return 0
        else:
            return self.tb[rule]

    def get_all_rule(self):
        return self.tb

    def get_dpid(self):
        return self.dpid

    def get_rule_num(self):
        return len(self.tb)

    def set_table(self, flowTable):
        self.tb = []
        for i in range(len(flowTable)):
            self.add_rule(flowTable[i].get_match(), flowTable[i].get_rtmp(), flowTable[i].get_ttmp(), flowTable[i].get_action(), flowTable[i].get_prt())

class net():
    def __init__(self):
        self.state = {}

    def add_switch(self, dpid):
        self.state[dpid] = {}

    def del_switch(self, dpid):
        del self.state[dpid]

    def add_table(self, dpid, table_id):
        if dpid not in self.state.keys():
            self.add_switch(dpid)
        self.state[dpid][table_id] = table(dpid, table_id)
        



def switch_query(path, dpid):
    with open(path,"w+") as f:
        f.write("#!/bin/bash\n")
        f.write("curl -X GET http://localhost:8080/stats/flow/%s\n" % dpid)
        f.close()


def parse_query(output):
    strret = output.split()
    rule_list = []
    j = -1
    rmchars = '\"\':{}[],'
    dpid = int(strret[0].strip(rmchars))
    for i in range(len(strret)):
        if "priority" in strret[i]:
            rule_list.append(rule(dpid, {}, 0, 0, 0, 0, 0))
            j = j + 1
            rule_list[j].set_prt(int(strret[i+1].strip(rmchars)))

        if "table_id" in strret[i]:
            rule_list[j].set_table_id(int(strret[i+1].strip(rmchars)))

        if "match" in strret[i]:
            mt = {}
            k = i + 1
            while "instructions" not in strret[k]:
                if (k-i) % 2 == 1:
                    key = strret[k].strip(rmchars)
                    value = strret[k+1].strip(rmchars)
                    if key == 'vlan_vid':
                        rule_list[j].set_rtmp(int(value))
                    else:
                        if key != 'ipv4_dst' and key != 'ipv4_src':
                            value = int(value)
                        mt[key] = value
                k = k + 1
            rule_list[j].set_match(mt)

        if "action" in strret[i]:
            k = i + 1
            while ("priority" not in strret[k]) and (k < len(strret)):
                if strret[k].strip(rmchars) == 'vlan_vid':
                    rule_list[j].set_ttmp(int(strret[k+2].strip(rmchars)))
                if strret[k].strip(rmchars) == 'OUTPUT':
                    rule_list[j].set_action(strret[k+2].strip(rmchars))
                k = k + 1
    return rule_list

if __name__ == '__main__':
    filepath = "/home/shengliu/Workspace/mininet/haha/cmd_test.sh"

    switch_query(filepath, 3)
    process = subprocess.Popen('%s' %filepath, stdout=subprocess.PIPE)
    output, error = process.communicate()

    rule_list = parse_query(output)
    for r in rule_list:
        r.print_rule()
