import matplotlib.pyplot as plt


if __name__ == '__main__':
    filepath = "/home/shengliu/Workspace/mininet/haha/API/time/debug.txt"
    fp = open(filepath, 'r')
    cxt = fp.readlines()
    bid_list = {}
    time_point = {}
    time_point[0] = 80 + 32 + 5 * 50
    rule_num = time_point[0]
    for ln in cxt:
        if 'bundle add' in ln:
            bid = int(ln.split()[3])
            cmd = int(ln.split()[5])
            if cmd == 0:
                if bid not in bid_list.keys():
                    bid_list[bid] = 1
                else:
                    bid_list[bid] = bid_list[bid] + 1
            if cmd == 4:
                if bid not in bid_list.keys():
                    bid_list[bid] = -1
                else:
                    bid_list[bid] = bid_list[bid] - 1

    ct = 0
    for ln in cxt:
        if ln.startswith('begin time'):
            sec = float(ln.split()[2])
            micro = float(ln.split()[3])
            basic_time = sec + micro/1000000
        if 'rules commit' in ln:
            sec = float(ln.split()[5])
            micro = float(ln.split()[6])
            bid = int(ln.split()[1])
            cur_time = sec + micro/1000000 - basic_time
            if bid not in bid_list:
                print bid
            else:
                if cur_time > 0:
                    time_point[cur_time] = bid_list[bid]
                else:
                    ct = ct + 1

    print ct
    x_list = []
    y_list = []
    for i in time_point.keys():
        x_list.append(i)
    x_list.sort()
    for i in x_list:
        rule_num = rule_num + time_point[i]
        y_list.append(rule_num)
    print max(x_list)
    print max(y_list)
    plt.plot(x_list, y_list, 'ro')
    plt.show()
