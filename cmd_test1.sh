#!/bin/bash
curl -X DELETE http://localhost:8080/stats/flowentry/clear/1 

curl -X DELETE http://localhost:8080/stats/flowentry/clear/2 

curl -X DELETE http://localhost:8080/stats/flowentry/clear/3 

curl -X DELETE http://localhost:8080/stats/flowentry/clear/4 

curl -X DELETE http://localhost:8080/stats/flowentry/clear/5 

curl -X POST -d '{ "dpid": 1,"table_id": 0,"priority": 1,"match":{ "eth_type":2054,"in_port":1},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "OUTPUT","port": 2}]}]}' http://localhost:8080/stats/flowentry/add 

curl -X POST -d '{ "dpid": 1,"table_id": 0,"priority": 1,"match":{ "eth_type":2054,"in_port":2},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "OUTPUT","port": 1}]}]}' http://localhost:8080/stats/flowentry/add 

curl -X POST -d '{ "dpid": 2,"table_id": 0,"priority": 1,"match":{ "eth_type":2054},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "OUTPUT","port": "FLOOD"}]}]}' http://localhost:8080/stats/flowentry/add 

curl -X POST -d '{ "dpid": 3,"table_id": 0,"priority": 1,"match":{ "eth_type":2054},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "OUTPUT","port": "FLOOD"}]}]}' http://localhost:8080/stats/flowentry/add 

curl -X POST -d '{ "dpid": 4,"table_id": 0,"priority": 1,"match":{ "eth_type":2054},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "OUTPUT","port": 2}]}]}' http://localhost:8080/stats/flowentry/add 

curl -X POST -d '{ "dpid": 5,"table_id": 0,"priority": 1,"match":{ "eth_type":2054},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "OUTPUT","port": "FLOOD"}]}]}' http://localhost:8080/stats/flowentry/add 

curl -X POST -d '{ "dpid": 6,"table_id": 0,"priority": 1,"match":{ "eth_type":2054},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "OUTPUT","port": "FLOOD"}]}]}' http://localhost:8080/stats/flowentry/add 

curl -X POST -d '{ "dpid": 6,"bdid": 11}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 6,"bdid": 11,"table_id": 0,"priority": 2,"match":{ "eth_type":2048,"ipv4_dst":"10.0.0.1/255.255.255.255","ipv4_src":"10.0.0.2/255.255.255.255","dl_vlan":4},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "POP_VLAN"}, {"type": "OUTPUT","port": 1}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 6,"bdid": 11,"table_id": 0,"priority": 2,"match":{ "eth_type":2048,"ipv4_dst":"10.0.0.2/255.255.255.255","ipv4_src":"10.0.0.1/255.255.255.255"},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "PUSH_VLAN","ethertype": 33024}, {"type":"SET_FIELD","field":"vlan_vid","value": 4098},{"type": "OUTPUT","port": 2}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 6,"bdid": 11}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 1,"bdid": 1}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 1,"bdid": 1,"table_id": 0,"priority": 2,"match":{ "eth_type":2048,"ipv4_dst":"10.0.0.2/255.255.255.255","ipv4_src":"10.0.0.1/255.255.255.255","dl_vlan":2},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type":"SET_FIELD","field":"vlan_vid","value": 4098},{"type": "OUTPUT","port": 2}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 1,"bdid": 1,"table_id": 0,"priority": 2,"match":{ "eth_type":2048,"ipv4_dst":"10.0.0.1/255.255.255.255","ipv4_src":"10.0.0.2/255.255.255.255","dl_vlan":4},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type":"SET_FIELD","field":"vlan_vid","value": 4100},{"type": "OUTPUT","port": 1}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 1,"bdid": 1}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 2,"bdid": 2}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 2,"bdid": 2,"table_id": 0,"priority": 2,"match":{ "eth_type":2048,"ipv4_dst":"10.0.0.2/255.255.255.255","ipv4_src":"10.0.0.1/255.255.255.255","dl_vlan":3},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type":"SET_FIELD","field":"vlan_vid","value": 4098},{"type": "OUTPUT","port": 2}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 2,"bdid": 2,"table_id": 0,"priority": 2,"match":{ "eth_type":2048,"ipv4_dst":"10.0.0.2/255.255.255.255","ipv4_src":"10.0.0.1/255.255.255.255","dl_vlan":3},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type":"SET_FIELD","field":"vlan_vid","value": 4098},{"type": "OUTPUT","port": 2}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 2,"bdid": 2,"table_id": 0,"priority": 1,"match":{ "eth_type":2048,"ipv4_dst":"10.0.0.2/255.255.255.255","ipv4_src":"10.0.0.1/255.255.255.255","dl_vlan":1},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type":"SET_FIELD","field":"vlan_vid","value": 4097},{"type": "OUTPUT","port": 0}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 2,"bdid": 2,"table_id": 0,"priority": 1,"match":{ "eth_type":2048,"ipv4_dst":"10.0.0.1/255.255.255.255","ipv4_src":"10.0.0.2/255.255.255.255","dl_vlan":1},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type":"SET_FIELD","field":"vlan_vid","value": 4097},{"type": "OUTPUT","port": 0}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 2,"bdid": 2}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 3,"bdid": 3}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 3,"bdid": 3,"table_id": 0,"priority": 2,"match":{ "eth_type":2048,"ipv4_dst":"10.0.0.2/255.255.255.255","ipv4_src":"10.0.0.1/255.255.255.255","dl_vlan":2},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type":"SET_FIELD","field":"vlan_vid","value": 4100},{"type": "OUTPUT","port": 3}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 3,"bdid": 3,"table_id": 0,"priority": 2,"match":{ "eth_type":2048,"ipv4_dst":"10.0.0.1/255.255.255.255","ipv4_src":"10.0.0.2/255.255.255.255","dl_vlan":4},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type":"SET_FIELD","field":"vlan_vid","value": 4100},{"type": "OUTPUT","port": 1}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 3,"bdid": 3}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 5,"bdid": 5}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 5,"bdid": 5,"table_id": 0,"priority": 2,"match":{ "eth_type":2048,"ipv4_dst":"10.0.0.2/255.255.255.255","ipv4_src":"10.0.0.1/255.255.255.255","dl_vlan":4},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "POP_VLAN"}, {"type": "OUTPUT","port": 2}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 5,"bdid": 5,"table_id": 0,"priority": 2,"match":{ "eth_type":2048,"ipv4_dst":"10.0.0.1/255.255.255.255","ipv4_src":"10.0.0.2/255.255.255.255"},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "PUSH_VLAN","ethertype": 33024}, {"type":"SET_FIELD","field":"vlan_vid","value": 4100},{"type": "OUTPUT","port": 1}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 5,"bdid": 5}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 2,"bdid": 7}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 2,"bdid": 7,"table_id": 0,"priority": 2,"match":{ "eth_type":2048,"ipv4_dst":"10.0.0.2/255.255.255.255","ipv4_src":"10.0.0.1/255.255.255.255","dl_vlan":3},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type":"SET_FIELD","field":"vlan_vid","value": 4098},{"type": "OUTPUT","port": 2}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 2,"bdid": 7,"table_id": 0,"priority": 2,"match":{ "eth_type":2048,"ipv4_dst":"10.0.0.2/255.255.255.255","ipv4_src":"10.0.0.1/255.255.255.255","dl_vlan":5},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type":"SET_FIELD","field":"vlan_vid","value": 4101},{"type": "OUTPUT","port": "in_port"}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 2,"bdid": 7,"table_id": 0,"priority": 2,"match":{ "eth_type":2048,"ipv4_dst":"10.0.0.1/255.255.255.255","ipv4_src":"10.0.0.2/255.255.255.255","dl_vlan":4},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type":"SET_FIELD","field":"vlan_vid","value": 4100},{"type": "OUTPUT","port": 1}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 2,"bdid": 7,"table_id": 0,"priority": 2,"match":{ "eth_type":2048,"ipv4_dst":"10.0.0.1/255.255.255.255","ipv4_src":"10.0.0.2/255.255.255.255","dl_vlan":5},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type":"SET_FIELD","field":"vlan_vid","value": 4101},{"type": "OUTPUT","port": "in_port"}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 2,"bdid": 7}' http://localhost:8080/stats/bundlectrl/commit 

