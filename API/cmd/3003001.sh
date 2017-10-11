#!/bin/bash
curl -X POST -d '{ "dpid": 50343937,"bdid": 3}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 50343937,"bdid": 3,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.3.1.1/255.255.255.255","ipv4_src":"10.1.0.2/255.255.255.255","dl_vlan":8},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type": "POP_VLAN"}, {"type": "OUTPUT","port": 3}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 50343937,"bdid": 3,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.1.0.2/255.255.255.255","ipv4_src":"10.3.1.1/255.255.255.255"},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "PUSH_VLAN","ethertype": 33024}, {"type": "SET_NW_TTL","nw_ttl": 15}, {"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4104},{"type": "OUTPUT","port": 1}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 50343937,"bdid": 3}' http://localhost:8080/stats/bundlectrl/commit 

