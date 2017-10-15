from test_main import delay_generate

if __name__ == '__main__':
    rule_set = {}
    rule_set['1'] = 1
    rule_set['2'] = 2
    rule_set['3'] = 3
    rule_set['4'] = 4

    rule_set2 = {}
    rule_set2['1'] = 1
    rule_set2['2'] = 2
    rule_set2['3'] = 3
    rule_set2['4'] = 4
    rule_set2['5'] = 5


    print delay_generate(rule_set)
    
    c = 0
    for t in range(100000):
        delay_list = delay_generate(rule_set)
        ls = []
        for i in delay_list.keys():
            ls.append(delay_list[i])
        c = c + max(ls)
    print float(c)/100000


    c = 0
    for t in range(100000):
        delay_list = delay_generate(rule_set2)
        ls = []
        for i in delay_list.keys():
            ls.append(delay_list[i])
        c = c + max(ls)
    print float(c)/100000
