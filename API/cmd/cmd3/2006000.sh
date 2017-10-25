#!/bin/bash
curl -X POST -d '{ "dpid": 33579008,"bdid": 353}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 33579008,"bdid": 353,"table_id": 0,"priority": 9,"match":{ "eth_type":2048,"ipv4_dst":"10.6.2.4","ipv4_src":"10.2.0.2","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 7}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 33579008,"bdid": 353,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.6.2.4","ipv4_src":"10.2.0.2","dl_vlan":5},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4101},{"type": "OUTPUT","port": 7}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 33579008,"bdid": 353,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.6.2.4","ipv4_src":"10.2.0.2","dl_vlan":5},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4101},{"type": "OUTPUT","port": 7}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 33579008,"bdid": 353}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 33579008,"bdid": 611}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 33579008,"bdid": 611,"table_id": 0,"priority": 9,"match":{ "eth_type":2048,"ipv4_dst":"10.2.2.4","ipv4_src":"10.6.2.4","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 1}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 33579008,"bdid": 611,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.2.2.4","ipv4_src":"10.6.2.4","dl_vlan":5},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4101},{"type": "OUTPUT","port": 2}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 33579008,"bdid": 611,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.2.2.4","ipv4_src":"10.6.2.4","dl_vlan":5},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4101},{"type": "OUTPUT","port": 1}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 33579008,"bdid": 611}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 33579008,"bdid": 703}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 33579008,"bdid": 703,"table_id": 0,"priority": 9,"match":{ "eth_type":2048,"ipv4_dst":"10.2.0.2","ipv4_src":"10.6.2.4","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 1}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 33579008,"bdid": 703,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.2.0.2","ipv4_src":"10.6.2.4","dl_vlan":5},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4101},{"type": "OUTPUT","port": 2}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 33579008,"bdid": 703,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.2.0.2","ipv4_src":"10.6.2.4","dl_vlan":5},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4101},{"type": "OUTPUT","port": 1}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 33579008,"bdid": 703}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 33579008,"bdid": 795}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 33579008,"bdid": 795,"table_id": 0,"priority": 9,"match":{ "eth_type":2048,"ipv4_dst":"10.6.2.4","ipv4_src":"10.2.2.4","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 7}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 33579008,"bdid": 795,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.6.2.4","ipv4_src":"10.2.2.4","dl_vlan":5},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4101},{"type": "OUTPUT","port": 7}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 33579008,"bdid": 795,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.6.2.4","ipv4_src":"10.2.2.4","dl_vlan":5},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4101},{"type": "OUTPUT","port": 7}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 33579008,"bdid": 795}' http://localhost:8080/stats/bundlectrl/commit 

