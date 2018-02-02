#!/bin/bash
curl -X POST -d '{ "dpid": 50339841,"bdid": 6}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 50339841,"bdid": 6,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.2.1.2","ipv4_src":"10.1.1.2"},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "OUTPUT","port": 4}]}]}' http://localhost:8080/stats/flowentry/add 

curl -X POST -d '{ "dpid": 50339841,"bdid": 6,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.1.1.2","ipv4_src":"10.2.1.2"},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "OUTPUT","port": 1}]}]}' http://localhost:8080/stats/flowentry/add 

curl -X POST -d '{ "dpid": 50339841,"bdid": 6}' http://localhost:8080/stats/bundlectrl/commit 

