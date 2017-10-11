#!/bin/bash
curl -X POST -d '{ "dpid": 33562624,"bdid": 2}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 33562624,"bdid": 2,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.2.0.1","ipv4_src":"10.0.0.2","dl_vlan":8},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4104},{"type": "OUTPUT","port": 3}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 33562624,"bdid": 2,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.0.0.2","ipv4_src":"10.2.0.1","dl_vlan":8},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4104},{"type": "OUTPUT","port": 1}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 33562624,"bdid": 2}' http://localhost:8080/stats/bundlectrl/commit 

