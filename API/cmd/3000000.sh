#!/bin/bash
curl -X POST -d '{ "dpid": 50331648,"bdid": 7}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 50331648,"bdid": 7,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.1.0.2","ipv4_src":"10.0.0.2"},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "OUTPUT","port": 1}]}]}' http://localhost:8080/stats/flowentry/add 

curl -X POST -d '{ "dpid": 50331648,"bdid": 7,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.0.0.2","ipv4_src":"10.1.0.2"},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "OUTPUT","port": 4}]}]}' http://localhost:8080/stats/flowentry/add 

curl -X POST -d '{ "dpid": 50331648,"bdid": 7}' http://localhost:8080/stats/bundlectrl/commit 

