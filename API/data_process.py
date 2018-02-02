if __name__ == '__main__':
    proto = 0
    retpath = '/home/shengliu/Workspace/mininet/haha/API/result/link_result_%d.txt' %proto
    fp = open(retpath, 'r')
    content = fp.readlines()
    ret_dict = {}
    for x in content:
        if x.split()[3] not in ret_dict.keys():
            ret_dict[x.split()[3]] = [int(x.split()[7])]
        else:
            ret_dict[x.split()[3]].append(int(x.split()[7]))
    for k in ret_dict.keys():
        print k
        print 100 - float(sum(ret_dict[k])) / len(ret_dict[k])

    fp.close()
