#!/bin/bash
curl -X POST -d '{ "dpid": 33574912,"bdid": 476}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 33574912,"bdid": 476,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.5.2.2","ipv4_src":"10.2.2.4","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 7}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 33574912,"bdid": 476}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 33574912,"bdid": 655}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 33574912,"bdid": 655,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.2.0.2","ipv4_src":"10.5.2.2","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 1}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 33574912,"bdid": 655}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 33574912,"bdid": 722}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 33574912,"bdid": 722,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.2.2.4","ipv4_src":"10.5.2.2","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 1}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 33574912,"bdid": 722}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 33574912,"bdid": 775}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 33574912,"bdid": 775,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.5.2.2","ipv4_src":"10.2.0.2","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 7}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 33574912,"bdid": 775}' http://localhost:8080/stats/bundlectrl/commit 

