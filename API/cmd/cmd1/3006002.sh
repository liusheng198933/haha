#!/bin/bash
curl -X POST -d '{ "dpid": 50356226,"bdid": 343}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 50356226,"bdid": 343,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.6.2.4","ipv4_src":"10.2.0.2","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type": "POP_VLAN"}, {"type": "OUTPUT","port": 8}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 50356226,"bdid": 343}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 50356226,"bdid": 785}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 50356226,"bdid": 785,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.6.2.4","ipv4_src":"10.2.2.4","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type": "POP_VLAN"}, {"type": "OUTPUT","port": 8}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 50356226,"bdid": 785}' http://localhost:8080/stats/bundlectrl/commit 

