#!/bin/bash
curl -X POST -d '{ "dpid": 50335744,"bdid": 15}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 50335744,"bdid": 15,"table_id": 0,"priority": 0,"match":{ "eth_type":2048,"ipv4_dst":"10.1.0.1","ipv4_src":"10.2.0.2","dl_vlan":9},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type": "POP_VLAN"}, {"type": "OUTPUT","port": 3}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 50335744,"bdid": 15,"table_id": 0,"priority": 9,"match":{ "eth_type":2048,"ipv4_dst":"10.1.0.1","ipv4_src":"10.2.0.2","dl_vlan":9},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type": "POP_VLAN"}, {"type": "OUTPUT","port": 3}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 50335744,"bdid": 15}' http://localhost:8080/stats/bundlectrl/commit 

