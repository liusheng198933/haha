#!/bin/bash
curl -X POST -d '{ "dpid": 50339842,"bdid": 280}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 50339842,"bdid": 280,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.2.2.4","ipv4_src":"10.7.2.2","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type": "POP_VLAN"}, {"type": "OUTPUT","port": 8}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 50339842,"bdid": 280}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 50339842,"bdid": 423}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 50339842,"bdid": 423,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.2.2.4","ipv4_src":"10.7.0.3","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type": "POP_VLAN"}, {"type": "OUTPUT","port": 8}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 50339842,"bdid": 423}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 50339842,"bdid": 592}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 50339842,"bdid": 592,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.2.2.4","ipv4_src":"10.3.2.2","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type": "POP_VLAN"}, {"type": "OUTPUT","port": 8}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 50339842,"bdid": 592}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 50339842,"bdid": 604}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 50339842,"bdid": 604,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.2.2.4","ipv4_src":"10.6.2.4","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type": "POP_VLAN"}, {"type": "OUTPUT","port": 8}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 50339842,"bdid": 604}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 50339842,"bdid": 618}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 50339842,"bdid": 618,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.2.2.4","ipv4_src":"10.7.1.2","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type": "POP_VLAN"}, {"type": "OUTPUT","port": 8}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 50339842,"bdid": 618}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 50339842,"bdid": 721}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 50339842,"bdid": 721,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.2.2.4","ipv4_src":"10.5.2.2","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type": "POP_VLAN"}, {"type": "OUTPUT","port": 8}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 50339842,"bdid": 721}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 50339842,"bdid": 813}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 50339842,"bdid": 813,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.2.2.4","ipv4_src":"10.3.3.4","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type": "POP_VLAN"}, {"type": "OUTPUT","port": 8}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 50339842,"bdid": 813}' http://localhost:8080/stats/bundlectrl/commit 

