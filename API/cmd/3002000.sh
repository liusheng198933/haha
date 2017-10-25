#!/bin/bash
curl -X POST -d '{ "dpid": 50339840,"bdid": 7}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 50339840,"bdid": 7,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.2.0.1","ipv4_src":"10.3.0.1","dl_vlan":8},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type": "POP_VLAN"}, {"type": "OUTPUT","port": 3}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 50339840,"bdid": 7,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.3.0.1","ipv4_src":"10.2.0.1"},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "OUTPUT","port": 1}]}]}' http://localhost:8080/stats/flowentry/add 

curl -X POST -d '{ "dpid": 50339840,"bdid": 7}' http://localhost:8080/stats/bundlectrl/commit 

