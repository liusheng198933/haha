#!/bin/bash
curl -X POST -d '{ "dpid": 16777225,"table_id": 0,"priority": 100,"match":{ "eth_type":2048,"ipv4_dst":"10.7.1.2","ipv4_src":"10.6.2.1","dl_vlan":2326},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type":"SET_FIELD","field":"vlan_vid","value": 6422},{"type": "OUTPUT","port": "in_port"}]}]}' http://localhost:8080/stats/flowentry/delete_strict 

