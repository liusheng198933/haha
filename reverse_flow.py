import copy
import random

class Rule:
    def __init__(self, sid, match, action):
        self.sid = sid
        self.match = match
        self.action = action

    def get_sid(self):
        return self.sid

    def get_match(self):
        return self.match

    def get_action(self):
        return self.action

class Switch:
    def __init__(self, sid):
        self.sid = sid
        self.table = {}

    def get_exact_rule(self, match):
        for m in self.table.keys():
            if intersection(m, match) == match:
                return self.table[m]
        return False

    def get_rule(self, match):
        for m in self.table.keys():
            if intersection(m, match):
                return self.table[m]
        return False

    def install_rule(self, match, action):
        for m in self.table.keys():
            t = union(m, match)
            if t and (self.table[m].get_action() == action):
                self.table[t] = Rule(self.sid, t, action)
                del self.table[m]
                return self.table[t]
        self.table[match] = Rule(self.sid, match, action)
        return self.table[match]

    def get_table(self):
        rule_list = []
        print "Switch %d" % self.sid
        for k in self.table.keys():
            print "match: %s, action: %d" %(self.table[k].get_match(), self.table[k].get_action())
            rule_list.append(self.table[k])
        return rule_list


def intersection(match1, match2):
    result = []
    for i in range(len(match2)):
        if match2[i] == 'x':
            result.append(match1[i])
        if match2[i] == '1':
            if match1[i] == '0':
                result.append('z')
                return False
            else:
                result.append('1')
        if match2[i] == '0':
            if match1[i] == '1':
                result.append('z')
                return False
            else:
                result.append('0')
    return "".join(result)

def union(match1, match2):
    count = 0
    result = []
    for i in range(len(match1)):
        if (match1[i] != match2[i]):
            count += 1
            result.append('x')
        else:
            result.append(match1[i])
        if count > 1:
            return False
    return "".join(result)

def union_set(st, ele):
    listcopy = copy.deepcopy(st)
    i = 0
    while (i < len(listcopy)):
        t = union(listcopy[i], ele)
        if t:
            ele = t
            del listcopy[i]
            i = 0
        else:
            i += 1
    listcopy.append(ele)
    return listcopy

def complement(match1):
    result = []
    for i in range(len(match1)):
        if match1[i] != 'x':
            tmp = []
            for j in range(len(match1)):
                if j < i:
                    tmp.append(match1[j])
                if j == i:
                    if match1[i] == '1':
                        tmp.append('0')
                    else:
                        tmp.append('1')
                if j > i:
                    tmp.append('x')
            result = union_set(result, "".join(tmp))
    return result

def difference(match1, match2):
    result = []
    elec = complement(match2)
    #print elec
    for i in range(len(elec)):
        t = intersection(match1, elec[i])
        if t:
            result = union_set(result, t)
    return result

def match_generate(bitnum):
    match = []
    for i in range(bitnum):
        r = random.randint(1,3)
        if r == 1:
            match.append('0')
        if r == 2:
            match.append('1')
        if r == 3:
            match.append('x')
    return "".join(match)

def path_generate(path_length, node_set):
    path = []
    i = 0
    while (i < path_length):
        r = random.randint(1, len(node_set))
        if node_set[r-1] not in path:
            path.append(node_set[r-1])
            i += 1
    return path



if __name__ == '__main__':
    bitnum = 8
    flow_num = 5
    node_set = [1, 2, 3, 4, 5]
    pathAllOld = {}
    pathAllNew = {}
    netOld = {}
    netNew = {}
    matchAll = ['100x','101x','110x','001x']
    addRule = []
    pathAllOld['100x'] = [1,2,3,4]
    pathAllNew['100x'] = [1,5,6,4]
    pathAllOld['101x'] = [1,2,3,4]
    pathAllNew['101x'] = [1,2,3,4]
    pathAllOld['110x'] = [1,5,6,4]
    pathAllNew['110x'] = [1,5,6,4]
    pathAllNew['001x'] = [3,4]
    print pathAllOld
    print pathAllNew

    for i in range(6):
        netOld[i+1] = Switch(i+1)
        netNew[i+1] = Switch(i+1)

    for k in pathAllOld.keys():
        pa = pathAllOld[k]
        for i in range(len(pa)-1):
            sc = netOld[pa[i]]
            sc.install_rule(k, pa[i+1])

#    for i in range(6):
#        netOld[i+1].install_rule('xxxx', 0)

    print "Old Configuration:"
    for i in range(6):
        netOld[i+1].get_table()

    for k in pathAllNew.keys():
        pa = pathAllNew[k]
        for i in range(len(pa)-1):
            sc = netNew[pa[i]]
            sc.install_rule(k, pa[i+1])

#    for i in range(6):
#        netNew[i+1].install_rule('xxxx', 0)

    print "New Configuration:"
    for i in range(6):
        lt = netNew[i+1].get_table()
        for i in lt:
            addRule.append(i)


    flow_list = []
    for i in addRule:
        print "switch: %d, match: %s, action: %d" %(i.get_sid(), i.get_match(), i.get_action())
    for r in addRule:
        sw = netOld[r.get_sid()]
        matchnew = [r.get_match()]
        while matchnew:
            mt = matchnew.pop()
            ruleold = sw.get_rule(mt)
            if not ruleold:
                flow_list.append(mt)
            else:
                if ruleold.get_action() != r.get_action():
                    flow_list.append(intersection(mt, ruleold.get_match()))
                matchnew = matchnew + difference(mt, ruleold.get_match())

#    print flow_list
    flow_list = list(set(flow_list))
    print flow_list
    if len(flow_list) > 1:
        i = 0
        j = 1
        while (i < len(flow_list)-1):
            it = intersection(flow_list[i], flow_list[j])
            if it:
                tmp = []
                tmp.append(it)
                a = difference(flow_list[i], it)
                if a:
                    tmp = tmp + a
                b = difference(flow_list[j], it)
                if b:
                    tmp = tmp + b
                del flow_list[j]
                del flow_list[i]
                flow_list = list(set(flow_list+tmp))
                i = 0
                j = 1
            else:
                if j == len(flow_list)-1:
                    i = i+1
                    j = i+1
                else:
                    j = j+1

    print flow_list
    #match2 = match_generate(bitnum)
    #match1 = '100xxxxx'
    #match2 = '10011xxx'
    #print 'match1: %s' % match1
    #print 'match2: %s' % match2
    #print difference(match1, match2)
    #print union_set(difference(match1, match2), match2)
