#!/bin/bash
curl -X POST -d '{ "dpid": 16777216,"bdid": 259}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 16777216,"bdid": 259,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.7.1.2","ipv4_src":"10.2.2.4","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 8}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 16777216,"bdid": 259,"table_id": 0,"priority": 9,"match":{ "eth_type":2048,"ipv4_dst":"10.7.1.2","ipv4_src":"10.2.2.4","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 8}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 16777216,"bdid": 259}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 16777216,"bdid": 271}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 16777216,"bdid": 271,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.3.2.2","ipv4_src":"10.2.2.4","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 4}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 16777216,"bdid": 271,"table_id": 0,"priority": 9,"match":{ "eth_type":2048,"ipv4_dst":"10.3.2.2","ipv4_src":"10.2.2.4","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 4}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 16777216,"bdid": 271}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 16777216,"bdid": 285}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 16777216,"bdid": 285,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.2.2.4","ipv4_src":"10.7.2.2","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 3}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 16777216,"bdid": 285,"table_id": 0,"priority": 9,"match":{ "eth_type":2048,"ipv4_dst":"10.2.2.4","ipv4_src":"10.7.2.2","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 3}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 16777216,"bdid": 285}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 16777216,"bdid": 298}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 16777216,"bdid": 298,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.3.3.4","ipv4_src":"10.2.2.4","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 4}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 16777216,"bdid": 298,"table_id": 0,"priority": 9,"match":{ "eth_type":2048,"ipv4_dst":"10.3.3.4","ipv4_src":"10.2.2.4","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 4}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 16777216,"bdid": 298}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 16777216,"bdid": 323}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 16777216,"bdid": 323,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.2.0.2","ipv4_src":"10.7.2.2","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 3}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 16777216,"bdid": 323,"table_id": 0,"priority": 9,"match":{ "eth_type":2048,"ipv4_dst":"10.2.0.2","ipv4_src":"10.7.2.2","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 3}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 16777216,"bdid": 323}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 16777216,"bdid": 337}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 16777216,"bdid": 337,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.3.3.4","ipv4_src":"10.2.0.2","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 4}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 16777216,"bdid": 337,"table_id": 0,"priority": 9,"match":{ "eth_type":2048,"ipv4_dst":"10.3.3.4","ipv4_src":"10.2.0.2","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 4}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 16777216,"bdid": 337}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 16777216,"bdid": 349}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 16777216,"bdid": 349,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.6.2.4","ipv4_src":"10.2.0.2","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 7}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 16777216,"bdid": 349,"table_id": 0,"priority": 9,"match":{ "eth_type":2048,"ipv4_dst":"10.6.2.4","ipv4_src":"10.2.0.2","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 7}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 16777216,"bdid": 349}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 16777216,"bdid": 362}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 16777216,"bdid": 362,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.3.2.2","ipv4_src":"10.2.0.2","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 4}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 16777216,"bdid": 362,"table_id": 0,"priority": 9,"match":{ "eth_type":2048,"ipv4_dst":"10.3.2.2","ipv4_src":"10.2.0.2","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 4}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 16777216,"bdid": 362}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 16777216,"bdid": 428}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 16777216,"bdid": 428,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.2.2.4","ipv4_src":"10.7.0.3","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 3}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 16777216,"bdid": 428,"table_id": 0,"priority": 9,"match":{ "eth_type":2048,"ipv4_dst":"10.2.2.4","ipv4_src":"10.7.0.3","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 3}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 16777216,"bdid": 428}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 16777216,"bdid": 454}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 16777216,"bdid": 454,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.7.1.2","ipv4_src":"10.2.0.2","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 8}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 16777216,"bdid": 454,"table_id": 0,"priority": 9,"match":{ "eth_type":2048,"ipv4_dst":"10.7.1.2","ipv4_src":"10.2.0.2","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 8}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 16777216,"bdid": 454}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 16777216,"bdid": 466}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 16777216,"bdid": 466,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.7.2.2","ipv4_src":"10.2.0.2","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 8}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 16777216,"bdid": 466,"table_id": 0,"priority": 9,"match":{ "eth_type":2048,"ipv4_dst":"10.7.2.2","ipv4_src":"10.2.0.2","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 8}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 16777216,"bdid": 466}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 16777216,"bdid": 479}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 16777216,"bdid": 479,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.5.2.2","ipv4_src":"10.2.2.4","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 6}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 16777216,"bdid": 479,"table_id": 0,"priority": 9,"match":{ "eth_type":2048,"ipv4_dst":"10.5.2.2","ipv4_src":"10.2.2.4","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 6}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 16777216,"bdid": 479}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 16777216,"bdid": 544}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 16777216,"bdid": 544,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.7.2.2","ipv4_src":"10.2.2.4","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 8}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 16777216,"bdid": 544,"table_id": 0,"priority": 9,"match":{ "eth_type":2048,"ipv4_dst":"10.7.2.2","ipv4_src":"10.2.2.4","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 8}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 16777216,"bdid": 544}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 16777216,"bdid": 584}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 16777216,"bdid": 584,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.7.0.3","ipv4_src":"10.2.0.2","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 8}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 16777216,"bdid": 584,"table_id": 0,"priority": 9,"match":{ "eth_type":2048,"ipv4_dst":"10.7.0.3","ipv4_src":"10.2.0.2","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 8}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 16777216,"bdid": 584}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 16777216,"bdid": 597}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 16777216,"bdid": 597,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.2.2.4","ipv4_src":"10.3.2.2","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 3}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 16777216,"bdid": 597,"table_id": 0,"priority": 9,"match":{ "eth_type":2048,"ipv4_dst":"10.2.2.4","ipv4_src":"10.3.2.2","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 3}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 16777216,"bdid": 597}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 16777216,"bdid": 609}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 16777216,"bdid": 609,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.2.2.4","ipv4_src":"10.6.2.4","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 3}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 16777216,"bdid": 609,"table_id": 0,"priority": 9,"match":{ "eth_type":2048,"ipv4_dst":"10.2.2.4","ipv4_src":"10.6.2.4","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 3}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 16777216,"bdid": 609}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 16777216,"bdid": 623}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 16777216,"bdid": 623,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.2.2.4","ipv4_src":"10.7.1.2","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 3}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 16777216,"bdid": 623,"table_id": 0,"priority": 9,"match":{ "eth_type":2048,"ipv4_dst":"10.2.2.4","ipv4_src":"10.7.1.2","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 3}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 16777216,"bdid": 623}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 16777216,"bdid": 635}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 16777216,"bdid": 635,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.2.0.2","ipv4_src":"10.7.0.3","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 3}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 16777216,"bdid": 635,"table_id": 0,"priority": 9,"match":{ "eth_type":2048,"ipv4_dst":"10.2.0.2","ipv4_src":"10.7.0.3","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 3}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 16777216,"bdid": 635}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 16777216,"bdid": 661}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 16777216,"bdid": 661,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.2.0.2","ipv4_src":"10.5.2.2","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 3}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 16777216,"bdid": 661,"table_id": 0,"priority": 9,"match":{ "eth_type":2048,"ipv4_dst":"10.2.0.2","ipv4_src":"10.5.2.2","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 3}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 16777216,"bdid": 661}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 16777216,"bdid": 674}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 16777216,"bdid": 674,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.2.0.2","ipv4_src":"10.7.1.2","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 3}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 16777216,"bdid": 674,"table_id": 0,"priority": 9,"match":{ "eth_type":2048,"ipv4_dst":"10.2.0.2","ipv4_src":"10.7.1.2","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 3}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 16777216,"bdid": 674}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 16777216,"bdid": 699}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 16777216,"bdid": 699,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.2.0.2","ipv4_src":"10.6.2.4","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 3}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 16777216,"bdid": 699,"table_id": 0,"priority": 9,"match":{ "eth_type":2048,"ipv4_dst":"10.2.0.2","ipv4_src":"10.6.2.4","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 3}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 16777216,"bdid": 699}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 16777216,"bdid": 727}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 16777216,"bdid": 727,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.2.2.4","ipv4_src":"10.5.2.2","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 3}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 16777216,"bdid": 727,"table_id": 0,"priority": 9,"match":{ "eth_type":2048,"ipv4_dst":"10.2.2.4","ipv4_src":"10.5.2.2","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 3}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 16777216,"bdid": 727}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 16777216,"bdid": 740}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 16777216,"bdid": 740,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.7.0.3","ipv4_src":"10.2.2.4","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 8}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 16777216,"bdid": 740,"table_id": 0,"priority": 9,"match":{ "eth_type":2048,"ipv4_dst":"10.7.0.3","ipv4_src":"10.2.2.4","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 8}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 16777216,"bdid": 740}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 16777216,"bdid": 752}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 16777216,"bdid": 752,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.2.0.2","ipv4_src":"10.3.2.2","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 3}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 16777216,"bdid": 752,"table_id": 0,"priority": 9,"match":{ "eth_type":2048,"ipv4_dst":"10.2.0.2","ipv4_src":"10.3.2.2","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 3}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 16777216,"bdid": 752}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 16777216,"bdid": 778}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 16777216,"bdid": 778,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.5.2.2","ipv4_src":"10.2.0.2","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 6}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 16777216,"bdid": 778,"table_id": 0,"priority": 9,"match":{ "eth_type":2048,"ipv4_dst":"10.5.2.2","ipv4_src":"10.2.0.2","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 6}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 16777216,"bdid": 778}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 16777216,"bdid": 791}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 16777216,"bdid": 791,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.6.2.4","ipv4_src":"10.2.2.4","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 7}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 16777216,"bdid": 791,"table_id": 0,"priority": 9,"match":{ "eth_type":2048,"ipv4_dst":"10.6.2.4","ipv4_src":"10.2.2.4","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 7}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 16777216,"bdid": 791}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 16777216,"bdid": 818}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 16777216,"bdid": 818,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.2.2.4","ipv4_src":"10.3.3.4","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 3}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 16777216,"bdid": 818,"table_id": 0,"priority": 9,"match":{ "eth_type":2048,"ipv4_dst":"10.2.2.4","ipv4_src":"10.3.3.4","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 3}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 16777216,"bdid": 818}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 16777216,"bdid": 830}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 16777216,"bdid": 830,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.2.0.2","ipv4_src":"10.3.3.4","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 3}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 16777216,"bdid": 830,"table_id": 0,"priority": 9,"match":{ "eth_type":2048,"ipv4_dst":"10.2.0.2","ipv4_src":"10.3.3.4","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 3}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 16777216,"bdid": 830}' http://localhost:8080/stats/bundlectrl/commit 

