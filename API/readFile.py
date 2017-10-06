from util import int2dpid
from readFile import *

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
    print path_read(filepath, K)
