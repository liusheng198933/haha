#!/bin/bash
curl -X POST -d '{ "dpid": 1,"bdid": 6}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 1,"bdid": 6,"table_id": 0,"priority": 2,"match":{ "eth_type":2048,"ipv4_dst":"10.0.0.2/255.255.255.255","ipv4_src":"10.0.0.1/255.255.255.255"},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "PUSH_VLAN","ethertype": 33024}, {"type":"SET_FIELD","field":"vlan_vid","value": 4098},{"type": "OUTPUT","port": 2}]}]}' http://localhost:8080/stats/bundleadd/delete 

curl -X POST -d '{ "dpid": 1,"bdid": 6,"table_id": 0,"priority": 2,"match":{ "eth_type":2048,"ipv4_dst":"10.0.0.2/255.255.255.255","ipv4_src":"10.0.0.1/255.255.255.255"},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "PUSH_VLAN","ethertype": 33024}, {"type":"SET_FIELD","field":"vlan_vid","value": 4101},{"type": "OUTPUT","port": 3}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 1,"bdid": 6,"table_id": 0,"priority": 2,"match":{ "eth_type":2048,"ipv4_dst":"10.0.0.1/255.255.255.255","ipv4_src":"10.0.0.2/255.255.255.255","dl_vlan":4},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "POP_VLAN"}, {"type": "OUTPUT","port": 1}]}]}' http://localhost:8080/stats/bundleadd/delete 

curl -X POST -d '{ "dpid": 1,"bdid": 6,"table_id": 0,"priority": 2,"match":{ "eth_type":2048,"ipv4_dst":"10.0.0.1/255.255.255.255","ipv4_src":"10.0.0.2/255.255.255.255","dl_vlan":5},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "POP_VLAN"}, {"type": "OUTPUT","port": 1}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 1,"bdid": 6}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 3,"bdid": 8}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 3,"bdid": 8,"table_id": 0,"priority": 2,"match":{ "eth_type":2048,"ipv4_dst":"10.0.0.1/255.255.255.255","ipv4_src":"10.0.0.2/255.255.255.255","dl_vlan":4},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type":"SET_FIELD","field":"vlan_vid","value": 4100},{"type": "OUTPUT","port": 1}]}]}' http://localhost:8080/stats/bundleadd/delete 

curl -X POST -d '{ "dpid": 3,"bdid": 8,"table_id": 0,"priority": 2,"match":{ "eth_type":2048,"ipv4_dst":"10.0.0.1/255.255.255.255","ipv4_src":"10.0.0.2/255.255.255.255","dl_vlan":5},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type":"SET_FIELD","field":"vlan_vid","value": 4101},{"type": "OUTPUT","port": 2}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 3,"bdid": 8}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 4,"bdid": 9}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 4,"bdid": 9,"table_id": 0,"priority": 2,"match":{ "eth_type":2048,"ipv4_dst":"10.0.0.2/255.255.255.255","ipv4_src":"10.0.0.1/255.255.255.255","dl_vlan":5},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type":"SET_FIELD","field":"vlan_vid","value": 4098},{"type": "OUTPUT","port": 2}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 4,"bdid": 9,"table_id": 0,"priority": 2,"match":{ "eth_type":2048,"ipv4_dst":"10.0.0.1/255.255.255.255","ipv4_src":"10.0.0.2/255.255.255.255","dl_vlan":5},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type":"SET_FIELD","field":"vlan_vid","value": 4101},{"type": "OUTPUT","port": 1}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 4,"bdid": 9}' http://localhost:8080/stats/bundlectrl/commit 

