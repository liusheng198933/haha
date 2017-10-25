#!/bin/bash
curl -X POST -d '{ "dpid": 33562626,"bdid": 408}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 33562626,"bdid": 408,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.2.1.1","ipv4_src":"10.3.0.1","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 6}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 33562626,"bdid": 408}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 33562626,"bdid": 486}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 33562626,"bdid": 486,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.2.1.3","ipv4_src":"10.3.0.1","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 6}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 33562626,"bdid": 486}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 33562626,"bdid": 707}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 33562626,"bdid": 707,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.3.0.1","ipv4_src":"10.2.1.1","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 1}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 33562626,"bdid": 707}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 33562626,"bdid": 837}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 33562626,"bdid": 837,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.3.0.1","ipv4_src":"10.2.1.3","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 1}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 33562626,"bdid": 837}' http://localhost:8080/stats/bundlectrl/commit 

