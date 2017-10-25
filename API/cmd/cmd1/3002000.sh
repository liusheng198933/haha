#!/bin/bash
curl -X POST -d '{ "dpid": 50339840,"bdid": 320}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 50339840,"bdid": 320,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.2.0.2","ipv4_src":"10.7.2.2","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type": "POP_VLAN"}, {"type": "OUTPUT","port": 6}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 50339840,"bdid": 320}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 50339840,"bdid": 632}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 50339840,"bdid": 632,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.2.0.2","ipv4_src":"10.7.0.3","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type": "POP_VLAN"}, {"type": "OUTPUT","port": 6}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 50339840,"bdid": 632}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 50339840,"bdid": 658}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 50339840,"bdid": 658,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.2.0.2","ipv4_src":"10.5.2.2","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type": "POP_VLAN"}, {"type": "OUTPUT","port": 6}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 50339840,"bdid": 658}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 50339840,"bdid": 671}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 50339840,"bdid": 671,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.2.0.2","ipv4_src":"10.7.1.2","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type": "POP_VLAN"}, {"type": "OUTPUT","port": 6}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 50339840,"bdid": 671}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 50339840,"bdid": 696}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 50339840,"bdid": 696,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.2.0.2","ipv4_src":"10.6.2.4","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type": "POP_VLAN"}, {"type": "OUTPUT","port": 6}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 50339840,"bdid": 696}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 50339840,"bdid": 749}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 50339840,"bdid": 749,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.2.0.2","ipv4_src":"10.3.2.2","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type": "POP_VLAN"}, {"type": "OUTPUT","port": 6}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 50339840,"bdid": 749}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 50339840,"bdid": 827}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 50339840,"bdid": 827,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.2.0.2","ipv4_src":"10.3.3.4","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type": "POP_VLAN"}, {"type": "OUTPUT","port": 6}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 50339840,"bdid": 827}' http://localhost:8080/stats/bundlectrl/commit 

