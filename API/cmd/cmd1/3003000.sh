#!/bin/bash
curl -X POST -d '{ "dpid": 50343936,"bdid": 304}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 50343936,"bdid": 304,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.3.0.1","ipv4_src":"10.0.0.3","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type": "POP_VLAN"}, {"type": "OUTPUT","port": 5}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 50343936,"bdid": 304}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 50343936,"bdid": 382}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 50343936,"bdid": 382,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.3.0.1","ipv4_src":"10.4.2.3","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type": "POP_VLAN"}, {"type": "OUTPUT","port": 5}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 50343936,"bdid": 382}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 50343936,"bdid": 395}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 50343936,"bdid": 395,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.3.0.1","ipv4_src":"10.7.2.2","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type": "POP_VLAN"}, {"type": "OUTPUT","port": 5}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 50343936,"bdid": 395}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 50343936,"bdid": 513}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 50343936,"bdid": 513,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.3.0.1","ipv4_src":"10.1.2.4","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type": "POP_VLAN"}, {"type": "OUTPUT","port": 5}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 50343936,"bdid": 513}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 50343936,"bdid": 525}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 50343936,"bdid": 525,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.3.0.1","ipv4_src":"10.4.0.2","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type": "POP_VLAN"}, {"type": "OUTPUT","port": 5}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 50343936,"bdid": 525}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 50343936,"bdid": 551}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 50343936,"bdid": 551,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.3.0.1","ipv4_src":"10.4.3.2","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type": "POP_VLAN"}, {"type": "OUTPUT","port": 5}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 50343936,"bdid": 551}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 50343936,"bdid": 710}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 50343936,"bdid": 710,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.3.0.1","ipv4_src":"10.2.1.1","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type": "POP_VLAN"}, {"type": "OUTPUT","port": 5}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 50343936,"bdid": 710}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 50343936,"bdid": 840}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 50343936,"bdid": 840,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.3.0.1","ipv4_src":"10.2.1.3","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type": "POP_VLAN"}, {"type": "OUTPUT","port": 5}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 50343936,"bdid": 840}' http://localhost:8080/stats/bundlectrl/commit 

