#!/bin/bash
curl -X POST -d '{ "dpid": 33566720,"bdid": 265}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 33566720,"bdid": 265,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.3.2.2","ipv4_src":"10.2.2.4","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 7}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 33566720,"bdid": 265}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 33566720,"bdid": 291}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 33566720,"bdid": 291,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.3.3.4","ipv4_src":"10.2.2.4","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 8}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 33566720,"bdid": 291}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 33566720,"bdid": 330}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 33566720,"bdid": 330,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.3.3.4","ipv4_src":"10.2.0.2","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 8}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 33566720,"bdid": 330}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 33566720,"bdid": 356}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 33566720,"bdid": 356,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.3.2.2","ipv4_src":"10.2.0.2","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 7}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 33566720,"bdid": 356}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 33566720,"bdid": 590}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 33566720,"bdid": 590,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.2.2.4","ipv4_src":"10.3.2.2","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 1}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 33566720,"bdid": 590}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 33566720,"bdid": 746}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 33566720,"bdid": 746,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.2.0.2","ipv4_src":"10.3.2.2","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 1}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 33566720,"bdid": 746}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 33566720,"bdid": 811}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 33566720,"bdid": 811,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.2.2.4","ipv4_src":"10.3.3.4","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 1}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 33566720,"bdid": 811}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 33566720,"bdid": 824}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 33566720,"bdid": 824,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.2.0.2","ipv4_src":"10.3.3.4","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 1}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 33566720,"bdid": 824}' http://localhost:8080/stats/bundlectrl/commit 

