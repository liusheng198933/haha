#!/bin/bash
curl -X POST -d '{ "dpid": 16777224,"bdid": 306}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 16777224,"bdid": 306,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.3.0.1","ipv4_src":"10.0.0.3","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 4}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 16777224,"bdid": 306}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 16777224,"bdid": 372}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 16777224,"bdid": 372,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.4.0.2","ipv4_src":"10.3.0.1","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 5}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 16777224,"bdid": 372}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 16777224,"bdid": 385}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 16777224,"bdid": 385,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.3.0.1","ipv4_src":"10.4.2.3","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 4}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 16777224,"bdid": 385}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 16777224,"bdid": 398}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 16777224,"bdid": 398,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.3.0.1","ipv4_src":"10.7.2.2","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 4}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 16777224,"bdid": 398}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 16777224,"bdid": 410}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 16777224,"bdid": 410,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.2.1.1","ipv4_src":"10.3.0.1","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 3}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 16777224,"bdid": 410}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 16777224,"bdid": 435}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 16777224,"bdid": 435,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.7.2.2","ipv4_src":"10.3.0.1","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 8}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 16777224,"bdid": 435}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 16777224,"bdid": 488}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 16777224,"bdid": 488,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.2.1.3","ipv4_src":"10.3.0.1","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 3}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 16777224,"bdid": 488}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 16777224,"bdid": 502}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 16777224,"bdid": 502,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.4.2.3","ipv4_src":"10.3.0.1","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 5}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 16777224,"bdid": 502}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 16777224,"bdid": 515}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 16777224,"bdid": 515,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.3.0.1","ipv4_src":"10.1.2.4","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 4}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 16777224,"bdid": 515}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 16777224,"bdid": 528}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 16777224,"bdid": 528,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.3.0.1","ipv4_src":"10.4.0.2","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 4}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 16777224,"bdid": 528}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 16777224,"bdid": 554}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 16777224,"bdid": 554,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.3.0.1","ipv4_src":"10.4.3.2","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 4}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 16777224,"bdid": 554}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 16777224,"bdid": 567}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 16777224,"bdid": 567,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.1.2.4","ipv4_src":"10.3.0.1","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 2}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 16777224,"bdid": 567}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 16777224,"bdid": 645}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 16777224,"bdid": 645,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.4.3.2","ipv4_src":"10.3.0.1","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 5}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 16777224,"bdid": 645}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 16777224,"bdid": 709}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 16777224,"bdid": 709,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.3.0.1","ipv4_src":"10.2.1.1","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 4}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 16777224,"bdid": 709}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 16777224,"bdid": 761}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 16777224,"bdid": 761,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.0.0.3","ipv4_src":"10.3.0.1","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 1}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 16777224,"bdid": 761}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 16777224,"bdid": 839}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 16777224,"bdid": 839,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.3.0.1","ipv4_src":"10.2.1.3","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 4}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 16777224,"bdid": 839}' http://localhost:8080/stats/bundlectrl/commit 

