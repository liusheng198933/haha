#!/bin/bash
curl -X POST -d '{ "dpid": 16777225,"table_id": 0,"priority": 100,"match":{ "eth_type":2048,"ipv4_dst":"10.3.1.3","ipv4_src":"10.7.1.3","dl_vlan":2511},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type":"SET_FIELD","field":"vlan_vid","value": 6607},{"type": "OUTPUT","port": "in_port"}]}]}' http://localhost:8080/stats/flowentry/delete_strict 

