#!/bin/bash
curl -X POST -d '{ "dpid": 33558529,"bdid": 8}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 33558529,"bdid": 8,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.1.0.2","ipv4_src":"10.1.1.1","dl_vlan":9},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4097},{"type": "OUTPUT","port": 3}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 33558529,"bdid": 8,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.1.1.1","ipv4_src":"10.1.0.2","dl_vlan":9},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4097},{"type": "OUTPUT","port": 4}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 33558529,"bdid": 8}' http://localhost:8080/stats/bundlectrl/commit 

