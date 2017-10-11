if __name__ == '__main__':
    filepath = '/home/shengliu/Workspace/mininet/haha/API/result.txt'
    fp = open(filepath)
    content = fp.readlines()
    ct = 0
    sent_sum = 0
    recv_sum = 0
    for x in content:
        t = x.strip().split()
        sent_num = int(t[3].strip(','))
        recv_num = int(t[5].strip(','))
        if recv_num > 50:
            sent_sum = sent_sum + sent_num
            recv_sum = recv_sum + recv_num
    print sent_sum
    print float(recv_sum)/sent_sum
