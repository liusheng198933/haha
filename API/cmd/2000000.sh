#!/bin/bash
curl -X POST -d '{ "dpid": 33554432,"bdid": 9}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 33554432,"bdid": 9,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.1.0.2","ipv4_src":"10.0.0.2"},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "OUTPUT","port": 2}]}]}' http://localhost:8080/stats/flowentry/delete_strict 

curl -X POST -d '{ "dpid": 33554432,"bdid": 9,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.1.0.2","ipv4_src":"10.0.0.2"},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "OUTPUT","port": 1}]}]}' http://localhost:8080/stats/flowentry/add 

curl -X POST -d '{ "dpid": 33554432,"bdid": 9}' http://localhost:8080/stats/bundlectrl/commit 

