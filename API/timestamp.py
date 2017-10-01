from switch_state import rule

PRTMAX = 100

def setTMP(old_path, new_path, flow, state, clk):
    add_rule = []
    del_rule = []
    sb_set = set(old_path) - set(new_path)
    match = {}
    match['in_port'] = flow['in_port']
    match['ipv4_dst'] = flow['ipv4_dst']
    match['ipv4_src'] = flow['ipv4_src']
    for  i in sb_set:
        add_rule.append(rule(i, match, clk, clk, -1, 0, PRTMAX))
