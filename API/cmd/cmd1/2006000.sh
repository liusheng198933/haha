#!/bin/bash
curl -X POST -d '{ "dpid": 33579008,"bdid": 346}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 33579008,"bdid": 346,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.6.2.4","ipv4_src":"10.2.0.2","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 7}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 33579008,"bdid": 346}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 33579008,"bdid": 606}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 33579008,"bdid": 606,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.2.2.4","ipv4_src":"10.6.2.4","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 1}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 33579008,"bdid": 606}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 33579008,"bdid": 697}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 33579008,"bdid": 697,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.2.0.2","ipv4_src":"10.6.2.4","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 1}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 33579008,"bdid": 697}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 33579008,"bdid": 788}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 33579008,"bdid": 788,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.6.2.4","ipv4_src":"10.2.2.4","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 7}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 33579008,"bdid": 788}' http://localhost:8080/stats/bundlectrl/commit 

