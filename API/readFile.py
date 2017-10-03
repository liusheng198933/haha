23.000000	<edge6 (3, 1), aggr6 (3, 2), root1 (4, 3), aggr4 (2, 3), edge4 (1, 3)>	<edge6 (3, 1), aggr6 (3, 1), root0 (4, 3), aggr4 (1, 3), edge4 (1, 3)>
def path_read(filepath):
    with open(filepath) as f:
        content = f.readlines()
        for x in content:
            ret = x.strip().split()
