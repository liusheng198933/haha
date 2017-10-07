#!/bin/bash
curl -X POST -d '{ "dpid": 33566720,"bdid": 2}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 33566720,"bdid": 2,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.2.0.1","ipv4_src":"10.3.0.1","dl_vlan":8},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type":"SET_FIELD","field":"vlan_vid","value": 4104},{"type": "OUTPUT","port": 2}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 33566720,"bdid": 2,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.2.0.1","ipv4_src":"10.3.0.1","dl_vlan":10},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type":"SET_FIELD","field":"vlan_vid","value": 4106},{"type": "OUTPUT","port": 1}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 33566720,"bdid": 2}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 16777216,"bdid": 3}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 16777216,"bdid": 3,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.2.0.1","ipv4_src":"10.3.0.1","dl_vlan":10},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type":"SET_FIELD","field":"vlan_vid","value": 4104},{"type": "OUTPUT","port": 3}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 16777216,"bdid": 3}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 16777217,"bdid": 4}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 16777217,"bdid": 4,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.2.0.1","ipv4_src":"10.3.0.1","dl_vlan":8},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type":"SET_FIELD","field":"vlan_vid","value": 4104},{"type": "OUTPUT","port": 3}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 16777217,"bdid": 4,"table_id": 0,"priority": 100,"match":{ "eth_type":2048,"ipv4_dst":"10.2.0.1","ipv4_src":"10.3.0.1","dl_vlan":10},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type":"SET_FIELD","field":"vlan_vid","value": 4106},{"type": "OUTPUT","port": "in_port"}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 16777217,"bdid": 4}' http://localhost:8080/stats/bundlectrl/commit 

