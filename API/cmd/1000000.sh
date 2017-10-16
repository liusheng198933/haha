#!/bin/bash
curl -X POST -d '{ "dpid": 16777216,"table_id": 0,"priority": 200,"instructions":[{"type":"APPLY_ACTIONS","actions":[ ]}]}' http://localhost:8080/stats/flowentry/add 

