import fnmatch
import os

if __name__ == '__main__':
    matches = []
    path = "/home/shengliu/Workspace/ovs"
    search = "all_bridges"
    find = []
    for (root, dirnames, filenames) in os.walk(path):
        for filename in fnmatch.filter(filenames, '*.c'):
            matches.append(os.path.join(root, filename))
    for fname in matches:
        with open(fname) as f:
            content = f.readlines()
            for x in content:
                if search in x:
                    if fname not in find:
                        find.append(fname)
    print find
