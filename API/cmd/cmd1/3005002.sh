#!/bin/bash
curl -X POST -d '{ "dpid": 50352130,"bdid": 473}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 50352130,"bdid": 473,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.5.2.2","ipv4_src":"10.2.2.4","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type": "POP_VLAN"}, {"type": "OUTPUT","port": 6}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 50352130,"bdid": 473}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 50352130,"bdid": 772}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 50352130,"bdid": 772,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.5.2.2","ipv4_src":"10.2.0.2","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type": "POP_VLAN"}, {"type": "OUTPUT","port": 6}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 50352130,"bdid": 772}' http://localhost:8080/stats/bundlectrl/commit 

