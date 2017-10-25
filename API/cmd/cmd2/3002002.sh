#!/bin/bash
curl -X POST -d '{ "dpid": 50339842,"bdid": 284}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 50339842,"bdid": 284,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.2.2.4","ipv4_src":"10.7.2.2","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type": "POP_VLAN"}, {"type": "OUTPUT","port": 8}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 50339842,"bdid": 284,"table_id": 0,"priority": 9,"match":{ "eth_type":2048,"ipv4_dst":"10.2.2.4","ipv4_src":"10.7.2.2","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type": "POP_VLAN"}, {"type": "OUTPUT","port": 8}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 50339842,"bdid": 284}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 50339842,"bdid": 427}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 50339842,"bdid": 427,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.2.2.4","ipv4_src":"10.7.0.3","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type": "POP_VLAN"}, {"type": "OUTPUT","port": 8}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 50339842,"bdid": 427,"table_id": 0,"priority": 9,"match":{ "eth_type":2048,"ipv4_dst":"10.2.2.4","ipv4_src":"10.7.0.3","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type": "POP_VLAN"}, {"type": "OUTPUT","port": 8}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 50339842,"bdid": 427}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 50339842,"bdid": 596}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 50339842,"bdid": 596,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.2.2.4","ipv4_src":"10.3.2.2","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type": "POP_VLAN"}, {"type": "OUTPUT","port": 8}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 50339842,"bdid": 596,"table_id": 0,"priority": 9,"match":{ "eth_type":2048,"ipv4_dst":"10.2.2.4","ipv4_src":"10.3.2.2","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type": "POP_VLAN"}, {"type": "OUTPUT","port": 8}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 50339842,"bdid": 596}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 50339842,"bdid": 608}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 50339842,"bdid": 608,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.2.2.4","ipv4_src":"10.6.2.4","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type": "POP_VLAN"}, {"type": "OUTPUT","port": 8}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 50339842,"bdid": 608,"table_id": 0,"priority": 9,"match":{ "eth_type":2048,"ipv4_dst":"10.2.2.4","ipv4_src":"10.6.2.4","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type": "POP_VLAN"}, {"type": "OUTPUT","port": 8}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 50339842,"bdid": 608}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 50339842,"bdid": 622}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 50339842,"bdid": 622,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.2.2.4","ipv4_src":"10.7.1.2","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type": "POP_VLAN"}, {"type": "OUTPUT","port": 8}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 50339842,"bdid": 622,"table_id": 0,"priority": 9,"match":{ "eth_type":2048,"ipv4_dst":"10.2.2.4","ipv4_src":"10.7.1.2","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type": "POP_VLAN"}, {"type": "OUTPUT","port": 8}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 50339842,"bdid": 622}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 50339842,"bdid": 725}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 50339842,"bdid": 725,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.2.2.4","ipv4_src":"10.5.2.2","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type": "POP_VLAN"}, {"type": "OUTPUT","port": 8}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 50339842,"bdid": 725,"table_id": 0,"priority": 9,"match":{ "eth_type":2048,"ipv4_dst":"10.2.2.4","ipv4_src":"10.5.2.2","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type": "POP_VLAN"}, {"type": "OUTPUT","port": 8}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 50339842,"bdid": 725}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 50339842,"bdid": 817}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 50339842,"bdid": 817,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.2.2.4","ipv4_src":"10.3.3.4","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type": "POP_VLAN"}, {"type": "OUTPUT","port": 8}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 50339842,"bdid": 817,"table_id": 0,"priority": 9,"match":{ "eth_type":2048,"ipv4_dst":"10.2.2.4","ipv4_src":"10.3.3.4","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type": "POP_VLAN"}, {"type": "OUTPUT","port": 8}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 50339842,"bdid": 817}' http://localhost:8080/stats/bundlectrl/commit 

