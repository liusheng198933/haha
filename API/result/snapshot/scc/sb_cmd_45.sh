#!/bin/bash
curl -X POST -d '{ "dpid": 16777231,"table_id": 0,"priority": 100,"match":{ "eth_type":2048,"ipv4_dst":"10.5.0.1","ipv4_src":"10.6.3.1","dl_vlan":2435},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type":"SET_FIELD","field":"vlan_vid","value": 6531},{"type": "OUTPUT","port": "in_port"}]}]}' http://localhost:8080/stats/flowentry/delete_strict 

