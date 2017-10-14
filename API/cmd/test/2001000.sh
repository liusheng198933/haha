#!/bin/bash
curl -X POST -d '{ "dpid": 33558528,"bdid": 5}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 33558528,"bdid": 5,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.1.0.2","ipv4_src":"10.1.1.1","dl_vlan":8},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4104},{"type": "OUTPUT","port": 3}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 33558528,"bdid": 5,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.1.1.1","ipv4_src":"10.1.0.2","dl_vlan":8},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4104},{"type": "OUTPUT","port": 4}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 33558528,"bdid": 5,"table_id": 0,"priority": 100,"match":{ "eth_type":2048,"ipv4_dst":"10.1.0.2","ipv4_src":"10.1.1.1","dl_vlan":9},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4105},{"type": "OUTPUT","port": "in_port"}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 33558528,"bdid": 5,"table_id": 0,"priority": 100,"match":{ "eth_type":2048,"ipv4_dst":"10.1.1.1","ipv4_src":"10.1.0.2","dl_vlan":9},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4105},{"type": "OUTPUT","port": "in_port"}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 33558528,"bdid": 5}' http://localhost:8080/stats/bundlectrl/commit 

