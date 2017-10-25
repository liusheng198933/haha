#!/bin/bash
curl -X POST -d '{ "dpid": 33583106,"bdid": 405}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 33583106,"bdid": 405,"table_id": 0,"priority": 9,"match":{ "eth_type":2048,"ipv4_dst":"10.3.0.1","ipv4_src":"10.7.2.2","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 1}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 33583106,"bdid": 405,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.3.0.1","ipv4_src":"10.7.2.2","dl_vlan":5},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4101},{"type": "OUTPUT","port": 2}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 33583106,"bdid": 405,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.3.0.1","ipv4_src":"10.7.2.2","dl_vlan":5},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4101},{"type": "OUTPUT","port": 1}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 33583106,"bdid": 405}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 33583106,"bdid": 445}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 33583106,"bdid": 445,"table_id": 0,"priority": 9,"match":{ "eth_type":2048,"ipv4_dst":"10.7.2.2","ipv4_src":"10.3.0.1","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 7}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 33583106,"bdid": 445,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.7.2.2","ipv4_src":"10.3.0.1","dl_vlan":5},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4101},{"type": "OUTPUT","port": 7}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 33583106,"bdid": 445,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.7.2.2","ipv4_src":"10.3.0.1","dl_vlan":5},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4101},{"type": "OUTPUT","port": 7}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 33583106,"bdid": 445}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 33583106,"bdid": 692}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 33583106,"bdid": 692,"table_id": 0,"priority": 9,"match":{ "eth_type":2048,"ipv4_dst":"10.7.2.2","ipv4_src":"10.4.0.1","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 7}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 33583106,"bdid": 692,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.7.2.2","ipv4_src":"10.4.0.1","dl_vlan":5},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4101},{"type": "OUTPUT","port": 7}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 33583106,"bdid": 692,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.7.2.2","ipv4_src":"10.4.0.1","dl_vlan":5},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4101},{"type": "OUTPUT","port": 7}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 33583106,"bdid": 692}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 33583106,"bdid": 809}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 33583106,"bdid": 809,"table_id": 0,"priority": 9,"match":{ "eth_type":2048,"ipv4_dst":"10.4.0.1","ipv4_src":"10.7.2.2","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 4}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 33583106,"bdid": 809,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.4.0.1","ipv4_src":"10.7.2.2","dl_vlan":5},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4101},{"type": "OUTPUT","port": 2}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 33583106,"bdid": 809,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.4.0.1","ipv4_src":"10.7.2.2","dl_vlan":5},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4101},{"type": "OUTPUT","port": 4}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 33583106,"bdid": 809}' http://localhost:8080/stats/bundlectrl/commit 

