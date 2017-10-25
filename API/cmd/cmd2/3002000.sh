#!/bin/bash
curl -X POST -d '{ "dpid": 50339840,"bdid": 324}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 50339840,"bdid": 324,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.2.0.2","ipv4_src":"10.7.2.2","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type": "POP_VLAN"}, {"type": "OUTPUT","port": 6}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 50339840,"bdid": 324,"table_id": 0,"priority": 9,"match":{ "eth_type":2048,"ipv4_dst":"10.2.0.2","ipv4_src":"10.7.2.2","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type": "POP_VLAN"}, {"type": "OUTPUT","port": 6}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 50339840,"bdid": 324}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 50339840,"bdid": 636}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 50339840,"bdid": 636,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.2.0.2","ipv4_src":"10.7.0.3","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type": "POP_VLAN"}, {"type": "OUTPUT","port": 6}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 50339840,"bdid": 636,"table_id": 0,"priority": 9,"match":{ "eth_type":2048,"ipv4_dst":"10.2.0.2","ipv4_src":"10.7.0.3","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type": "POP_VLAN"}, {"type": "OUTPUT","port": 6}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 50339840,"bdid": 636}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 50339840,"bdid": 662}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 50339840,"bdid": 662,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.2.0.2","ipv4_src":"10.5.2.2","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type": "POP_VLAN"}, {"type": "OUTPUT","port": 6}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 50339840,"bdid": 662,"table_id": 0,"priority": 9,"match":{ "eth_type":2048,"ipv4_dst":"10.2.0.2","ipv4_src":"10.5.2.2","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type": "POP_VLAN"}, {"type": "OUTPUT","port": 6}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 50339840,"bdid": 662}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 50339840,"bdid": 675}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 50339840,"bdid": 675,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.2.0.2","ipv4_src":"10.7.1.2","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type": "POP_VLAN"}, {"type": "OUTPUT","port": 6}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 50339840,"bdid": 675,"table_id": 0,"priority": 9,"match":{ "eth_type":2048,"ipv4_dst":"10.2.0.2","ipv4_src":"10.7.1.2","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type": "POP_VLAN"}, {"type": "OUTPUT","port": 6}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 50339840,"bdid": 675}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 50339840,"bdid": 700}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 50339840,"bdid": 700,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.2.0.2","ipv4_src":"10.6.2.4","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type": "POP_VLAN"}, {"type": "OUTPUT","port": 6}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 50339840,"bdid": 700,"table_id": 0,"priority": 9,"match":{ "eth_type":2048,"ipv4_dst":"10.2.0.2","ipv4_src":"10.6.2.4","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type": "POP_VLAN"}, {"type": "OUTPUT","port": 6}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 50339840,"bdid": 700}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 50339840,"bdid": 753}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 50339840,"bdid": 753,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.2.0.2","ipv4_src":"10.3.2.2","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type": "POP_VLAN"}, {"type": "OUTPUT","port": 6}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 50339840,"bdid": 753,"table_id": 0,"priority": 9,"match":{ "eth_type":2048,"ipv4_dst":"10.2.0.2","ipv4_src":"10.3.2.2","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type": "POP_VLAN"}, {"type": "OUTPUT","port": 6}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 50339840,"bdid": 753}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 50339840,"bdid": 831}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 50339840,"bdid": 831,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.2.0.2","ipv4_src":"10.3.3.4","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type": "POP_VLAN"}, {"type": "OUTPUT","port": 6}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 50339840,"bdid": 831,"table_id": 0,"priority": 9,"match":{ "eth_type":2048,"ipv4_dst":"10.2.0.2","ipv4_src":"10.3.3.4","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type": "POP_VLAN"}, {"type": "OUTPUT","port": 6}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 50339840,"bdid": 831}' http://localhost:8080/stats/bundlectrl/commit 

