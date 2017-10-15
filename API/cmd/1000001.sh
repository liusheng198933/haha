#!/bin/bash
curl -X POST -d '{ "dpid": 16777217,"table_id": 0,"priority": 200,"match":{ "dl_vlan":100},"instructions":[{"type":"APPLY_ACTIONS","actions":[ ]}]}' http://localhost:8080/stats/flowentry/add 

