def ip_parse(ip):
    ip_str = []
    ip_ret = ip.strip("\'\"")
    if "/" in ip:
        ip_addr = ip_ret.split('/')[0]
        ip_mask = ip_ret.split('/')[1]
    else:
        ip_addr = ip_ret
        ip_mask = 0
    if ip_mask:
        for i in range(4):
            bnum = '{:b}'.format(int(ip_addr.split('.')[i])).zfill(8)
            bmask = '{:b}'.format(int(ip_mask.split('.')[i])).zfill(8)
            bret = []
            for j in range(8):
                if bmask[j] == '0':
                    bret.append('x')
                else:
                    bret.append(bnum[j])
            ip_str = ip_str + bret
    else:
        for i in ip_addr.split('.'):
            bnum = '{:b}'.format(int(i)).zfill(8)
            ip_str.append(bnum)
    return "".join(ip_str)

def ip_reverse(ip_str):
    ip = []
    ip_mask = []
    for i in range(4):
        num = ip_str[i*8:i*8+8]
        bnum = []
        bmask = []
        for j in range(8):
            if num[j] == 'x':
                bmask.append('0')
                bnum.append('0')
            else:
                bmask.append('1')
                bnum.append(num[j])
        ip.append(str(int("".join(bnum), 2)))
        ip.append('.')
        ip_mask.append(str(int("".join(bmask), 2)))
        ip_mask.append('.')
    ip.pop()
    ip_mask.pop()
    return "".join(ip) + '/' + "".join(ip_mask)


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
    print ip_parse("10.0.0.1/255.255.255.254")
