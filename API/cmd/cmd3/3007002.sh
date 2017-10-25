#!/bin/bash
curl -X POST -d '{ "dpid": 50360322,"bdid": 443}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 50360322,"bdid": 443,"table_id": 0,"priority": 9,"match":{ "eth_type":2048,"ipv4_dst":"10.7.2.2","ipv4_src":"10.3.0.1","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type": "POP_VLAN"}, {"type": "OUTPUT","port": 6}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 50360322,"bdid": 443,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.7.2.2","ipv4_src":"10.3.0.1","dl_vlan":5},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type": "POP_VLAN"}, {"type": "OUTPUT","port": 6}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 50360322,"bdid": 443,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.7.2.2","ipv4_src":"10.3.0.1","dl_vlan":5},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type": "POP_VLAN"}, {"type": "OUTPUT","port": 6}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 50360322,"bdid": 443}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 50360322,"bdid": 468}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 50360322,"bdid": 468,"table_id": 0,"priority": 9,"match":{ "eth_type":2048,"ipv4_dst":"10.7.2.2","ipv4_src":"10.2.0.2","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type": "POP_VLAN"}, {"type": "OUTPUT","port": 6}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 50360322,"bdid": 468,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.7.2.2","ipv4_src":"10.2.0.2","dl_vlan":5},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type": "POP_VLAN"}, {"type": "OUTPUT","port": 6}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 50360322,"bdid": 468,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.7.2.2","ipv4_src":"10.2.0.2","dl_vlan":5},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type": "POP_VLAN"}, {"type": "OUTPUT","port": 6}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 50360322,"bdid": 468}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 50360322,"bdid": 546}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 50360322,"bdid": 546,"table_id": 0,"priority": 9,"match":{ "eth_type":2048,"ipv4_dst":"10.7.2.2","ipv4_src":"10.2.2.4","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type": "POP_VLAN"}, {"type": "OUTPUT","port": 6}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 50360322,"bdid": 546,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.7.2.2","ipv4_src":"10.2.2.4","dl_vlan":5},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type": "POP_VLAN"}, {"type": "OUTPUT","port": 6}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 50360322,"bdid": 546,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.7.2.2","ipv4_src":"10.2.2.4","dl_vlan":5},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type": "POP_VLAN"}, {"type": "OUTPUT","port": 6}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 50360322,"bdid": 546}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 50360322,"bdid": 689}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 50360322,"bdid": 689,"table_id": 0,"priority": 9,"match":{ "eth_type":2048,"ipv4_dst":"10.7.2.2","ipv4_src":"10.4.0.1","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type": "POP_VLAN"}, {"type": "OUTPUT","port": 6}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 50360322,"bdid": 689,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.7.2.2","ipv4_src":"10.4.0.1","dl_vlan":5},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type": "POP_VLAN"}, {"type": "OUTPUT","port": 6}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 50360322,"bdid": 689,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.7.2.2","ipv4_src":"10.4.0.1","dl_vlan":5},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type": "POP_VLAN"}, {"type": "OUTPUT","port": 6}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 50360322,"bdid": 689}' http://localhost:8080/stats/bundlectrl/commit 

