#!/bin/bash
curl -X POST -d '{ "dpid": 16777217,"bdid": 25}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 16777217,"bdid": 25,"table_id": 0,"priority": 100,"match":{ "eth_type":2048,"ipv4_dst":"10.1.0.2","ipv4_src":"10.0.0.2","dl_vlan":9, "in_port": 2},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4105},{"type": "OUTPUT","port": 1}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 16777217,"bdid": 25,"table_id": 0,"priority": 100,"match":{ "eth_type":2048,"ipv4_dst":"10.1.0.2","ipv4_src":"10.0.0.2","dl_vlan":9, "in_port": 1},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4105},{"type": "OUTPUT","port": "in_port"}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 16777217,"bdid": 25}' http://localhost:8080/stats/bundlectrl/commit 

