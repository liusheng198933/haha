#!/bin/bash
curl -X DELETE http://localhost:8080/stats/flowentry/clear/17895697 

curl -X DELETE http://localhost:8080/stats/flowentry/clear/16777216 

curl -X DELETE http://localhost:8080/stats/flowentry/clear/16777217 

curl -X DELETE http://localhost:8080/stats/flowentry/clear/16777218 

curl -X DELETE http://localhost:8080/stats/flowentry/clear/16777219 

curl -X DELETE http://localhost:8080/stats/flowentry/clear/33554432 

curl -X DELETE http://localhost:8080/stats/flowentry/clear/33554433 

curl -X DELETE http://localhost:8080/stats/flowentry/clear/33558528 

curl -X DELETE http://localhost:8080/stats/flowentry/clear/33558529 

curl -X DELETE http://localhost:8080/stats/flowentry/clear/33562624 

curl -X DELETE http://localhost:8080/stats/flowentry/clear/33562625 

curl -X DELETE http://localhost:8080/stats/flowentry/clear/33566720 

curl -X DELETE http://localhost:8080/stats/flowentry/clear/33566721 

curl -X DELETE http://localhost:8080/stats/flowentry/clear/50331648 

curl -X DELETE http://localhost:8080/stats/flowentry/clear/50331649 

curl -X DELETE http://localhost:8080/stats/flowentry/clear/50335744 

curl -X DELETE http://localhost:8080/stats/flowentry/clear/50335745 

curl -X DELETE http://localhost:8080/stats/flowentry/clear/50339840 

curl -X DELETE http://localhost:8080/stats/flowentry/clear/50339841 

curl -X DELETE http://localhost:8080/stats/flowentry/clear/50343936 

curl -X DELETE http://localhost:8080/stats/flowentry/clear/50343937 

curl -X POST -d '{ "dpid": 16777216,"table_id": 0,"priority": 1,"match":{ "dl_vlan":1},"instructions":[{"type":"APPLY_ACTIONS","actions":[ ]}]}' http://localhost:8080/stats/flowentry/add 

curl -X POST -d '{ "dpid": 16777217,"table_id": 0,"priority": 1,"match":{ "dl_vlan":1},"instructions":[{"type":"APPLY_ACTIONS","actions":[ ]}]}' http://localhost:8080/stats/flowentry/add 

curl -X POST -d '{ "dpid": 16777218,"table_id": 0,"priority": 1,"match":{ "dl_vlan":1},"instructions":[{"type":"APPLY_ACTIONS","actions":[ ]}]}' http://localhost:8080/stats/flowentry/add 

curl -X POST -d '{ "dpid": 16777219,"table_id": 0,"priority": 1,"match":{ "dl_vlan":1},"instructions":[{"type":"APPLY_ACTIONS","actions":[ ]}]}' http://localhost:8080/stats/flowentry/add 

curl -X POST -d '{ "dpid": 33554432,"table_id": 0,"priority": 1,"match":{ "dl_vlan":1},"instructions":[{"type":"APPLY_ACTIONS","actions":[ ]}]}' http://localhost:8080/stats/flowentry/add 

curl -X POST -d '{ "dpid": 33554433,"table_id": 0,"priority": 1,"match":{ "dl_vlan":1},"instructions":[{"type":"APPLY_ACTIONS","actions":[ ]}]}' http://localhost:8080/stats/flowentry/add 

curl -X POST -d '{ "dpid": 33558528,"table_id": 0,"priority": 1,"match":{ "dl_vlan":1},"instructions":[{"type":"APPLY_ACTIONS","actions":[ ]}]}' http://localhost:8080/stats/flowentry/add 

curl -X POST -d '{ "dpid": 33558529,"table_id": 0,"priority": 1,"match":{ "dl_vlan":1},"instructions":[{"type":"APPLY_ACTIONS","actions":[ ]}]}' http://localhost:8080/stats/flowentry/add 

curl -X POST -d '{ "dpid": 33562624,"table_id": 0,"priority": 1,"match":{ "dl_vlan":1},"instructions":[{"type":"APPLY_ACTIONS","actions":[ ]}]}' http://localhost:8080/stats/flowentry/add 

curl -X POST -d '{ "dpid": 33562625,"table_id": 0,"priority": 1,"match":{ "dl_vlan":1},"instructions":[{"type":"APPLY_ACTIONS","actions":[ ]}]}' http://localhost:8080/stats/flowentry/add 

curl -X POST -d '{ "dpid": 33566720,"table_id": 0,"priority": 1,"match":{ "dl_vlan":1},"instructions":[{"type":"APPLY_ACTIONS","actions":[ ]}]}' http://localhost:8080/stats/flowentry/add 

curl -X POST -d '{ "dpid": 33566721,"table_id": 0,"priority": 1,"match":{ "dl_vlan":1},"instructions":[{"type":"APPLY_ACTIONS","actions":[ ]}]}' http://localhost:8080/stats/flowentry/add 

curl -X POST -d '{ "dpid": 50331648,"table_id": 0,"priority": 1,"match":{ "dl_vlan":1},"instructions":[{"type":"APPLY_ACTIONS","actions":[ ]}]}' http://localhost:8080/stats/flowentry/add 

curl -X POST -d '{ "dpid": 50331649,"table_id": 0,"priority": 1,"match":{ "dl_vlan":1},"instructions":[{"type":"APPLY_ACTIONS","actions":[ ]}]}' http://localhost:8080/stats/flowentry/add 

curl -X POST -d '{ "dpid": 50335744,"table_id": 0,"priority": 1,"match":{ "dl_vlan":1},"instructions":[{"type":"APPLY_ACTIONS","actions":[ ]}]}' http://localhost:8080/stats/flowentry/add 

curl -X POST -d '{ "dpid": 50335745,"table_id": 0,"priority": 1,"match":{ "dl_vlan":1},"instructions":[{"type":"APPLY_ACTIONS","actions":[ ]}]}' http://localhost:8080/stats/flowentry/add 

curl -X POST -d '{ "dpid": 50339840,"table_id": 0,"priority": 1,"match":{ "dl_vlan":1},"instructions":[{"type":"APPLY_ACTIONS","actions":[ ]}]}' http://localhost:8080/stats/flowentry/add 

curl -X POST -d '{ "dpid": 50339841,"table_id": 0,"priority": 1,"match":{ "dl_vlan":1},"instructions":[{"type":"APPLY_ACTIONS","actions":[ ]}]}' http://localhost:8080/stats/flowentry/add 

curl -X POST -d '{ "dpid": 50343936,"table_id": 0,"priority": 1,"match":{ "dl_vlan":1},"instructions":[{"type":"APPLY_ACTIONS","actions":[ ]}]}' http://localhost:8080/stats/flowentry/add 

curl -X POST -d '{ "dpid": 50343937,"table_id": 0,"priority": 1,"match":{ "dl_vlan":1},"instructions":[{"type":"APPLY_ACTIONS","actions":[ ]}]}' http://localhost:8080/stats/flowentry/add 

curl -X POST -d '{ "dpid": 17895697,"table_id": 0,"priority": 1,"match":{ "eth_type":2054},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "OUTPUT","port": "FLOOD"}]}]}' http://localhost:8080/stats/flowentry/add 

curl -X POST -d '{ "dpid": 50331648,"table_id": 0,"priority": 2,"match":{ "eth_type":2054},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "OUTPUT","port": "FLOOD"}]}]}' http://localhost:8080/stats/flowentry/add 

curl -X POST -d '{ "dpid": 50331649,"table_id": 0,"priority": 2,"match":{ "eth_type":2054},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "OUTPUT","port": "FLOOD"}]}]}' http://localhost:8080/stats/flowentry/add 

curl -X POST -d '{ "dpid": 50335744,"table_id": 0,"priority": 2,"match":{ "eth_type":2054},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "OUTPUT","port": "FLOOD"}]}]}' http://localhost:8080/stats/flowentry/add 

curl -X POST -d '{ "dpid": 50335745,"table_id": 0,"priority": 2,"match":{ "eth_type":2054},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "OUTPUT","port": "FLOOD"}]}]}' http://localhost:8080/stats/flowentry/add 

curl -X POST -d '{ "dpid": 50339840,"table_id": 0,"priority": 2,"match":{ "eth_type":2054},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "OUTPUT","port": "FLOOD"}]}]}' http://localhost:8080/stats/flowentry/add 

curl -X POST -d '{ "dpid": 50339841,"table_id": 0,"priority": 2,"match":{ "eth_type":2054},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "OUTPUT","port": "FLOOD"}]}]}' http://localhost:8080/stats/flowentry/add 

curl -X POST -d '{ "dpid": 50343936,"table_id": 0,"priority": 2,"match":{ "eth_type":2054},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "OUTPUT","port": "FLOOD"}]}]}' http://localhost:8080/stats/flowentry/add 

curl -X POST -d '{ "dpid": 50343937,"table_id": 0,"priority": 2,"match":{ "eth_type":2054},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "OUTPUT","port": "FLOOD"}]}]}' http://localhost:8080/stats/flowentry/add 

