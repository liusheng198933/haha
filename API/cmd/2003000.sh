#!/bin/bash
curl -X POST -d '{ "dpid": 33566720,"bdid": 2}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 33566720,"bdid": 2,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.3.1.2","ipv4_src":"10.0.1.1"},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "OUTPUT","port": 4}]}]}' http://localhost:8080/stats/flowentry/add 

curl -X POST -d '{ "dpid": 33566720,"bdid": 2,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.0.1.1","ipv4_src":"10.3.1.2"},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "OUTPUT","port": 1}]}]}' http://localhost:8080/stats/flowentry/add 

curl -X POST -d '{ "dpid": 33566720,"bdid": 2}' http://localhost:8080/stats/bundlectrl/commit 

