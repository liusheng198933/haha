#!/bin/bash
curl -X POST -d '{ "dpid": 33570818,"bdid": 371}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 33570818,"bdid": 371,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.4.0.2","ipv4_src":"10.3.0.1","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 5}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 33570818,"bdid": 371}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 33570818,"bdid": 384}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 33570818,"bdid": 384,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.3.0.1","ipv4_src":"10.4.2.3","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 1}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 33570818,"bdid": 384}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 33570818,"bdid": 500}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 33570818,"bdid": 500,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.4.2.3","ipv4_src":"10.3.0.1","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 7}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 33570818,"bdid": 500}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 33570818,"bdid": 527}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 33570818,"bdid": 527,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.3.0.1","ipv4_src":"10.4.0.2","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 1}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 33570818,"bdid": 527}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 33570818,"bdid": 553}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 33570818,"bdid": 553,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.3.0.1","ipv4_src":"10.4.3.2","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 1}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 33570818,"bdid": 553}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 33570818,"bdid": 642}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 33570818,"bdid": 642,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.4.3.2","ipv4_src":"10.3.0.1","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 8}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 33570818,"bdid": 642}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 33570818,"bdid": 681}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 33570818,"bdid": 681,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.7.2.2","ipv4_src":"10.4.0.1","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 4}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 33570818,"bdid": 681}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 33570818,"bdid": 799}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 33570818,"bdid": 799,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.4.0.1","ipv4_src":"10.7.2.2","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 5}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 33570818,"bdid": 799}' http://localhost:8080/stats/bundlectrl/commit 

