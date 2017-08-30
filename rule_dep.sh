#!/bin/bash

curl -X POST -d '{"dpid": 1, "table_id": 0, "priority": 1, "match":{"eth_type":0x0806},"instructions": [{"type": "APPLY_ACTIONS","actions": [{"port": "FLOOD","type": "OUTPUT"}]}]}' "http://localhost:8080/stats/flowentry/add"
