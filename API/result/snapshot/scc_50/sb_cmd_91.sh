#!/bin/bash
curl -X POST -d '{ "dpid": 16777217,"table_id": 0,"priority": 100,"match":{ "eth_type":2048,"ipv4_dst":"10.2.2.4","ipv4_src":"10.5.2.2","dl_vlan":92},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type":"SET_FIELD","field":"vlan_vid","value": 4188},{"type": "OUTPUT","port": "in_port"}]}]}' http://localhost:8080/stats/flowentry/delete_strict 
