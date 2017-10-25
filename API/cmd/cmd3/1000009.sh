#!/bin/bash
curl -X POST -d '{ "dpid": 16777225,"bdid": 316}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 16777225,"bdid": 316,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.3.0.1","ipv4_src":"10.0.0.3","dl_vlan":5},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4101},{"type": "OUTPUT","port": 4}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 16777225,"bdid": 316}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 16777225,"bdid": 381}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 16777225,"bdid": 381,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.4.0.2","ipv4_src":"10.3.0.1","dl_vlan":5},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4101},{"type": "OUTPUT","port": 5}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 16777225,"bdid": 381}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 16777225,"bdid": 394}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 16777225,"bdid": 394,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.3.0.1","ipv4_src":"10.4.2.3","dl_vlan":5},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4101},{"type": "OUTPUT","port": 4}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 16777225,"bdid": 394}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 16777225,"bdid": 407}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 16777225,"bdid": 407,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.3.0.1","ipv4_src":"10.7.2.2","dl_vlan":5},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4101},{"type": "OUTPUT","port": 4}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 16777225,"bdid": 407}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 16777225,"bdid": 420}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 16777225,"bdid": 420,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.2.1.1","ipv4_src":"10.3.0.1","dl_vlan":5},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4101},{"type": "OUTPUT","port": 3}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 16777225,"bdid": 420}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 16777225,"bdid": 446}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 16777225,"bdid": 446,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.7.2.2","ipv4_src":"10.3.0.1","dl_vlan":5},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4101},{"type": "OUTPUT","port": 8}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 16777225,"bdid": 446}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 16777225,"bdid": 498}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 16777225,"bdid": 498,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.2.1.3","ipv4_src":"10.3.0.1","dl_vlan":5},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4101},{"type": "OUTPUT","port": 3}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 16777225,"bdid": 498}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 16777225,"bdid": 511}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 16777225,"bdid": 511,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.4.2.3","ipv4_src":"10.3.0.1","dl_vlan":5},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4101},{"type": "OUTPUT","port": 5}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 16777225,"bdid": 511}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 16777225,"bdid": 524}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 16777225,"bdid": 524,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.3.0.1","ipv4_src":"10.1.2.4","dl_vlan":5},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4101},{"type": "OUTPUT","port": 4}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 16777225,"bdid": 524}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 16777225,"bdid": 537}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 16777225,"bdid": 537,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.3.0.1","ipv4_src":"10.4.0.2","dl_vlan":5},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4101},{"type": "OUTPUT","port": 4}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 16777225,"bdid": 537}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 16777225,"bdid": 563}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 16777225,"bdid": 563,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.3.0.1","ipv4_src":"10.4.3.2","dl_vlan":5},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4101},{"type": "OUTPUT","port": 4}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 16777225,"bdid": 563}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 16777225,"bdid": 576}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 16777225,"bdid": 576,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.1.2.4","ipv4_src":"10.3.0.1","dl_vlan":5},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4101},{"type": "OUTPUT","port": 2}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 16777225,"bdid": 576}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 16777225,"bdid": 654}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 16777225,"bdid": 654,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.4.3.2","ipv4_src":"10.3.0.1","dl_vlan":5},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4101},{"type": "OUTPUT","port": 5}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 16777225,"bdid": 654}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 16777225,"bdid": 693}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 16777225,"bdid": 693,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.7.2.2","ipv4_src":"10.4.0.1","dl_vlan":5},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4101},{"type": "OUTPUT","port": 8}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 16777225,"bdid": 693}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 16777225,"bdid": 719}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 16777225,"bdid": 719,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.3.0.1","ipv4_src":"10.2.1.1","dl_vlan":5},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4101},{"type": "OUTPUT","port": 4}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 16777225,"bdid": 719}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 16777225,"bdid": 771}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 16777225,"bdid": 771,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.0.0.3","ipv4_src":"10.3.0.1","dl_vlan":5},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4101},{"type": "OUTPUT","port": 1}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 16777225,"bdid": 771}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 16777225,"bdid": 810}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 16777225,"bdid": 810,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.4.0.1","ipv4_src":"10.7.2.2","dl_vlan":5},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4101},{"type": "OUTPUT","port": 5}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 16777225,"bdid": 810}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 16777225,"bdid": 849}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 16777225,"bdid": 849,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.3.0.1","ipv4_src":"10.2.1.3","dl_vlan":5},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4101},{"type": "OUTPUT","port": 4}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 16777225,"bdid": 849}' http://localhost:8080/stats/bundlectrl/commit 

