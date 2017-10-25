#!/bin/bash
curl -X POST -d '{ "dpid": 33566722,"bdid": 309}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 33566722,"bdid": 309,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.3.0.1","ipv4_src":"10.0.0.3","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 5}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 33566722,"bdid": 309,"table_id": 0,"priority": 9,"match":{ "eth_type":2048,"ipv4_dst":"10.3.0.1","ipv4_src":"10.0.0.3","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 5}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 33566722,"bdid": 309}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 33566722,"bdid": 374}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 33566722,"bdid": 374,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.4.0.2","ipv4_src":"10.3.0.1","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 1}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 33566722,"bdid": 374,"table_id": 0,"priority": 9,"match":{ "eth_type":2048,"ipv4_dst":"10.4.0.2","ipv4_src":"10.3.0.1","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 1}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 33566722,"bdid": 374}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 33566722,"bdid": 387}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 33566722,"bdid": 387,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.3.0.1","ipv4_src":"10.4.2.3","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 5}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 33566722,"bdid": 387,"table_id": 0,"priority": 9,"match":{ "eth_type":2048,"ipv4_dst":"10.3.0.1","ipv4_src":"10.4.2.3","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 5}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 33566722,"bdid": 387}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 33566722,"bdid": 400}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 33566722,"bdid": 400,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.3.0.1","ipv4_src":"10.7.2.2","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 5}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 33566722,"bdid": 400,"table_id": 0,"priority": 9,"match":{ "eth_type":2048,"ipv4_dst":"10.3.0.1","ipv4_src":"10.7.2.2","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 5}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 33566722,"bdid": 400}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 33566722,"bdid": 413}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 33566722,"bdid": 413,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.2.1.1","ipv4_src":"10.3.0.1","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 1}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 33566722,"bdid": 413,"table_id": 0,"priority": 9,"match":{ "eth_type":2048,"ipv4_dst":"10.2.1.1","ipv4_src":"10.3.0.1","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 1}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 33566722,"bdid": 413}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 33566722,"bdid": 438}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 33566722,"bdid": 438,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.7.2.2","ipv4_src":"10.3.0.1","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 1}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 33566722,"bdid": 438,"table_id": 0,"priority": 9,"match":{ "eth_type":2048,"ipv4_dst":"10.7.2.2","ipv4_src":"10.3.0.1","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 1}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 33566722,"bdid": 438}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 33566722,"bdid": 491}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 33566722,"bdid": 491,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.2.1.3","ipv4_src":"10.3.0.1","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 1}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 33566722,"bdid": 491,"table_id": 0,"priority": 9,"match":{ "eth_type":2048,"ipv4_dst":"10.2.1.3","ipv4_src":"10.3.0.1","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 1}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 33566722,"bdid": 491}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 33566722,"bdid": 503}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 33566722,"bdid": 503,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.4.2.3","ipv4_src":"10.3.0.1","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 1}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 33566722,"bdid": 503,"table_id": 0,"priority": 9,"match":{ "eth_type":2048,"ipv4_dst":"10.4.2.3","ipv4_src":"10.3.0.1","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 1}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 33566722,"bdid": 503}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 33566722,"bdid": 518}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 33566722,"bdid": 518,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.3.0.1","ipv4_src":"10.1.2.4","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 5}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 33566722,"bdid": 518,"table_id": 0,"priority": 9,"match":{ "eth_type":2048,"ipv4_dst":"10.3.0.1","ipv4_src":"10.1.2.4","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 5}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 33566722,"bdid": 518}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 33566722,"bdid": 530}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 33566722,"bdid": 530,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.3.0.1","ipv4_src":"10.4.0.2","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 5}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 33566722,"bdid": 530,"table_id": 0,"priority": 9,"match":{ "eth_type":2048,"ipv4_dst":"10.3.0.1","ipv4_src":"10.4.0.2","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 5}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 33566722,"bdid": 530}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 33566722,"bdid": 556}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 33566722,"bdid": 556,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.3.0.1","ipv4_src":"10.4.3.2","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 5}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 33566722,"bdid": 556,"table_id": 0,"priority": 9,"match":{ "eth_type":2048,"ipv4_dst":"10.3.0.1","ipv4_src":"10.4.3.2","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 5}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 33566722,"bdid": 556}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 33566722,"bdid": 569}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 33566722,"bdid": 569,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.1.2.4","ipv4_src":"10.3.0.1","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 1}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 33566722,"bdid": 569,"table_id": 0,"priority": 9,"match":{ "eth_type":2048,"ipv4_dst":"10.1.2.4","ipv4_src":"10.3.0.1","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 1}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 33566722,"bdid": 569}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 33566722,"bdid": 647}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 33566722,"bdid": 647,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.4.3.2","ipv4_src":"10.3.0.1","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 1}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 33566722,"bdid": 647,"table_id": 0,"priority": 9,"match":{ "eth_type":2048,"ipv4_dst":"10.4.3.2","ipv4_src":"10.3.0.1","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 1}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 33566722,"bdid": 647}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 33566722,"bdid": 712}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 33566722,"bdid": 712,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.3.0.1","ipv4_src":"10.2.1.1","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 5}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 33566722,"bdid": 712,"table_id": 0,"priority": 9,"match":{ "eth_type":2048,"ipv4_dst":"10.3.0.1","ipv4_src":"10.2.1.1","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 5}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 33566722,"bdid": 712}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 33566722,"bdid": 763}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 33566722,"bdid": 763,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.0.0.3","ipv4_src":"10.3.0.1","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 1}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 33566722,"bdid": 763,"table_id": 0,"priority": 9,"match":{ "eth_type":2048,"ipv4_dst":"10.0.0.3","ipv4_src":"10.3.0.1","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 1}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 33566722,"bdid": 763}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 33566722,"bdid": 842}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 33566722,"bdid": 842,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.3.0.1","ipv4_src":"10.2.1.3","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 5}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 33566722,"bdid": 842,"table_id": 0,"priority": 9,"match":{ "eth_type":2048,"ipv4_dst":"10.3.0.1","ipv4_src":"10.2.1.3","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 5}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 33566722,"bdid": 842}' http://localhost:8080/stats/bundlectrl/commit 

