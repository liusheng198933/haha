#!/bin/bash
curl -X POST -d '{ "dpid": 33583106,"bdid": 397}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 33583106,"bdid": 397,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.3.0.1","ipv4_src":"10.7.2.2","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 1}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 33583106,"bdid": 397}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 33583106,"bdid": 436}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 33583106,"bdid": 436,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.7.2.2","ipv4_src":"10.3.0.1","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 7}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 33583106,"bdid": 436}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 33583106,"bdid": 683}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 33583106,"bdid": 683,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.7.2.2","ipv4_src":"10.4.0.1","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 7}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 33583106,"bdid": 683}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 33583106,"bdid": 801}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 33583106,"bdid": 801,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.4.0.1","ipv4_src":"10.7.2.2","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 4}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 33583106,"bdid": 801}' http://localhost:8080/stats/bundlectrl/commit 

