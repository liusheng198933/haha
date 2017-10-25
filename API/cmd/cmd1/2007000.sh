#!/bin/bash
curl -X POST -d '{ "dpid": 33583104,"bdid": 252}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 33583104,"bdid": 252,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.7.1.2","ipv4_src":"10.2.2.4","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 6}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 33583104,"bdid": 252}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 33583104,"bdid": 278}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 33583104,"bdid": 278,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.2.2.4","ipv4_src":"10.7.2.2","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 1}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 33583104,"bdid": 278}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 33583104,"bdid": 318}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 33583104,"bdid": 318,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.2.0.2","ipv4_src":"10.7.2.2","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 1}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 33583104,"bdid": 318}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 33583104,"bdid": 421}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 33583104,"bdid": 421,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.2.2.4","ipv4_src":"10.7.0.3","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 1}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 33583104,"bdid": 421}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 33583104,"bdid": 447}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 33583104,"bdid": 447,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.7.1.2","ipv4_src":"10.2.0.2","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 6}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 33583104,"bdid": 447}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 33583104,"bdid": 461}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 33583104,"bdid": 461,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.7.2.2","ipv4_src":"10.2.0.2","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 7}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 33583104,"bdid": 461}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 33583104,"bdid": 539}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 33583104,"bdid": 539,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.7.2.2","ipv4_src":"10.2.2.4","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 7}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 33583104,"bdid": 539}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 33583104,"bdid": 578}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 33583104,"bdid": 578,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.7.0.3","ipv4_src":"10.2.0.2","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 5}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 33583104,"bdid": 578}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 33583104,"bdid": 616}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 33583104,"bdid": 616,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.2.2.4","ipv4_src":"10.7.1.2","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 1}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 33583104,"bdid": 616}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 33583104,"bdid": 630}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 33583104,"bdid": 630,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.2.0.2","ipv4_src":"10.7.0.3","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 1}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 33583104,"bdid": 630}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 33583104,"bdid": 669}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 33583104,"bdid": 669,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.2.0.2","ipv4_src":"10.7.1.2","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 1}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 33583104,"bdid": 669}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 33583104,"bdid": 734}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 33583104,"bdid": 734,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.7.0.3","ipv4_src":"10.2.2.4","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 5}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 33583104,"bdid": 734}' http://localhost:8080/stats/bundlectrl/commit 

