#!/bin/bash
curl -X POST -d '{ "dpid": 50343938,"bdid": 272}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 50343938,"bdid": 272,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.3.2.2","ipv4_src":"10.2.2.4","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type": "POP_VLAN"}, {"type": "OUTPUT","port": 6}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 50343938,"bdid": 272,"table_id": 0,"priority": 9,"match":{ "eth_type":2048,"ipv4_dst":"10.3.2.2","ipv4_src":"10.2.2.4","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type": "POP_VLAN"}, {"type": "OUTPUT","port": 6}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 50343938,"bdid": 272}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 50343938,"bdid": 363}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 50343938,"bdid": 363,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.3.2.2","ipv4_src":"10.2.0.2","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type": "POP_VLAN"}, {"type": "OUTPUT","port": 6}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 50343938,"bdid": 363,"table_id": 0,"priority": 9,"match":{ "eth_type":2048,"ipv4_dst":"10.3.2.2","ipv4_src":"10.2.0.2","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type": "POP_VLAN"}, {"type": "OUTPUT","port": 6}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 50343938,"bdid": 363}' http://localhost:8080/stats/bundlectrl/commit 

