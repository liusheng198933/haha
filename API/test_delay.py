from test_main import delay_generate

if __name__ == '__main__':
    rule_set = {}
    rule_set['1'] = 1
    rule_set['2'] = 2

    t = 0
    c = 0
    while t < 10000:
        delay_list = delay_generate(rule_set)
        if delay_list['2'] - delay_list['1'] < 0:
            c = c + delay_list['2'] - delay_list['1']
        t = t + 1
    print c
    print float(c)/t
