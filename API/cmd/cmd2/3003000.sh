#!/bin/bash
curl -X POST -d '{ "dpid": 50343936,"bdid": 308}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 50343936,"bdid": 308,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.3.0.1","ipv4_src":"10.0.0.3","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type": "POP_VLAN"}, {"type": "OUTPUT","port": 5}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 50343936,"bdid": 308,"table_id": 0,"priority": 9,"match":{ "eth_type":2048,"ipv4_dst":"10.3.0.1","ipv4_src":"10.0.0.3","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type": "POP_VLAN"}, {"type": "OUTPUT","port": 5}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 50343936,"bdid": 308}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 50343936,"bdid": 386}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 50343936,"bdid": 386,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.3.0.1","ipv4_src":"10.4.2.3","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type": "POP_VLAN"}, {"type": "OUTPUT","port": 5}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 50343936,"bdid": 386,"table_id": 0,"priority": 9,"match":{ "eth_type":2048,"ipv4_dst":"10.3.0.1","ipv4_src":"10.4.2.3","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type": "POP_VLAN"}, {"type": "OUTPUT","port": 5}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 50343936,"bdid": 386}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 50343936,"bdid": 399}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 50343936,"bdid": 399,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.3.0.1","ipv4_src":"10.7.2.2","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type": "POP_VLAN"}, {"type": "OUTPUT","port": 5}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 50343936,"bdid": 399,"table_id": 0,"priority": 9,"match":{ "eth_type":2048,"ipv4_dst":"10.3.0.1","ipv4_src":"10.7.2.2","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type": "POP_VLAN"}, {"type": "OUTPUT","port": 5}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 50343936,"bdid": 399}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 50343936,"bdid": 517}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 50343936,"bdid": 517,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.3.0.1","ipv4_src":"10.1.2.4","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type": "POP_VLAN"}, {"type": "OUTPUT","port": 5}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 50343936,"bdid": 517,"table_id": 0,"priority": 9,"match":{ "eth_type":2048,"ipv4_dst":"10.3.0.1","ipv4_src":"10.1.2.4","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type": "POP_VLAN"}, {"type": "OUTPUT","port": 5}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 50343936,"bdid": 517}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 50343936,"bdid": 529}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 50343936,"bdid": 529,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.3.0.1","ipv4_src":"10.4.0.2","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type": "POP_VLAN"}, {"type": "OUTPUT","port": 5}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 50343936,"bdid": 529,"table_id": 0,"priority": 9,"match":{ "eth_type":2048,"ipv4_dst":"10.3.0.1","ipv4_src":"10.4.0.2","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type": "POP_VLAN"}, {"type": "OUTPUT","port": 5}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 50343936,"bdid": 529}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 50343936,"bdid": 555}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 50343936,"bdid": 555,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.3.0.1","ipv4_src":"10.4.3.2","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type": "POP_VLAN"}, {"type": "OUTPUT","port": 5}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 50343936,"bdid": 555,"table_id": 0,"priority": 9,"match":{ "eth_type":2048,"ipv4_dst":"10.3.0.1","ipv4_src":"10.4.3.2","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type": "POP_VLAN"}, {"type": "OUTPUT","port": 5}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 50343936,"bdid": 555}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 50343936,"bdid": 714}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 50343936,"bdid": 714,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.3.0.1","ipv4_src":"10.2.1.1","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type": "POP_VLAN"}, {"type": "OUTPUT","port": 5}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 50343936,"bdid": 714,"table_id": 0,"priority": 9,"match":{ "eth_type":2048,"ipv4_dst":"10.3.0.1","ipv4_src":"10.2.1.1","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type": "POP_VLAN"}, {"type": "OUTPUT","port": 5}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 50343936,"bdid": 714}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 50343936,"bdid": 844}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 50343936,"bdid": 844,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.3.0.1","ipv4_src":"10.2.1.3","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type": "POP_VLAN"}, {"type": "OUTPUT","port": 5}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 50343936,"bdid": 844,"table_id": 0,"priority": 9,"match":{ "eth_type":2048,"ipv4_dst":"10.3.0.1","ipv4_src":"10.2.1.3","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type": "POP_VLAN"}, {"type": "OUTPUT","port": 5}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 50343936,"bdid": 844}' http://localhost:8080/stats/bundlectrl/commit 

