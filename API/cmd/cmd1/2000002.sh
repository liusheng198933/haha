#!/bin/bash
curl -X POST -d '{ "dpid": 33554434,"bdid": 307}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 33554434,"bdid": 307,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.3.0.1","ipv4_src":"10.0.0.3","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 1}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 33554434,"bdid": 307}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 33554434,"bdid": 762}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 33554434,"bdid": 762,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.0.0.3","ipv4_src":"10.3.0.1","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 5}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 33554434,"bdid": 762}' http://localhost:8080/stats/bundlectrl/commit 

