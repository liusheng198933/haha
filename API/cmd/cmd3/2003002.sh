#!/bin/bash
curl -X POST -d '{ "dpid": 33566722,"bdid": 313}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 33566722,"bdid": 313,"table_id": 0,"priority": 9,"match":{ "eth_type":2048,"ipv4_dst":"10.3.0.1","ipv4_src":"10.0.0.3","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 5}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 33566722,"bdid": 313,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.3.0.1","ipv4_src":"10.0.0.3","dl_vlan":5},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4101},{"type": "OUTPUT","port": 5}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 33566722,"bdid": 313,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.3.0.1","ipv4_src":"10.0.0.3","dl_vlan":5},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4101},{"type": "OUTPUT","port": 5}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 33566722,"bdid": 313}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 33566722,"bdid": 378}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 33566722,"bdid": 378,"table_id": 0,"priority": 9,"match":{ "eth_type":2048,"ipv4_dst":"10.4.0.2","ipv4_src":"10.3.0.1","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 1}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 33566722,"bdid": 378,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.4.0.2","ipv4_src":"10.3.0.1","dl_vlan":5},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4101},{"type": "OUTPUT","port": 2}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 33566722,"bdid": 378,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.4.0.2","ipv4_src":"10.3.0.1","dl_vlan":5},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4101},{"type": "OUTPUT","port": 1}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 33566722,"bdid": 378}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 33566722,"bdid": 391}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 33566722,"bdid": 391,"table_id": 0,"priority": 9,"match":{ "eth_type":2048,"ipv4_dst":"10.3.0.1","ipv4_src":"10.4.2.3","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 5}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 33566722,"bdid": 391,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.3.0.1","ipv4_src":"10.4.2.3","dl_vlan":5},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4101},{"type": "OUTPUT","port": 5}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 33566722,"bdid": 391,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.3.0.1","ipv4_src":"10.4.2.3","dl_vlan":5},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4101},{"type": "OUTPUT","port": 5}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 33566722,"bdid": 391}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 33566722,"bdid": 404}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 33566722,"bdid": 404,"table_id": 0,"priority": 9,"match":{ "eth_type":2048,"ipv4_dst":"10.3.0.1","ipv4_src":"10.7.2.2","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 5}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 33566722,"bdid": 404,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.3.0.1","ipv4_src":"10.7.2.2","dl_vlan":5},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4101},{"type": "OUTPUT","port": 5}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 33566722,"bdid": 404,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.3.0.1","ipv4_src":"10.7.2.2","dl_vlan":5},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4101},{"type": "OUTPUT","port": 5}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 33566722,"bdid": 404}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 33566722,"bdid": 417}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 33566722,"bdid": 417,"table_id": 0,"priority": 9,"match":{ "eth_type":2048,"ipv4_dst":"10.2.1.1","ipv4_src":"10.3.0.1","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 1}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 33566722,"bdid": 417,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.2.1.1","ipv4_src":"10.3.0.1","dl_vlan":5},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4101},{"type": "OUTPUT","port": 2}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 33566722,"bdid": 417,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.2.1.1","ipv4_src":"10.3.0.1","dl_vlan":5},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4101},{"type": "OUTPUT","port": 1}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 33566722,"bdid": 417}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 33566722,"bdid": 442}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 33566722,"bdid": 442,"table_id": 0,"priority": 9,"match":{ "eth_type":2048,"ipv4_dst":"10.7.2.2","ipv4_src":"10.3.0.1","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 1}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 33566722,"bdid": 442,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.7.2.2","ipv4_src":"10.3.0.1","dl_vlan":5},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4101},{"type": "OUTPUT","port": 2}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 33566722,"bdid": 442,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.7.2.2","ipv4_src":"10.3.0.1","dl_vlan":5},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4101},{"type": "OUTPUT","port": 1}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 33566722,"bdid": 442}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 33566722,"bdid": 495}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 33566722,"bdid": 495,"table_id": 0,"priority": 9,"match":{ "eth_type":2048,"ipv4_dst":"10.2.1.3","ipv4_src":"10.3.0.1","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 1}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 33566722,"bdid": 495,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.2.1.3","ipv4_src":"10.3.0.1","dl_vlan":5},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4101},{"type": "OUTPUT","port": 2}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 33566722,"bdid": 495,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.2.1.3","ipv4_src":"10.3.0.1","dl_vlan":5},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4101},{"type": "OUTPUT","port": 1}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 33566722,"bdid": 495}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 33566722,"bdid": 507}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 33566722,"bdid": 507,"table_id": 0,"priority": 9,"match":{ "eth_type":2048,"ipv4_dst":"10.4.2.3","ipv4_src":"10.3.0.1","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 1}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 33566722,"bdid": 507,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.4.2.3","ipv4_src":"10.3.0.1","dl_vlan":5},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4101},{"type": "OUTPUT","port": 2}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 33566722,"bdid": 507,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.4.2.3","ipv4_src":"10.3.0.1","dl_vlan":5},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4101},{"type": "OUTPUT","port": 1}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 33566722,"bdid": 507}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 33566722,"bdid": 522}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 33566722,"bdid": 522,"table_id": 0,"priority": 9,"match":{ "eth_type":2048,"ipv4_dst":"10.3.0.1","ipv4_src":"10.1.2.4","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 5}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 33566722,"bdid": 522,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.3.0.1","ipv4_src":"10.1.2.4","dl_vlan":5},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4101},{"type": "OUTPUT","port": 5}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 33566722,"bdid": 522,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.3.0.1","ipv4_src":"10.1.2.4","dl_vlan":5},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4101},{"type": "OUTPUT","port": 5}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 33566722,"bdid": 522}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 33566722,"bdid": 534}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 33566722,"bdid": 534,"table_id": 0,"priority": 9,"match":{ "eth_type":2048,"ipv4_dst":"10.3.0.1","ipv4_src":"10.4.0.2","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 5}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 33566722,"bdid": 534,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.3.0.1","ipv4_src":"10.4.0.2","dl_vlan":5},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4101},{"type": "OUTPUT","port": 5}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 33566722,"bdid": 534,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.3.0.1","ipv4_src":"10.4.0.2","dl_vlan":5},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4101},{"type": "OUTPUT","port": 5}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 33566722,"bdid": 534}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 33566722,"bdid": 560}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 33566722,"bdid": 560,"table_id": 0,"priority": 9,"match":{ "eth_type":2048,"ipv4_dst":"10.3.0.1","ipv4_src":"10.4.3.2","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 5}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 33566722,"bdid": 560,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.3.0.1","ipv4_src":"10.4.3.2","dl_vlan":5},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4101},{"type": "OUTPUT","port": 5}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 33566722,"bdid": 560,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.3.0.1","ipv4_src":"10.4.3.2","dl_vlan":5},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4101},{"type": "OUTPUT","port": 5}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 33566722,"bdid": 560}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 33566722,"bdid": 573}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 33566722,"bdid": 573,"table_id": 0,"priority": 9,"match":{ "eth_type":2048,"ipv4_dst":"10.1.2.4","ipv4_src":"10.3.0.1","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 1}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 33566722,"bdid": 573,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.1.2.4","ipv4_src":"10.3.0.1","dl_vlan":5},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4101},{"type": "OUTPUT","port": 2}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 33566722,"bdid": 573,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.1.2.4","ipv4_src":"10.3.0.1","dl_vlan":5},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4101},{"type": "OUTPUT","port": 1}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 33566722,"bdid": 573}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 33566722,"bdid": 651}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 33566722,"bdid": 651,"table_id": 0,"priority": 9,"match":{ "eth_type":2048,"ipv4_dst":"10.4.3.2","ipv4_src":"10.3.0.1","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 1}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 33566722,"bdid": 651,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.4.3.2","ipv4_src":"10.3.0.1","dl_vlan":5},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4101},{"type": "OUTPUT","port": 2}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 33566722,"bdid": 651,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.4.3.2","ipv4_src":"10.3.0.1","dl_vlan":5},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4101},{"type": "OUTPUT","port": 1}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 33566722,"bdid": 651}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 33566722,"bdid": 716}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 33566722,"bdid": 716,"table_id": 0,"priority": 9,"match":{ "eth_type":2048,"ipv4_dst":"10.3.0.1","ipv4_src":"10.2.1.1","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 5}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 33566722,"bdid": 716,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.3.0.1","ipv4_src":"10.2.1.1","dl_vlan":5},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4101},{"type": "OUTPUT","port": 5}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 33566722,"bdid": 716,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.3.0.1","ipv4_src":"10.2.1.1","dl_vlan":5},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4101},{"type": "OUTPUT","port": 5}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 33566722,"bdid": 716}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 33566722,"bdid": 767}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 33566722,"bdid": 767,"table_id": 0,"priority": 9,"match":{ "eth_type":2048,"ipv4_dst":"10.0.0.3","ipv4_src":"10.3.0.1","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 1}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 33566722,"bdid": 767,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.0.0.3","ipv4_src":"10.3.0.1","dl_vlan":5},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4101},{"type": "OUTPUT","port": 2}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 33566722,"bdid": 767,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.0.0.3","ipv4_src":"10.3.0.1","dl_vlan":5},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4101},{"type": "OUTPUT","port": 1}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 33566722,"bdid": 767}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 33566722,"bdid": 846}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 33566722,"bdid": 846,"table_id": 0,"priority": 9,"match":{ "eth_type":2048,"ipv4_dst":"10.3.0.1","ipv4_src":"10.2.1.3","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 5}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 33566722,"bdid": 846,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.3.0.1","ipv4_src":"10.2.1.3","dl_vlan":5},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4101},{"type": "OUTPUT","port": 5}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 33566722,"bdid": 846,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.3.0.1","ipv4_src":"10.2.1.3","dl_vlan":5},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4101},{"type": "OUTPUT","port": 5}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 33566722,"bdid": 846}' http://localhost:8080/stats/bundlectrl/commit 

