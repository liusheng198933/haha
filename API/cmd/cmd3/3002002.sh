#!/bin/bash
curl -X POST -d '{ "dpid": 50339842,"bdid": 288}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 50339842,"bdid": 288,"table_id": 0,"priority": 9,"match":{ "eth_type":2048,"ipv4_dst":"10.2.2.4","ipv4_src":"10.7.2.2","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type": "POP_VLAN"}, {"type": "OUTPUT","port": 8}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 50339842,"bdid": 288,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.2.2.4","ipv4_src":"10.7.2.2","dl_vlan":5},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type": "POP_VLAN"}, {"type": "OUTPUT","port": 8}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 50339842,"bdid": 288,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.2.2.4","ipv4_src":"10.7.2.2","dl_vlan":5},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type": "POP_VLAN"}, {"type": "OUTPUT","port": 8}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 50339842,"bdid": 288}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 50339842,"bdid": 431}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 50339842,"bdid": 431,"table_id": 0,"priority": 9,"match":{ "eth_type":2048,"ipv4_dst":"10.2.2.4","ipv4_src":"10.7.0.3","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type": "POP_VLAN"}, {"type": "OUTPUT","port": 8}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 50339842,"bdid": 431,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.2.2.4","ipv4_src":"10.7.0.3","dl_vlan":5},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type": "POP_VLAN"}, {"type": "OUTPUT","port": 8}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 50339842,"bdid": 431,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.2.2.4","ipv4_src":"10.7.0.3","dl_vlan":5},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type": "POP_VLAN"}, {"type": "OUTPUT","port": 8}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 50339842,"bdid": 431}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 50339842,"bdid": 600}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 50339842,"bdid": 600,"table_id": 0,"priority": 9,"match":{ "eth_type":2048,"ipv4_dst":"10.2.2.4","ipv4_src":"10.3.2.2","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type": "POP_VLAN"}, {"type": "OUTPUT","port": 8}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 50339842,"bdid": 600,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.2.2.4","ipv4_src":"10.3.2.2","dl_vlan":5},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type": "POP_VLAN"}, {"type": "OUTPUT","port": 8}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 50339842,"bdid": 600,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.2.2.4","ipv4_src":"10.3.2.2","dl_vlan":5},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type": "POP_VLAN"}, {"type": "OUTPUT","port": 8}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 50339842,"bdid": 600}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 50339842,"bdid": 613}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 50339842,"bdid": 613,"table_id": 0,"priority": 9,"match":{ "eth_type":2048,"ipv4_dst":"10.2.2.4","ipv4_src":"10.6.2.4","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type": "POP_VLAN"}, {"type": "OUTPUT","port": 8}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 50339842,"bdid": 613,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.2.2.4","ipv4_src":"10.6.2.4","dl_vlan":5},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type": "POP_VLAN"}, {"type": "OUTPUT","port": 8}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 50339842,"bdid": 613,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.2.2.4","ipv4_src":"10.6.2.4","dl_vlan":5},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type": "POP_VLAN"}, {"type": "OUTPUT","port": 8}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 50339842,"bdid": 613}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 50339842,"bdid": 626}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 50339842,"bdid": 626,"table_id": 0,"priority": 9,"match":{ "eth_type":2048,"ipv4_dst":"10.2.2.4","ipv4_src":"10.7.1.2","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type": "POP_VLAN"}, {"type": "OUTPUT","port": 8}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 50339842,"bdid": 626,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.2.2.4","ipv4_src":"10.7.1.2","dl_vlan":5},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type": "POP_VLAN"}, {"type": "OUTPUT","port": 8}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 50339842,"bdid": 626,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.2.2.4","ipv4_src":"10.7.1.2","dl_vlan":5},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type": "POP_VLAN"}, {"type": "OUTPUT","port": 8}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 50339842,"bdid": 626}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 50339842,"bdid": 729}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 50339842,"bdid": 729,"table_id": 0,"priority": 9,"match":{ "eth_type":2048,"ipv4_dst":"10.2.2.4","ipv4_src":"10.5.2.2","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type": "POP_VLAN"}, {"type": "OUTPUT","port": 8}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 50339842,"bdid": 729,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.2.2.4","ipv4_src":"10.5.2.2","dl_vlan":5},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type": "POP_VLAN"}, {"type": "OUTPUT","port": 8}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 50339842,"bdid": 729,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.2.2.4","ipv4_src":"10.5.2.2","dl_vlan":5},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type": "POP_VLAN"}, {"type": "OUTPUT","port": 8}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 50339842,"bdid": 729}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 50339842,"bdid": 821}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 50339842,"bdid": 821,"table_id": 0,"priority": 9,"match":{ "eth_type":2048,"ipv4_dst":"10.2.2.4","ipv4_src":"10.3.3.4","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type": "POP_VLAN"}, {"type": "OUTPUT","port": 8}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 50339842,"bdid": 821,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.2.2.4","ipv4_src":"10.3.3.4","dl_vlan":5},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type": "POP_VLAN"}, {"type": "OUTPUT","port": 8}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 50339842,"bdid": 821,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.2.2.4","ipv4_src":"10.3.3.4","dl_vlan":5},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type": "POP_VLAN"}, {"type": "OUTPUT","port": 8}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 50339842,"bdid": 821}' http://localhost:8080/stats/bundlectrl/commit 

