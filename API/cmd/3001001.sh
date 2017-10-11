#!/bin/bash
curl -X POST -d '{ "dpid": 50335745,"bdid": 6}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 50335745,"bdid": 6,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.1.0.2","ipv4_src":"10.1.1.1"},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "PUSH_VLAN","ethertype": 33024}, {"type": "SET_NW_TTL","nw_ttl": 15}, {"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4104},{"type": "OUTPUT","port": 1}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 50335745,"bdid": 6,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.1.0.2","ipv4_src":"10.1.1.1"},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "PUSH_VLAN","ethertype": 33024}, {"type": "SET_NW_TTL","nw_ttl": 15}, {"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4097},{"type": "OUTPUT","port": 2}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 50335745,"bdid": 6}' http://localhost:8080/stats/bundlectrl/commit 

