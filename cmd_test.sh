#!/bin/bash
curl -X DELETE http://localhost:8080/stats/flowentry/clear/1111111 

curl -X DELETE http://localhost:8080/stats/flowentry/clear/1000000 

curl -X DELETE http://localhost:8080/stats/flowentry/clear/1000001 

curl -X DELETE http://localhost:8080/stats/flowentry/clear/1000002 

curl -X DELETE http://localhost:8080/stats/flowentry/clear/1000003 

curl -X DELETE http://localhost:8080/stats/flowentry/clear/2000000 

curl -X DELETE http://localhost:8080/stats/flowentry/clear/2000001 

curl -X DELETE http://localhost:8080/stats/flowentry/clear/2001000 

curl -X DELETE http://localhost:8080/stats/flowentry/clear/2001001 

curl -X DELETE http://localhost:8080/stats/flowentry/clear/2002000 

curl -X DELETE http://localhost:8080/stats/flowentry/clear/2002001 

curl -X DELETE http://localhost:8080/stats/flowentry/clear/2003000 

curl -X DELETE http://localhost:8080/stats/flowentry/clear/2003001 

curl -X DELETE http://localhost:8080/stats/flowentry/clear/3000000 

curl -X DELETE http://localhost:8080/stats/flowentry/clear/3000001 

curl -X DELETE http://localhost:8080/stats/flowentry/clear/3001000 

curl -X DELETE http://localhost:8080/stats/flowentry/clear/3001001 

curl -X DELETE http://localhost:8080/stats/flowentry/clear/3002000 

curl -X DELETE http://localhost:8080/stats/flowentry/clear/3002001 

curl -X DELETE http://localhost:8080/stats/flowentry/clear/3003000 

curl -X DELETE http://localhost:8080/stats/flowentry/clear/3003001 

curl -X POST -d '{ "dpid": 1000000,"table_id": 0,"priority": 1,"match":{ "dl_vlan":1},"instructions":[{"type":"APPLY_ACTIONS","actions":[ ]}]}' http://localhost:8080/stats/flowentry/add 

curl -X POST -d '{ "dpid": 1000001,"table_id": 0,"priority": 1,"match":{ "dl_vlan":1},"instructions":[{"type":"APPLY_ACTIONS","actions":[ ]}]}' http://localhost:8080/stats/flowentry/add 

curl -X POST -d '{ "dpid": 1000002,"table_id": 0,"priority": 1,"match":{ "dl_vlan":1},"instructions":[{"type":"APPLY_ACTIONS","actions":[ ]}]}' http://localhost:8080/stats/flowentry/add 

curl -X POST -d '{ "dpid": 1000003,"table_id": 0,"priority": 1,"match":{ "dl_vlan":1},"instructions":[{"type":"APPLY_ACTIONS","actions":[ ]}]}' http://localhost:8080/stats/flowentry/add 

curl -X POST -d '{ "dpid": 2000000,"table_id": 0,"priority": 1,"match":{ "dl_vlan":1},"instructions":[{"type":"APPLY_ACTIONS","actions":[ ]}]}' http://localhost:8080/stats/flowentry/add 

curl -X POST -d '{ "dpid": 2000001,"table_id": 0,"priority": 1,"match":{ "dl_vlan":1},"instructions":[{"type":"APPLY_ACTIONS","actions":[ ]}]}' http://localhost:8080/stats/flowentry/add 

curl -X POST -d '{ "dpid": 2001000,"table_id": 0,"priority": 1,"match":{ "dl_vlan":1},"instructions":[{"type":"APPLY_ACTIONS","actions":[ ]}]}' http://localhost:8080/stats/flowentry/add 

curl -X POST -d '{ "dpid": 2001001,"table_id": 0,"priority": 1,"match":{ "dl_vlan":1},"instructions":[{"type":"APPLY_ACTIONS","actions":[ ]}]}' http://localhost:8080/stats/flowentry/add 

curl -X POST -d '{ "dpid": 2002000,"table_id": 0,"priority": 1,"match":{ "dl_vlan":1},"instructions":[{"type":"APPLY_ACTIONS","actions":[ ]}]}' http://localhost:8080/stats/flowentry/add 

curl -X POST -d '{ "dpid": 2002001,"table_id": 0,"priority": 1,"match":{ "dl_vlan":1},"instructions":[{"type":"APPLY_ACTIONS","actions":[ ]}]}' http://localhost:8080/stats/flowentry/add 

curl -X POST -d '{ "dpid": 2003000,"table_id": 0,"priority": 1,"match":{ "dl_vlan":1},"instructions":[{"type":"APPLY_ACTIONS","actions":[ ]}]}' http://localhost:8080/stats/flowentry/add 

curl -X POST -d '{ "dpid": 2003001,"table_id": 0,"priority": 1,"match":{ "dl_vlan":1},"instructions":[{"type":"APPLY_ACTIONS","actions":[ ]}]}' http://localhost:8080/stats/flowentry/add 

curl -X POST -d '{ "dpid": 3000000,"table_id": 0,"priority": 1,"match":{ "dl_vlan":1},"instructions":[{"type":"APPLY_ACTIONS","actions":[ ]}]}' http://localhost:8080/stats/flowentry/add 

curl -X POST -d '{ "dpid": 3000001,"table_id": 0,"priority": 1,"match":{ "dl_vlan":1},"instructions":[{"type":"APPLY_ACTIONS","actions":[ ]}]}' http://localhost:8080/stats/flowentry/add 

curl -X POST -d '{ "dpid": 3001000,"table_id": 0,"priority": 1,"match":{ "dl_vlan":1},"instructions":[{"type":"APPLY_ACTIONS","actions":[ ]}]}' http://localhost:8080/stats/flowentry/add 

curl -X POST -d '{ "dpid": 3001001,"table_id": 0,"priority": 1,"match":{ "dl_vlan":1},"instructions":[{"type":"APPLY_ACTIONS","actions":[ ]}]}' http://localhost:8080/stats/flowentry/add 

curl -X POST -d '{ "dpid": 3002000,"table_id": 0,"priority": 1,"match":{ "dl_vlan":1},"instructions":[{"type":"APPLY_ACTIONS","actions":[ ]}]}' http://localhost:8080/stats/flowentry/add 

curl -X POST -d '{ "dpid": 3002001,"table_id": 0,"priority": 1,"match":{ "dl_vlan":1},"instructions":[{"type":"APPLY_ACTIONS","actions":[ ]}]}' http://localhost:8080/stats/flowentry/add 

curl -X POST -d '{ "dpid": 3003000,"table_id": 0,"priority": 1,"match":{ "dl_vlan":1},"instructions":[{"type":"APPLY_ACTIONS","actions":[ ]}]}' http://localhost:8080/stats/flowentry/add 

curl -X POST -d '{ "dpid": 3003001,"table_id": 0,"priority": 1,"match":{ "dl_vlan":1},"instructions":[{"type":"APPLY_ACTIONS","actions":[ ]}]}' http://localhost:8080/stats/flowentry/add 

curl -X POST -d '{ "dpid": 1111111,"table_id": 0,"priority": 1,"match":{ "eth_type":2054},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "OUTPUT","port": "FLOOD"}]}]}' http://localhost:8080/stats/flowentry/add 

