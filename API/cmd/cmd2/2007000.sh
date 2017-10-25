#!/bin/bash
curl -X POST -d '{ "dpid": 33583104,"bdid": 256}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 33583104,"bdid": 256,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.7.1.2","ipv4_src":"10.2.2.4","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 6}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 33583104,"bdid": 256,"table_id": 0,"priority": 9,"match":{ "eth_type":2048,"ipv4_dst":"10.7.1.2","ipv4_src":"10.2.2.4","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 6}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 33583104,"bdid": 256}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 33583104,"bdid": 282}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 33583104,"bdid": 282,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.2.2.4","ipv4_src":"10.7.2.2","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 1}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 33583104,"bdid": 282,"table_id": 0,"priority": 9,"match":{ "eth_type":2048,"ipv4_dst":"10.2.2.4","ipv4_src":"10.7.2.2","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 1}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 33583104,"bdid": 282}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 33583104,"bdid": 322}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 33583104,"bdid": 322,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.2.0.2","ipv4_src":"10.7.2.2","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 1}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 33583104,"bdid": 322,"table_id": 0,"priority": 9,"match":{ "eth_type":2048,"ipv4_dst":"10.2.0.2","ipv4_src":"10.7.2.2","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 1}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 33583104,"bdid": 322}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 33583104,"bdid": 425}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 33583104,"bdid": 425,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.2.2.4","ipv4_src":"10.7.0.3","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 1}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 33583104,"bdid": 425,"table_id": 0,"priority": 9,"match":{ "eth_type":2048,"ipv4_dst":"10.2.2.4","ipv4_src":"10.7.0.3","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 1}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 33583104,"bdid": 425}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 33583104,"bdid": 451}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 33583104,"bdid": 451,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.7.1.2","ipv4_src":"10.2.0.2","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 6}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 33583104,"bdid": 451,"table_id": 0,"priority": 9,"match":{ "eth_type":2048,"ipv4_dst":"10.7.1.2","ipv4_src":"10.2.0.2","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 6}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 33583104,"bdid": 451}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 33583104,"bdid": 465}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 33583104,"bdid": 465,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.7.2.2","ipv4_src":"10.2.0.2","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 7}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 33583104,"bdid": 465,"table_id": 0,"priority": 9,"match":{ "eth_type":2048,"ipv4_dst":"10.7.2.2","ipv4_src":"10.2.0.2","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 7}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 33583104,"bdid": 465}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 33583104,"bdid": 543}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 33583104,"bdid": 543,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.7.2.2","ipv4_src":"10.2.2.4","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 7}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 33583104,"bdid": 543,"table_id": 0,"priority": 9,"match":{ "eth_type":2048,"ipv4_dst":"10.7.2.2","ipv4_src":"10.2.2.4","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 7}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 33583104,"bdid": 543}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 33583104,"bdid": 582}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 33583104,"bdid": 582,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.7.0.3","ipv4_src":"10.2.0.2","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 5}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 33583104,"bdid": 582,"table_id": 0,"priority": 9,"match":{ "eth_type":2048,"ipv4_dst":"10.7.0.3","ipv4_src":"10.2.0.2","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 5}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 33583104,"bdid": 582}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 33583104,"bdid": 620}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 33583104,"bdid": 620,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.2.2.4","ipv4_src":"10.7.1.2","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 1}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 33583104,"bdid": 620,"table_id": 0,"priority": 9,"match":{ "eth_type":2048,"ipv4_dst":"10.2.2.4","ipv4_src":"10.7.1.2","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 1}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 33583104,"bdid": 620}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 33583104,"bdid": 634}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 33583104,"bdid": 634,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.2.0.2","ipv4_src":"10.7.0.3","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 1}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 33583104,"bdid": 634,"table_id": 0,"priority": 9,"match":{ "eth_type":2048,"ipv4_dst":"10.2.0.2","ipv4_src":"10.7.0.3","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 1}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 33583104,"bdid": 634}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 33583104,"bdid": 673}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 33583104,"bdid": 673,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.2.0.2","ipv4_src":"10.7.1.2","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 1}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 33583104,"bdid": 673,"table_id": 0,"priority": 9,"match":{ "eth_type":2048,"ipv4_dst":"10.2.0.2","ipv4_src":"10.7.1.2","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 1}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 33583104,"bdid": 673}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 33583104,"bdid": 738}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 33583104,"bdid": 738,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.7.0.3","ipv4_src":"10.2.2.4","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 5}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 33583104,"bdid": 738,"table_id": 0,"priority": 9,"match":{ "eth_type":2048,"ipv4_dst":"10.7.0.3","ipv4_src":"10.2.2.4","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 5}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 33583104,"bdid": 738}' http://localhost:8080/stats/bundlectrl/commit 

