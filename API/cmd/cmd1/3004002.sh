#!/bin/bash
curl -X POST -d '{ "dpid": 50348034,"bdid": 501}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 50348034,"bdid": 501,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.4.2.3","ipv4_src":"10.3.0.1","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type": "POP_VLAN"}, {"type": "OUTPUT","port": 7}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 50348034,"bdid": 501}' http://localhost:8080/stats/bundlectrl/commit 

