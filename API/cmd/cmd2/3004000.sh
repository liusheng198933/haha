#!/bin/bash
curl -X POST -d '{ "dpid": 50348032,"bdid": 373}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 50348032,"bdid": 373,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.4.0.2","ipv4_src":"10.3.0.1","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type": "POP_VLAN"}, {"type": "OUTPUT","port": 6}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 50348032,"bdid": 373,"table_id": 0,"priority": 9,"match":{ "eth_type":2048,"ipv4_dst":"10.4.0.2","ipv4_src":"10.3.0.1","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type": "POP_VLAN"}, {"type": "OUTPUT","port": 6}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 50348032,"bdid": 373}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 50348032,"bdid": 802}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 50348032,"bdid": 802,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.4.0.1","ipv4_src":"10.7.2.2","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type": "POP_VLAN"}, {"type": "OUTPUT","port": 5}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 50348032,"bdid": 802,"table_id": 0,"priority": 9,"match":{ "eth_type":2048,"ipv4_dst":"10.4.0.1","ipv4_src":"10.7.2.2","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type": "POP_VLAN"}, {"type": "OUTPUT","port": 5}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 50348032,"bdid": 802}' http://localhost:8080/stats/bundlectrl/commit 

