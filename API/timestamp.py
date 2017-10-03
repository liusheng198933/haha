from switch_state import rule, net, table
from util import *

PRTMAX = 100

def setTMP(old_path, new_path, flow, new_state, old_state, rule_set, clk):
    if old_path:
        i = 0
        while old_path[i] in new_path:
            i = i + 1
        inter_node = old_path[i-1]
    else:
        inter_node = new_path[0]

    table_id = 0
    match = {}
    match['ipv4_dst'] = flow['ipv4_dst']
    match['ipv4_src'] = flow['ipv4_src']
    match["eth_type"] = 2048
    for i in (set(old_path) - set(new_path)):
        if i not in rule_set.keys():
            rule_set[i] = {}
        rule_set[i]['add'].append(rule(i, match, clk, clk, -1, table_id, PRTMAX))

    for i in range(len(new_path)-1):
        if rule_set[new_path[i]]['add']:
            for r in rule_set[new_path[i]]['add']:
                tb_cur = new_state.get_table(new_path[i], table_id)
                tb_next = new_state.get_table(new_path[i+1], table_id)
                r_exact = r.get_exact_match(tb_cur)
                rule_inf = []
                ttmp_list = []
                for t in tb_next.get_all_rules():
                    tmp = []
                    for j in r_exact:
                        if intersection(t.get_match_bin(), j):
                            rule_inf.append(t)
                            ttmp_list.append(t.get_rtmp())
                        tmp = tmp + difference(j, t.get_match_bin())
                    r_exact = tmp

                if max(ttmp_list) == clk:
                    r.set_ttmp(clk)
                    for j in range(len(ttmp_list)):
                        if ttmp_list[j] < clk:
                            rule_set[new_path[i+1]]['del'].append(rule(new_path[i+1], rule_inf[j].get_match(), rule_inf[j].get_rtmp(), rule_inf[j].get_ttmp(), rule_inf[j].get_action(), table_id, rule_inf[j].get_prt()))
                            rule_set[new_path[i+1]]['add'].append(rule(new_path[i+1], rule_inf[j].get_match(), clk, rule_inf[j].get_ttmp(), rule_inf[j].get_action(), table_id, rule_inf[j].get_prt()))
                else:
                    r.set_ttmp(min(ttmp_list))

                    """
                    if i+2 < len(new_path)-2:
                        next = old_state.get_table(new_path[k], table_id).get_rule(flow).get_action()
                        while next in new_path[k+1:len(new_path)-1]:
                            next = old_state.get_table(next, table_id).get_rule(flow).get_action()
                        if next != new_path[len(new_path)]:
                            for j in range(inter_node, i):
                                x = new_state.get_table(new_path[j], table_id).get_rule(flow)
                                if x.get_rtmp() < clk:
                                    rule_set[new_path[j]]['del'].append(rule(new_path[j], x.get_match(), x.get_rtmp(), x.get_ttmp(), x.get_action(), table_id, x.get_prt()))
                                    rule_set[new_path[j]]['add'].append(rule(new_path[j], x.get_match(), clk, clk, x.get_action(), table_id, x.get_prt()))
                        else:
                            r.set_ttmp(min(ttmp_list))
                    """


def sb_rule_construct(old_path, new_path, flow, clk):
    sb_set = []
    match = {}
    match['ipv4_dst'] = flow['ipv4_dst']
    match['ipv4_src'] = flow['ipv4_src']
    match["eth_type"] = 2048
    table_id = 0
    for i in (set(old_path) - set(new_path)):
        sb_set.append(rule(i, match, clk, clk, -1, table_id, PRTMAX))
    return sb_set

def rule_construct(old_path, new_path, flow, state, prt, out_port):
    rule_set = {}
    table_id = 0
    match = {}
    match['ipv4_dst'] = flow['ipv4_dst']
    match['ipv4_src'] = flow['ipv4_src']
    match["eth_type"] = 2048

    intersect_set = []
    for i in range(len(old_path)-1):
        if (old_path[i] in new_path) and (old_path[i+1] not in new_path):
            intersect_set.append(old_path[i])

    for i in intersect_set:
        rule_set[i] = {}
        rule_set[i]['add'] = []
        rule_set[i]['del'] = []
        rext = state.get_table(i, table_id).get_rule(flow)
        if rext.get_prt() == prt:
            df = difference(rext.get_match_bin(), match_parse(flow))
            if df:
                for j in df:
                    rule_set[i]['add'].append(rule(i, match_reverse(j), rext.get_rtmp(), rext.get_ttmp(), rext.get_action(), table_id, prt))
            rule_set[i]['del'].append(rule(i, rext.get_match(), rext.get_rtmp(), rext.get_ttmp(), rext.get_action(), table_id, prt))
        rule_set[i]['add'].append(rule(i, match, clk, 0, out_port[i], table_id, prt))


    for i in (set(new_path) - set(old_path)):
        rule_set[i] = {}
        rule_set[i]['add'] = []
        rule_set[i]['del'] = []
        rule_set[i]['add'].append(rule(i, match, clk, 0, out_port[i], table_id, prt))

    for i in (set(old_path) - set(new_path)):
        rext = state.get_table(i, table_id).get_rule(flow)
        if rext.get_prt() == prt:
            rule_set[i] = {}
            rule_set[i]['add'] = []
            rule_set[i]['del'] = []
            df = difference(rext.get_match_bin(), match_parse(flow))
            if df:
                for j in df:
                    rule_set[i]['add'].append(rule(i, match_reverse(j), rext.get_rtmp(), rext.get_ttmp(), rext.get_action(), table_id, prt))
            rule_set[i]['del'].append(rule(i, rext.get_match(), rext.get_rtmp(), rext.get_ttmp(), rext.get_action(), table_id, prt))

    return rule_set

def state_update(rule_set, state, clk):
    table_id = 0
    for i in rule_set.keys():
        tb = state.get_table(i, table_id)
        for r in rule_set[i]['del']:
            tb.del_rule(r.get_match(), r.get_prt())
        for r in rule_set[i]['add']:
            tb.add_rule(r.get_match(), r.get_rtmp(), r.get_ttmp(), r.get_action(), r.get_prt())

if __name__ == '__main__':
    n = net()
    n.add_table(1,0)
    n.add_table(2,0)
    n.add_table(3,0)
    n.add_table(4,0)

    nnext = net()
    nnext.add_table(1,0)
    nnext.add_table(2,0)
    nnext.add_table(3,0)
    nnext.add_table(4,0)

    match = {}
    match["ipv4_src"] = "10.0.0.1/255.255.255.255"
    match["ipv4_dst"] = "10.0.0.2/255.255.255.255"
    match["eth_type"] = 2048

    flow = {}
    flow["ipv4_src"] = "10.0.0.1/255.255.255.255"
    flow["ipv4_dst"] = "10.0.0.2/255.255.255.255"
    flow["eth_type"] = 2048

    prt = 2

    n.get_table(1, 0).add_rule(match, 1, 2, 2, prt)
    n.get_table(2, 0).add_rule(match, 2, 4, 3, prt)
    n.get_table(4, 0).add_rule(match, 4, 5, 6, prt)

    nnext.get_table(1, 0).add_rule(match, 1, 2, 2, prt)
    nnext.get_table(2, 0).add_rule(match, 2, 4, 3, prt)
    nnext.get_table(4, 0).add_rule(match, 4, 5, 6, prt)


    old_path = [1, 2, 4]
    print "\nold state:"
    for i in old_path:
        n.get_table(i, 0).print_table()

    new_path = [1, 3, 4]
    out_port = {}
    out_port[1] = 3
    out_port[3] = 4
    out_port[4] = 6

    clk = 8

    print "\nrule construct:"
    rset = rule_construct(old_path, new_path, flow, n, prt, out_port)
    for i in rset.keys():
        print "add rule:"
        for j in rset[i]['add']:
            j.print_rule()

        print "del rule:"
        for j in rset[i]['del']:
            j.print_rule()

    sset = sb_rule_construct(old_path, new_path, flow, clk)
    print "\nsend back rules:"
    for i in sset:
        i.print_rule()

    print "\nstate update:"
    state_update(rset, nnext, clk)
    for i in new_path:
        n.get_table(i, 0).print_table()
    for i in old_path:
        n.get_table(i, 0).print_table()

    setTMP(old_path, new_path, flow, nnext, n, rset, clk)
    print "\nafter setTMP:"
    for i in rset.keys():
        print "add rule:"
        for j in rset[i]['add']:
            j.print_rule()

        print "del rule:"
        for j in rset[i]['del']:
            j.print_rule()
