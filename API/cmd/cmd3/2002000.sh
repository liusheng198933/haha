#!/bin/bash
curl -X POST -d '{ "dpid": 33562624,"bdid": 261}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 33562624,"bdid": 261,"table_id": 0,"priority": 9,"match":{ "eth_type":2048,"ipv4_dst":"10.7.1.2","ipv4_src":"10.2.2.4","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 1}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 33562624,"bdid": 261,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.7.1.2","ipv4_src":"10.2.2.4","dl_vlan":5},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4101},{"type": "OUTPUT","port": 2}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 33562624,"bdid": 261,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.7.1.2","ipv4_src":"10.2.2.4","dl_vlan":5},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4101},{"type": "OUTPUT","port": 1}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 33562624,"bdid": 261}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 33562624,"bdid": 274}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 33562624,"bdid": 274,"table_id": 0,"priority": 9,"match":{ "eth_type":2048,"ipv4_dst":"10.3.2.2","ipv4_src":"10.2.2.4","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 1}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 33562624,"bdid": 274,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.3.2.2","ipv4_src":"10.2.2.4","dl_vlan":5},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4101},{"type": "OUTPUT","port": 2}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 33562624,"bdid": 274,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.3.2.2","ipv4_src":"10.2.2.4","dl_vlan":5},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4101},{"type": "OUTPUT","port": 1}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 33562624,"bdid": 274}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 33562624,"bdid": 287}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 33562624,"bdid": 287,"table_id": 0,"priority": 9,"match":{ "eth_type":2048,"ipv4_dst":"10.2.2.4","ipv4_src":"10.7.2.2","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 7}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 33562624,"bdid": 287,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.2.2.4","ipv4_src":"10.7.2.2","dl_vlan":5},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4101},{"type": "OUTPUT","port": 7}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 33562624,"bdid": 287,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.2.2.4","ipv4_src":"10.7.2.2","dl_vlan":5},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4101},{"type": "OUTPUT","port": 7}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 33562624,"bdid": 287}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 33562624,"bdid": 301}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 33562624,"bdid": 301,"table_id": 0,"priority": 9,"match":{ "eth_type":2048,"ipv4_dst":"10.3.3.4","ipv4_src":"10.2.2.4","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 1}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 33562624,"bdid": 301,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.3.3.4","ipv4_src":"10.2.2.4","dl_vlan":5},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4101},{"type": "OUTPUT","port": 2}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 33562624,"bdid": 301,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.3.3.4","ipv4_src":"10.2.2.4","dl_vlan":5},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4101},{"type": "OUTPUT","port": 1}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 33562624,"bdid": 301}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 33562624,"bdid": 325}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 33562624,"bdid": 325,"table_id": 0,"priority": 9,"match":{ "eth_type":2048,"ipv4_dst":"10.2.0.2","ipv4_src":"10.7.2.2","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 5}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 33562624,"bdid": 325,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.2.0.2","ipv4_src":"10.7.2.2","dl_vlan":5},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4101},{"type": "OUTPUT","port": 5}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 33562624,"bdid": 325,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.2.0.2","ipv4_src":"10.7.2.2","dl_vlan":5},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4101},{"type": "OUTPUT","port": 5}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 33562624,"bdid": 325}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 33562624,"bdid": 340}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 33562624,"bdid": 340,"table_id": 0,"priority": 9,"match":{ "eth_type":2048,"ipv4_dst":"10.3.3.4","ipv4_src":"10.2.0.2","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 1}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 33562624,"bdid": 340,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.3.3.4","ipv4_src":"10.2.0.2","dl_vlan":5},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4101},{"type": "OUTPUT","port": 2}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 33562624,"bdid": 340,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.3.3.4","ipv4_src":"10.2.0.2","dl_vlan":5},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4101},{"type": "OUTPUT","port": 1}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 33562624,"bdid": 340}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 33562624,"bdid": 352}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 33562624,"bdid": 352,"table_id": 0,"priority": 9,"match":{ "eth_type":2048,"ipv4_dst":"10.6.2.4","ipv4_src":"10.2.0.2","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 1}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 33562624,"bdid": 352,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.6.2.4","ipv4_src":"10.2.0.2","dl_vlan":5},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4101},{"type": "OUTPUT","port": 2}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 33562624,"bdid": 352,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.6.2.4","ipv4_src":"10.2.0.2","dl_vlan":5},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4101},{"type": "OUTPUT","port": 1}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 33562624,"bdid": 352}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 33562624,"bdid": 365}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 33562624,"bdid": 365,"table_id": 0,"priority": 9,"match":{ "eth_type":2048,"ipv4_dst":"10.3.2.2","ipv4_src":"10.2.0.2","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 1}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 33562624,"bdid": 365,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.3.2.2","ipv4_src":"10.2.0.2","dl_vlan":5},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4101},{"type": "OUTPUT","port": 2}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 33562624,"bdid": 365,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.3.2.2","ipv4_src":"10.2.0.2","dl_vlan":5},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4101},{"type": "OUTPUT","port": 1}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 33562624,"bdid": 365}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 33562624,"bdid": 430}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 33562624,"bdid": 430,"table_id": 0,"priority": 9,"match":{ "eth_type":2048,"ipv4_dst":"10.2.2.4","ipv4_src":"10.7.0.3","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 7}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 33562624,"bdid": 430,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.2.2.4","ipv4_src":"10.7.0.3","dl_vlan":5},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4101},{"type": "OUTPUT","port": 7}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 33562624,"bdid": 430,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.2.2.4","ipv4_src":"10.7.0.3","dl_vlan":5},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4101},{"type": "OUTPUT","port": 7}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 33562624,"bdid": 430}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 33562624,"bdid": 456}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 33562624,"bdid": 456,"table_id": 0,"priority": 9,"match":{ "eth_type":2048,"ipv4_dst":"10.7.1.2","ipv4_src":"10.2.0.2","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 1}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 33562624,"bdid": 456,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.7.1.2","ipv4_src":"10.2.0.2","dl_vlan":5},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4101},{"type": "OUTPUT","port": 2}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 33562624,"bdid": 456,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.7.1.2","ipv4_src":"10.2.0.2","dl_vlan":5},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4101},{"type": "OUTPUT","port": 1}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 33562624,"bdid": 456}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 33562624,"bdid": 469}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 33562624,"bdid": 469,"table_id": 0,"priority": 9,"match":{ "eth_type":2048,"ipv4_dst":"10.7.2.2","ipv4_src":"10.2.0.2","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 1}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 33562624,"bdid": 469,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.7.2.2","ipv4_src":"10.2.0.2","dl_vlan":5},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4101},{"type": "OUTPUT","port": 2}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 33562624,"bdid": 469,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.7.2.2","ipv4_src":"10.2.0.2","dl_vlan":5},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4101},{"type": "OUTPUT","port": 1}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 33562624,"bdid": 469}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 33562624,"bdid": 482}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 33562624,"bdid": 482,"table_id": 0,"priority": 9,"match":{ "eth_type":2048,"ipv4_dst":"10.5.2.2","ipv4_src":"10.2.2.4","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 1}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 33562624,"bdid": 482,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.5.2.2","ipv4_src":"10.2.2.4","dl_vlan":5},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4101},{"type": "OUTPUT","port": 2}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 33562624,"bdid": 482,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.5.2.2","ipv4_src":"10.2.2.4","dl_vlan":5},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4101},{"type": "OUTPUT","port": 1}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 33562624,"bdid": 482}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 33562624,"bdid": 547}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 33562624,"bdid": 547,"table_id": 0,"priority": 9,"match":{ "eth_type":2048,"ipv4_dst":"10.7.2.2","ipv4_src":"10.2.2.4","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 1}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 33562624,"bdid": 547,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.7.2.2","ipv4_src":"10.2.2.4","dl_vlan":5},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4101},{"type": "OUTPUT","port": 2}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 33562624,"bdid": 547,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.7.2.2","ipv4_src":"10.2.2.4","dl_vlan":5},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4101},{"type": "OUTPUT","port": 1}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 33562624,"bdid": 547}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 33562624,"bdid": 585}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 33562624,"bdid": 585,"table_id": 0,"priority": 9,"match":{ "eth_type":2048,"ipv4_dst":"10.7.0.3","ipv4_src":"10.2.0.2","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 1}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 33562624,"bdid": 585,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.7.0.3","ipv4_src":"10.2.0.2","dl_vlan":5},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4101},{"type": "OUTPUT","port": 2}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 33562624,"bdid": 585,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.7.0.3","ipv4_src":"10.2.0.2","dl_vlan":5},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4101},{"type": "OUTPUT","port": 1}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 33562624,"bdid": 585}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 33562624,"bdid": 599}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 33562624,"bdid": 599,"table_id": 0,"priority": 9,"match":{ "eth_type":2048,"ipv4_dst":"10.2.2.4","ipv4_src":"10.3.2.2","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 7}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 33562624,"bdid": 599,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.2.2.4","ipv4_src":"10.3.2.2","dl_vlan":5},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4101},{"type": "OUTPUT","port": 7}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 33562624,"bdid": 599,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.2.2.4","ipv4_src":"10.3.2.2","dl_vlan":5},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4101},{"type": "OUTPUT","port": 7}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 33562624,"bdid": 599}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 33562624,"bdid": 612}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 33562624,"bdid": 612,"table_id": 0,"priority": 9,"match":{ "eth_type":2048,"ipv4_dst":"10.2.2.4","ipv4_src":"10.6.2.4","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 7}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 33562624,"bdid": 612,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.2.2.4","ipv4_src":"10.6.2.4","dl_vlan":5},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4101},{"type": "OUTPUT","port": 7}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 33562624,"bdid": 612,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.2.2.4","ipv4_src":"10.6.2.4","dl_vlan":5},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4101},{"type": "OUTPUT","port": 7}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 33562624,"bdid": 612}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 33562624,"bdid": 625}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 33562624,"bdid": 625,"table_id": 0,"priority": 9,"match":{ "eth_type":2048,"ipv4_dst":"10.2.2.4","ipv4_src":"10.7.1.2","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 7}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 33562624,"bdid": 625,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.2.2.4","ipv4_src":"10.7.1.2","dl_vlan":5},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4101},{"type": "OUTPUT","port": 7}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 33562624,"bdid": 625,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.2.2.4","ipv4_src":"10.7.1.2","dl_vlan":5},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4101},{"type": "OUTPUT","port": 7}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 33562624,"bdid": 625}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 33562624,"bdid": 637}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 33562624,"bdid": 637,"table_id": 0,"priority": 9,"match":{ "eth_type":2048,"ipv4_dst":"10.2.0.2","ipv4_src":"10.7.0.3","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 5}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 33562624,"bdid": 637,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.2.0.2","ipv4_src":"10.7.0.3","dl_vlan":5},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4101},{"type": "OUTPUT","port": 5}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 33562624,"bdid": 637,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.2.0.2","ipv4_src":"10.7.0.3","dl_vlan":5},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4101},{"type": "OUTPUT","port": 5}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 33562624,"bdid": 637}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 33562624,"bdid": 664}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 33562624,"bdid": 664,"table_id": 0,"priority": 9,"match":{ "eth_type":2048,"ipv4_dst":"10.2.0.2","ipv4_src":"10.5.2.2","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 5}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 33562624,"bdid": 664,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.2.0.2","ipv4_src":"10.5.2.2","dl_vlan":5},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4101},{"type": "OUTPUT","port": 5}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 33562624,"bdid": 664,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.2.0.2","ipv4_src":"10.5.2.2","dl_vlan":5},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4101},{"type": "OUTPUT","port": 5}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 33562624,"bdid": 664}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 33562624,"bdid": 676}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 33562624,"bdid": 676,"table_id": 0,"priority": 9,"match":{ "eth_type":2048,"ipv4_dst":"10.2.0.2","ipv4_src":"10.7.1.2","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 5}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 33562624,"bdid": 676,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.2.0.2","ipv4_src":"10.7.1.2","dl_vlan":5},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4101},{"type": "OUTPUT","port": 5}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 33562624,"bdid": 676,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.2.0.2","ipv4_src":"10.7.1.2","dl_vlan":5},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4101},{"type": "OUTPUT","port": 5}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 33562624,"bdid": 676}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 33562624,"bdid": 702}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 33562624,"bdid": 702,"table_id": 0,"priority": 9,"match":{ "eth_type":2048,"ipv4_dst":"10.2.0.2","ipv4_src":"10.6.2.4","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 5}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 33562624,"bdid": 702,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.2.0.2","ipv4_src":"10.6.2.4","dl_vlan":5},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4101},{"type": "OUTPUT","port": 5}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 33562624,"bdid": 702,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.2.0.2","ipv4_src":"10.6.2.4","dl_vlan":5},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4101},{"type": "OUTPUT","port": 5}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 33562624,"bdid": 702}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 33562624,"bdid": 728}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 33562624,"bdid": 728,"table_id": 0,"priority": 9,"match":{ "eth_type":2048,"ipv4_dst":"10.2.2.4","ipv4_src":"10.5.2.2","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 7}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 33562624,"bdid": 728,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.2.2.4","ipv4_src":"10.5.2.2","dl_vlan":5},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4101},{"type": "OUTPUT","port": 7}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 33562624,"bdid": 728,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.2.2.4","ipv4_src":"10.5.2.2","dl_vlan":5},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4101},{"type": "OUTPUT","port": 7}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 33562624,"bdid": 728}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 33562624,"bdid": 741}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 33562624,"bdid": 741,"table_id": 0,"priority": 9,"match":{ "eth_type":2048,"ipv4_dst":"10.7.0.3","ipv4_src":"10.2.2.4","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 1}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 33562624,"bdid": 741,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.7.0.3","ipv4_src":"10.2.2.4","dl_vlan":5},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4101},{"type": "OUTPUT","port": 2}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 33562624,"bdid": 741,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.7.0.3","ipv4_src":"10.2.2.4","dl_vlan":5},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4101},{"type": "OUTPUT","port": 1}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 33562624,"bdid": 741}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 33562624,"bdid": 755}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 33562624,"bdid": 755,"table_id": 0,"priority": 9,"match":{ "eth_type":2048,"ipv4_dst":"10.2.0.2","ipv4_src":"10.3.2.2","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 5}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 33562624,"bdid": 755,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.2.0.2","ipv4_src":"10.3.2.2","dl_vlan":5},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4101},{"type": "OUTPUT","port": 5}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 33562624,"bdid": 755,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.2.0.2","ipv4_src":"10.3.2.2","dl_vlan":5},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4101},{"type": "OUTPUT","port": 5}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 33562624,"bdid": 755}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 33562624,"bdid": 781}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 33562624,"bdid": 781,"table_id": 0,"priority": 9,"match":{ "eth_type":2048,"ipv4_dst":"10.5.2.2","ipv4_src":"10.2.0.2","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 1}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 33562624,"bdid": 781,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.5.2.2","ipv4_src":"10.2.0.2","dl_vlan":5},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4101},{"type": "OUTPUT","port": 2}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 33562624,"bdid": 781,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.5.2.2","ipv4_src":"10.2.0.2","dl_vlan":5},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4101},{"type": "OUTPUT","port": 1}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 33562624,"bdid": 781}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 33562624,"bdid": 794}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 33562624,"bdid": 794,"table_id": 0,"priority": 9,"match":{ "eth_type":2048,"ipv4_dst":"10.6.2.4","ipv4_src":"10.2.2.4","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 1}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 33562624,"bdid": 794,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.6.2.4","ipv4_src":"10.2.2.4","dl_vlan":5},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4101},{"type": "OUTPUT","port": 2}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 33562624,"bdid": 794,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.6.2.4","ipv4_src":"10.2.2.4","dl_vlan":5},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4101},{"type": "OUTPUT","port": 1}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 33562624,"bdid": 794}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 33562624,"bdid": 820}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 33562624,"bdid": 820,"table_id": 0,"priority": 9,"match":{ "eth_type":2048,"ipv4_dst":"10.2.2.4","ipv4_src":"10.3.3.4","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 7}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 33562624,"bdid": 820,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.2.2.4","ipv4_src":"10.3.3.4","dl_vlan":5},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4101},{"type": "OUTPUT","port": 7}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 33562624,"bdid": 820,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.2.2.4","ipv4_src":"10.3.3.4","dl_vlan":5},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4101},{"type": "OUTPUT","port": 7}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 33562624,"bdid": 820}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 33562624,"bdid": 833}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 33562624,"bdid": 833,"table_id": 0,"priority": 9,"match":{ "eth_type":2048,"ipv4_dst":"10.2.0.2","ipv4_src":"10.3.3.4","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 5}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 33562624,"bdid": 833,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.2.0.2","ipv4_src":"10.3.3.4","dl_vlan":5},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4101},{"type": "OUTPUT","port": 5}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 33562624,"bdid": 833,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.2.0.2","ipv4_src":"10.3.3.4","dl_vlan":5},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4101},{"type": "OUTPUT","port": 5}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 33562624,"bdid": 833}' http://localhost:8080/stats/bundlectrl/commit 

