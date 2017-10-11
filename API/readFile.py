from util import *


def path_read(filepath, K):
    # return list of old path, new path and its corresponding flow (ip_src and ip_dst)
    with open(filepath, 'r') as f:
        content = f.readlines()
        rmchars = '\"\'<>(),'
        old_path_list = []
        new_path_list = []
        flow_list = []
        for x in content:
            old_path_dic = {}
            old_path_dic['path'] = []
            old_path_dic['out_port'] = []
            old_path_dic['in_port'] = []
            new_path_dic = {}
            new_path_dic['path'] = []
            new_path_dic['out_port'] = []
            new_path_dic['in_port'] = []
            flow = {}
            ret = x.strip().split()[1:]
            if len(ret) != 30 and len(ret) != 18:
                print ret
                print len(ret)
                print x

            for i in range(len(ret)):
                t = ret[i].strip(rmchars)
                if i < len(ret)/2:
                    if i%3 == 0:
                        old_path_dic['path'].append(switch_id_parse(t, K))
                    if i%3 == 1:
                        old_path_dic['in_port'].append(int(t))
                    if i%3 == 2:
                        old_path_dic['out_port'].append(int(t))
                if i >= len(ret)/2:
                    if i%3 == 0:
                        new_path_dic['path'].append(switch_id_parse(t, K))
                    if i%3 == 1:
                        new_path_dic['in_port'].append(int(t))
                    if i%3 == 2:
                        new_path_dic['out_port'].append(int(t))
            old_path_list.append(old_path_dic)
            new_path_list.append(new_path_dic)
            flow['ipv4_src'] = get_host_IP(old_path_dic['in_port'][0], old_path_dic['path'][0], K)
            flow['ipv4_dst'] = get_host_IP(old_path_dic['out_port'][len(old_path_dic['out_port'])-1], old_path_dic['path'][len(old_path_dic['path'])-1], K)
            flow_list.append(flow)

        return {'old_path': old_path_list, 'new_path': new_path_list, 'flow': flow_list}


def get_host_IP(port_ID, dpid, K):
    if dpid[0] != '3':
        return False
    podNum = int(dpid[1:4], 16)
    swNum = int(dpid[4:7], 16)
    return '10.%d.%d.%d' %(podNum, swNum, port_ID-K/2)


def switch_id_parse(sw_str, K):
    if sw_str.startswith('edge'):
        x = int(sw_str[4:])
        podNum = x/(K/2)
        swNum = x%(K/2)
        return int2dpid(3, swNum, podNum)
    if sw_str.startswith('aggr'):
        x = int(sw_str[4:])
        podNum = x/(K/2)
        swNum = x%(K/2)
        return int2dpid(2, swNum, podNum)
    if sw_str.startswith('root'):
        swNum = int(sw_str[4:])
        return int2dpid(1, swNum)




if __name__ == '__main__':
    filepath = '/home/shengliu/Workspace/mininet/haha/API/flow_update.tsv'
    K = 4
    path_list = path_read(filepath, K)
    flow_list = {}
    line_num = []
    #print path_list
    ct = 0
    for j in range(len(path_list['flow'])):
        i = path_list['flow'][j]
        f = match_parse(i)
        f_reverse = match_parse(reverse_flow(i))
        if f not in flow_list.keys() and f_reverse not in flow_list.keys():
            flow_list[f] = path_list['new_path'][j]['path']
            line_num.append(j)
            #flow_list[x1].append(path_list['new_path'])
        else:
            if f in flow_list.keys():
                y = f
            else:
                if f_reverse in flow_list.keys():
                    y = f_reverse
            if flow_list[y] != path_list['old_path'][j]['path']:
                if y == match_parse(path_list['flow'][0]) or y == match_parse(reverse_flow(path_list['flow'][0])):
                    #print i
                #print
                    print "cao"
                    print j
                #print flow_list[y]
                #print path_list['old_path'][j]['path']
                ct = ct + 1
            else:
                flow_list[y] = path_list['new_path'][j]['path']
                if y == match_parse(path_list['flow'][0]) or y == match_parse(reverse_flow(path_list['flow'][0])):
                    #print i
                #print
                    print j

    print ct
    print len(flow_list.keys())
    #print len(flow_list)
    #print flow_list
    #for i in flow_list:
    #    if i.reverse in flow_list:
    #        print i
