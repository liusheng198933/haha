#!/bin/bash
curl -X POST -d '{ "dpid": 9,"bdid": 9}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 9,"bdid": 9,"table_id": 0,"priority": 2,"match":{ "eth_type":2048,"ipv4_dst":"10.0.1.4/255.255.255.255","ipv4_src":"10.0.1.1/255.255.255.255","dl_vlan":1},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type":"SET_FIELD","field":"vlan_vid","value": 4097},{"type": "OUTPUT","port": 4}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 9,"bdid": 9,"table_id": 0,"priority": 2,"match":{ "eth_type":2048,"ipv4_dst":"10.0.1.4/255.255.255.255","ipv4_src":"10.0.1.1/255.255.255.255","dl_vlan":3},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type":"SET_FIELD","field":"vlan_vid","value": 4099},{"type": "OUTPUT","port": 3}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 9,"bdid": 9}' http://localhost:8080/stats/bundlectrl/commit 

