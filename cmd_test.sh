#!/bin/bash
curl -X DELETE http://localhost:8080/stats/flowentry/clear/17895697 

curl -X DELETE http://localhost:8080/stats/flowentry/clear/16777216 

curl -X DELETE http://localhost:8080/stats/flowentry/clear/16777217 

curl -X DELETE http://localhost:8080/stats/flowentry/clear/16777218 

curl -X DELETE http://localhost:8080/stats/flowentry/clear/16777219 

curl -X DELETE http://localhost:8080/stats/flowentry/clear/16777220 

curl -X DELETE http://localhost:8080/stats/flowentry/clear/16777221 

curl -X DELETE http://localhost:8080/stats/flowentry/clear/16777222 

curl -X DELETE http://localhost:8080/stats/flowentry/clear/16777223 

curl -X DELETE http://localhost:8080/stats/flowentry/clear/16777224 

curl -X DELETE http://localhost:8080/stats/flowentry/clear/16777225 

curl -X DELETE http://localhost:8080/stats/flowentry/clear/16777226 

curl -X DELETE http://localhost:8080/stats/flowentry/clear/16777227 

curl -X DELETE http://localhost:8080/stats/flowentry/clear/16777228 

curl -X DELETE http://localhost:8080/stats/flowentry/clear/16777229 

curl -X DELETE http://localhost:8080/stats/flowentry/clear/16777230 

curl -X DELETE http://localhost:8080/stats/flowentry/clear/16777231 

curl -X DELETE http://localhost:8080/stats/flowentry/clear/33554432 

curl -X DELETE http://localhost:8080/stats/flowentry/clear/33554433 

curl -X DELETE http://localhost:8080/stats/flowentry/clear/33554434 

curl -X DELETE http://localhost:8080/stats/flowentry/clear/33554435 

curl -X DELETE http://localhost:8080/stats/flowentry/clear/33558528 

curl -X DELETE http://localhost:8080/stats/flowentry/clear/33558529 

curl -X DELETE http://localhost:8080/stats/flowentry/clear/33558530 

curl -X DELETE http://localhost:8080/stats/flowentry/clear/33558531 

curl -X DELETE http://localhost:8080/stats/flowentry/clear/33562624 

curl -X DELETE http://localhost:8080/stats/flowentry/clear/33562625 

curl -X DELETE http://localhost:8080/stats/flowentry/clear/33562626 

curl -X DELETE http://localhost:8080/stats/flowentry/clear/33562627 

curl -X DELETE http://localhost:8080/stats/flowentry/clear/33566720 

curl -X DELETE http://localhost:8080/stats/flowentry/clear/33566721 

curl -X DELETE http://localhost:8080/stats/flowentry/clear/33566722 

curl -X DELETE http://localhost:8080/stats/flowentry/clear/33566723 

curl -X DELETE http://localhost:8080/stats/flowentry/clear/33570816 

curl -X DELETE http://localhost:8080/stats/flowentry/clear/33570817 

curl -X DELETE http://localhost:8080/stats/flowentry/clear/33570818 

curl -X DELETE http://localhost:8080/stats/flowentry/clear/33570819 

curl -X DELETE http://localhost:8080/stats/flowentry/clear/33574912 

curl -X DELETE http://localhost:8080/stats/flowentry/clear/33574913 

curl -X DELETE http://localhost:8080/stats/flowentry/clear/33574914 

curl -X DELETE http://localhost:8080/stats/flowentry/clear/33574915 

curl -X DELETE http://localhost:8080/stats/flowentry/clear/33579008 

curl -X DELETE http://localhost:8080/stats/flowentry/clear/33579009 

curl -X DELETE http://localhost:8080/stats/flowentry/clear/33579010 

curl -X DELETE http://localhost:8080/stats/flowentry/clear/33579011 

curl -X DELETE http://localhost:8080/stats/flowentry/clear/33583104 

curl -X DELETE http://localhost:8080/stats/flowentry/clear/33583105 

curl -X DELETE http://localhost:8080/stats/flowentry/clear/33583106 

curl -X DELETE http://localhost:8080/stats/flowentry/clear/33583107 

curl -X DELETE http://localhost:8080/stats/flowentry/clear/50331648 

curl -X DELETE http://localhost:8080/stats/flowentry/clear/50331649 

curl -X DELETE http://localhost:8080/stats/flowentry/clear/50331650 

curl -X DELETE http://localhost:8080/stats/flowentry/clear/50331651 

curl -X DELETE http://localhost:8080/stats/flowentry/clear/50335744 

curl -X DELETE http://localhost:8080/stats/flowentry/clear/50335745 

curl -X DELETE http://localhost:8080/stats/flowentry/clear/50335746 

curl -X DELETE http://localhost:8080/stats/flowentry/clear/50335747 

curl -X DELETE http://localhost:8080/stats/flowentry/clear/50339840 

curl -X DELETE http://localhost:8080/stats/flowentry/clear/50339841 

curl -X DELETE http://localhost:8080/stats/flowentry/clear/50339842 

curl -X DELETE http://localhost:8080/stats/flowentry/clear/50339843 

curl -X DELETE http://localhost:8080/stats/flowentry/clear/50343936 

curl -X DELETE http://localhost:8080/stats/flowentry/clear/50343937 

curl -X DELETE http://localhost:8080/stats/flowentry/clear/50343938 

curl -X DELETE http://localhost:8080/stats/flowentry/clear/50343939 

curl -X DELETE http://localhost:8080/stats/flowentry/clear/50348032 

curl -X DELETE http://localhost:8080/stats/flowentry/clear/50348033 

curl -X DELETE http://localhost:8080/stats/flowentry/clear/50348034 

curl -X DELETE http://localhost:8080/stats/flowentry/clear/50348035 

curl -X DELETE http://localhost:8080/stats/flowentry/clear/50352128 

curl -X DELETE http://localhost:8080/stats/flowentry/clear/50352129 

curl -X DELETE http://localhost:8080/stats/flowentry/clear/50352130 

curl -X DELETE http://localhost:8080/stats/flowentry/clear/50352131 

curl -X DELETE http://localhost:8080/stats/flowentry/clear/50356224 

curl -X DELETE http://localhost:8080/stats/flowentry/clear/50356225 

curl -X DELETE http://localhost:8080/stats/flowentry/clear/50356226 

curl -X DELETE http://localhost:8080/stats/flowentry/clear/50356227 

curl -X DELETE http://localhost:8080/stats/flowentry/clear/50360320 

curl -X DELETE http://localhost:8080/stats/flowentry/clear/50360321 

curl -X DELETE http://localhost:8080/stats/flowentry/clear/50360322 

curl -X DELETE http://localhost:8080/stats/flowentry/clear/50360323 

curl -X POST -d '{ "dpid": 16777216,"table_id": 0,"priority": 1,"match":{ "dl_vlan":1},"instructions":[{"type":"APPLY_ACTIONS","actions":[ ]}]}' http://localhost:8080/stats/flowentry/add 

curl -X POST -d '{ "dpid": 16777217,"table_id": 0,"priority": 1,"match":{ "dl_vlan":1},"instructions":[{"type":"APPLY_ACTIONS","actions":[ ]}]}' http://localhost:8080/stats/flowentry/add 

curl -X POST -d '{ "dpid": 16777218,"table_id": 0,"priority": 1,"match":{ "dl_vlan":1},"instructions":[{"type":"APPLY_ACTIONS","actions":[ ]}]}' http://localhost:8080/stats/flowentry/add 

curl -X POST -d '{ "dpid": 16777219,"table_id": 0,"priority": 1,"match":{ "dl_vlan":1},"instructions":[{"type":"APPLY_ACTIONS","actions":[ ]}]}' http://localhost:8080/stats/flowentry/add 

curl -X POST -d '{ "dpid": 16777220,"table_id": 0,"priority": 1,"match":{ "dl_vlan":1},"instructions":[{"type":"APPLY_ACTIONS","actions":[ ]}]}' http://localhost:8080/stats/flowentry/add 

curl -X POST -d '{ "dpid": 16777221,"table_id": 0,"priority": 1,"match":{ "dl_vlan":1},"instructions":[{"type":"APPLY_ACTIONS","actions":[ ]}]}' http://localhost:8080/stats/flowentry/add 

curl -X POST -d '{ "dpid": 16777222,"table_id": 0,"priority": 1,"match":{ "dl_vlan":1},"instructions":[{"type":"APPLY_ACTIONS","actions":[ ]}]}' http://localhost:8080/stats/flowentry/add 

curl -X POST -d '{ "dpid": 16777223,"table_id": 0,"priority": 1,"match":{ "dl_vlan":1},"instructions":[{"type":"APPLY_ACTIONS","actions":[ ]}]}' http://localhost:8080/stats/flowentry/add 

curl -X POST -d '{ "dpid": 16777224,"table_id": 0,"priority": 1,"match":{ "dl_vlan":1},"instructions":[{"type":"APPLY_ACTIONS","actions":[ ]}]}' http://localhost:8080/stats/flowentry/add 

curl -X POST -d '{ "dpid": 16777225,"table_id": 0,"priority": 1,"match":{ "dl_vlan":1},"instructions":[{"type":"APPLY_ACTIONS","actions":[ ]}]}' http://localhost:8080/stats/flowentry/add 

curl -X POST -d '{ "dpid": 16777226,"table_id": 0,"priority": 1,"match":{ "dl_vlan":1},"instructions":[{"type":"APPLY_ACTIONS","actions":[ ]}]}' http://localhost:8080/stats/flowentry/add 

curl -X POST -d '{ "dpid": 16777227,"table_id": 0,"priority": 1,"match":{ "dl_vlan":1},"instructions":[{"type":"APPLY_ACTIONS","actions":[ ]}]}' http://localhost:8080/stats/flowentry/add 

curl -X POST -d '{ "dpid": 16777228,"table_id": 0,"priority": 1,"match":{ "dl_vlan":1},"instructions":[{"type":"APPLY_ACTIONS","actions":[ ]}]}' http://localhost:8080/stats/flowentry/add 

curl -X POST -d '{ "dpid": 16777229,"table_id": 0,"priority": 1,"match":{ "dl_vlan":1},"instructions":[{"type":"APPLY_ACTIONS","actions":[ ]}]}' http://localhost:8080/stats/flowentry/add 

curl -X POST -d '{ "dpid": 16777230,"table_id": 0,"priority": 1,"match":{ "dl_vlan":1},"instructions":[{"type":"APPLY_ACTIONS","actions":[ ]}]}' http://localhost:8080/stats/flowentry/add 

curl -X POST -d '{ "dpid": 16777231,"table_id": 0,"priority": 1,"match":{ "dl_vlan":1},"instructions":[{"type":"APPLY_ACTIONS","actions":[ ]}]}' http://localhost:8080/stats/flowentry/add 

curl -X POST -d '{ "dpid": 33554432,"table_id": 0,"priority": 1,"match":{ "dl_vlan":1},"instructions":[{"type":"APPLY_ACTIONS","actions":[ ]}]}' http://localhost:8080/stats/flowentry/add 

curl -X POST -d '{ "dpid": 33554433,"table_id": 0,"priority": 1,"match":{ "dl_vlan":1},"instructions":[{"type":"APPLY_ACTIONS","actions":[ ]}]}' http://localhost:8080/stats/flowentry/add 

curl -X POST -d '{ "dpid": 33554434,"table_id": 0,"priority": 1,"match":{ "dl_vlan":1},"instructions":[{"type":"APPLY_ACTIONS","actions":[ ]}]}' http://localhost:8080/stats/flowentry/add 

curl -X POST -d '{ "dpid": 33554435,"table_id": 0,"priority": 1,"match":{ "dl_vlan":1},"instructions":[{"type":"APPLY_ACTIONS","actions":[ ]}]}' http://localhost:8080/stats/flowentry/add 

curl -X POST -d '{ "dpid": 33558528,"table_id": 0,"priority": 1,"match":{ "dl_vlan":1},"instructions":[{"type":"APPLY_ACTIONS","actions":[ ]}]}' http://localhost:8080/stats/flowentry/add 

curl -X POST -d '{ "dpid": 33558529,"table_id": 0,"priority": 1,"match":{ "dl_vlan":1},"instructions":[{"type":"APPLY_ACTIONS","actions":[ ]}]}' http://localhost:8080/stats/flowentry/add 

curl -X POST -d '{ "dpid": 33558530,"table_id": 0,"priority": 1,"match":{ "dl_vlan":1},"instructions":[{"type":"APPLY_ACTIONS","actions":[ ]}]}' http://localhost:8080/stats/flowentry/add 

curl -X POST -d '{ "dpid": 33558531,"table_id": 0,"priority": 1,"match":{ "dl_vlan":1},"instructions":[{"type":"APPLY_ACTIONS","actions":[ ]}]}' http://localhost:8080/stats/flowentry/add 

curl -X POST -d '{ "dpid": 33562624,"table_id": 0,"priority": 1,"match":{ "dl_vlan":1},"instructions":[{"type":"APPLY_ACTIONS","actions":[ ]}]}' http://localhost:8080/stats/flowentry/add 

curl -X POST -d '{ "dpid": 33562625,"table_id": 0,"priority": 1,"match":{ "dl_vlan":1},"instructions":[{"type":"APPLY_ACTIONS","actions":[ ]}]}' http://localhost:8080/stats/flowentry/add 

curl -X POST -d '{ "dpid": 33562626,"table_id": 0,"priority": 1,"match":{ "dl_vlan":1},"instructions":[{"type":"APPLY_ACTIONS","actions":[ ]}]}' http://localhost:8080/stats/flowentry/add 

curl -X POST -d '{ "dpid": 33562627,"table_id": 0,"priority": 1,"match":{ "dl_vlan":1},"instructions":[{"type":"APPLY_ACTIONS","actions":[ ]}]}' http://localhost:8080/stats/flowentry/add 

curl -X POST -d '{ "dpid": 33566720,"table_id": 0,"priority": 1,"match":{ "dl_vlan":1},"instructions":[{"type":"APPLY_ACTIONS","actions":[ ]}]}' http://localhost:8080/stats/flowentry/add 

curl -X POST -d '{ "dpid": 33566721,"table_id": 0,"priority": 1,"match":{ "dl_vlan":1},"instructions":[{"type":"APPLY_ACTIONS","actions":[ ]}]}' http://localhost:8080/stats/flowentry/add 

curl -X POST -d '{ "dpid": 33566722,"table_id": 0,"priority": 1,"match":{ "dl_vlan":1},"instructions":[{"type":"APPLY_ACTIONS","actions":[ ]}]}' http://localhost:8080/stats/flowentry/add 

curl -X POST -d '{ "dpid": 33566723,"table_id": 0,"priority": 1,"match":{ "dl_vlan":1},"instructions":[{"type":"APPLY_ACTIONS","actions":[ ]}]}' http://localhost:8080/stats/flowentry/add 

curl -X POST -d '{ "dpid": 33570816,"table_id": 0,"priority": 1,"match":{ "dl_vlan":1},"instructions":[{"type":"APPLY_ACTIONS","actions":[ ]}]}' http://localhost:8080/stats/flowentry/add 

curl -X POST -d '{ "dpid": 33570817,"table_id": 0,"priority": 1,"match":{ "dl_vlan":1},"instructions":[{"type":"APPLY_ACTIONS","actions":[ ]}]}' http://localhost:8080/stats/flowentry/add 

curl -X POST -d '{ "dpid": 33570818,"table_id": 0,"priority": 1,"match":{ "dl_vlan":1},"instructions":[{"type":"APPLY_ACTIONS","actions":[ ]}]}' http://localhost:8080/stats/flowentry/add 

curl -X POST -d '{ "dpid": 33570819,"table_id": 0,"priority": 1,"match":{ "dl_vlan":1},"instructions":[{"type":"APPLY_ACTIONS","actions":[ ]}]}' http://localhost:8080/stats/flowentry/add 

curl -X POST -d '{ "dpid": 33574912,"table_id": 0,"priority": 1,"match":{ "dl_vlan":1},"instructions":[{"type":"APPLY_ACTIONS","actions":[ ]}]}' http://localhost:8080/stats/flowentry/add 

curl -X POST -d '{ "dpid": 33574913,"table_id": 0,"priority": 1,"match":{ "dl_vlan":1},"instructions":[{"type":"APPLY_ACTIONS","actions":[ ]}]}' http://localhost:8080/stats/flowentry/add 

curl -X POST -d '{ "dpid": 33574914,"table_id": 0,"priority": 1,"match":{ "dl_vlan":1},"instructions":[{"type":"APPLY_ACTIONS","actions":[ ]}]}' http://localhost:8080/stats/flowentry/add 

curl -X POST -d '{ "dpid": 33574915,"table_id": 0,"priority": 1,"match":{ "dl_vlan":1},"instructions":[{"type":"APPLY_ACTIONS","actions":[ ]}]}' http://localhost:8080/stats/flowentry/add 

curl -X POST -d '{ "dpid": 33579008,"table_id": 0,"priority": 1,"match":{ "dl_vlan":1},"instructions":[{"type":"APPLY_ACTIONS","actions":[ ]}]}' http://localhost:8080/stats/flowentry/add 

curl -X POST -d '{ "dpid": 33579009,"table_id": 0,"priority": 1,"match":{ "dl_vlan":1},"instructions":[{"type":"APPLY_ACTIONS","actions":[ ]}]}' http://localhost:8080/stats/flowentry/add 

curl -X POST -d '{ "dpid": 33579010,"table_id": 0,"priority": 1,"match":{ "dl_vlan":1},"instructions":[{"type":"APPLY_ACTIONS","actions":[ ]}]}' http://localhost:8080/stats/flowentry/add 

curl -X POST -d '{ "dpid": 33579011,"table_id": 0,"priority": 1,"match":{ "dl_vlan":1},"instructions":[{"type":"APPLY_ACTIONS","actions":[ ]}]}' http://localhost:8080/stats/flowentry/add 

curl -X POST -d '{ "dpid": 33583104,"table_id": 0,"priority": 1,"match":{ "dl_vlan":1},"instructions":[{"type":"APPLY_ACTIONS","actions":[ ]}]}' http://localhost:8080/stats/flowentry/add 

curl -X POST -d '{ "dpid": 33583105,"table_id": 0,"priority": 1,"match":{ "dl_vlan":1},"instructions":[{"type":"APPLY_ACTIONS","actions":[ ]}]}' http://localhost:8080/stats/flowentry/add 

curl -X POST -d '{ "dpid": 33583106,"table_id": 0,"priority": 1,"match":{ "dl_vlan":1},"instructions":[{"type":"APPLY_ACTIONS","actions":[ ]}]}' http://localhost:8080/stats/flowentry/add 

curl -X POST -d '{ "dpid": 33583107,"table_id": 0,"priority": 1,"match":{ "dl_vlan":1},"instructions":[{"type":"APPLY_ACTIONS","actions":[ ]}]}' http://localhost:8080/stats/flowentry/add 

curl -X POST -d '{ "dpid": 50331648,"table_id": 0,"priority": 1,"match":{ "dl_vlan":1},"instructions":[{"type":"APPLY_ACTIONS","actions":[ ]}]}' http://localhost:8080/stats/flowentry/add 

curl -X POST -d '{ "dpid": 50331649,"table_id": 0,"priority": 1,"match":{ "dl_vlan":1},"instructions":[{"type":"APPLY_ACTIONS","actions":[ ]}]}' http://localhost:8080/stats/flowentry/add 

curl -X POST -d '{ "dpid": 50331650,"table_id": 0,"priority": 1,"match":{ "dl_vlan":1},"instructions":[{"type":"APPLY_ACTIONS","actions":[ ]}]}' http://localhost:8080/stats/flowentry/add 

curl -X POST -d '{ "dpid": 50331651,"table_id": 0,"priority": 1,"match":{ "dl_vlan":1},"instructions":[{"type":"APPLY_ACTIONS","actions":[ ]}]}' http://localhost:8080/stats/flowentry/add 

curl -X POST -d '{ "dpid": 50335744,"table_id": 0,"priority": 1,"match":{ "dl_vlan":1},"instructions":[{"type":"APPLY_ACTIONS","actions":[ ]}]}' http://localhost:8080/stats/flowentry/add 

curl -X POST -d '{ "dpid": 50335745,"table_id": 0,"priority": 1,"match":{ "dl_vlan":1},"instructions":[{"type":"APPLY_ACTIONS","actions":[ ]}]}' http://localhost:8080/stats/flowentry/add 

curl -X POST -d '{ "dpid": 50335746,"table_id": 0,"priority": 1,"match":{ "dl_vlan":1},"instructions":[{"type":"APPLY_ACTIONS","actions":[ ]}]}' http://localhost:8080/stats/flowentry/add 

curl -X POST -d '{ "dpid": 50335747,"table_id": 0,"priority": 1,"match":{ "dl_vlan":1},"instructions":[{"type":"APPLY_ACTIONS","actions":[ ]}]}' http://localhost:8080/stats/flowentry/add 

curl -X POST -d '{ "dpid": 50339840,"table_id": 0,"priority": 1,"match":{ "dl_vlan":1},"instructions":[{"type":"APPLY_ACTIONS","actions":[ ]}]}' http://localhost:8080/stats/flowentry/add 

curl -X POST -d '{ "dpid": 50339841,"table_id": 0,"priority": 1,"match":{ "dl_vlan":1},"instructions":[{"type":"APPLY_ACTIONS","actions":[ ]}]}' http://localhost:8080/stats/flowentry/add 

curl -X POST -d '{ "dpid": 50339842,"table_id": 0,"priority": 1,"match":{ "dl_vlan":1},"instructions":[{"type":"APPLY_ACTIONS","actions":[ ]}]}' http://localhost:8080/stats/flowentry/add 

curl -X POST -d '{ "dpid": 50339843,"table_id": 0,"priority": 1,"match":{ "dl_vlan":1},"instructions":[{"type":"APPLY_ACTIONS","actions":[ ]}]}' http://localhost:8080/stats/flowentry/add 

curl -X POST -d '{ "dpid": 50343936,"table_id": 0,"priority": 1,"match":{ "dl_vlan":1},"instructions":[{"type":"APPLY_ACTIONS","actions":[ ]}]}' http://localhost:8080/stats/flowentry/add 

curl -X POST -d '{ "dpid": 50343937,"table_id": 0,"priority": 1,"match":{ "dl_vlan":1},"instructions":[{"type":"APPLY_ACTIONS","actions":[ ]}]}' http://localhost:8080/stats/flowentry/add 

curl -X POST -d '{ "dpid": 50343938,"table_id": 0,"priority": 1,"match":{ "dl_vlan":1},"instructions":[{"type":"APPLY_ACTIONS","actions":[ ]}]}' http://localhost:8080/stats/flowentry/add 

curl -X POST -d '{ "dpid": 50343939,"table_id": 0,"priority": 1,"match":{ "dl_vlan":1},"instructions":[{"type":"APPLY_ACTIONS","actions":[ ]}]}' http://localhost:8080/stats/flowentry/add 

curl -X POST -d '{ "dpid": 50348032,"table_id": 0,"priority": 1,"match":{ "dl_vlan":1},"instructions":[{"type":"APPLY_ACTIONS","actions":[ ]}]}' http://localhost:8080/stats/flowentry/add 

curl -X POST -d '{ "dpid": 50348033,"table_id": 0,"priority": 1,"match":{ "dl_vlan":1},"instructions":[{"type":"APPLY_ACTIONS","actions":[ ]}]}' http://localhost:8080/stats/flowentry/add 

curl -X POST -d '{ "dpid": 50348034,"table_id": 0,"priority": 1,"match":{ "dl_vlan":1},"instructions":[{"type":"APPLY_ACTIONS","actions":[ ]}]}' http://localhost:8080/stats/flowentry/add 

curl -X POST -d '{ "dpid": 50348035,"table_id": 0,"priority": 1,"match":{ "dl_vlan":1},"instructions":[{"type":"APPLY_ACTIONS","actions":[ ]}]}' http://localhost:8080/stats/flowentry/add 

curl -X POST -d '{ "dpid": 50352128,"table_id": 0,"priority": 1,"match":{ "dl_vlan":1},"instructions":[{"type":"APPLY_ACTIONS","actions":[ ]}]}' http://localhost:8080/stats/flowentry/add 

curl -X POST -d '{ "dpid": 50352129,"table_id": 0,"priority": 1,"match":{ "dl_vlan":1},"instructions":[{"type":"APPLY_ACTIONS","actions":[ ]}]}' http://localhost:8080/stats/flowentry/add 

curl -X POST -d '{ "dpid": 50352130,"table_id": 0,"priority": 1,"match":{ "dl_vlan":1},"instructions":[{"type":"APPLY_ACTIONS","actions":[ ]}]}' http://localhost:8080/stats/flowentry/add 

curl -X POST -d '{ "dpid": 50352131,"table_id": 0,"priority": 1,"match":{ "dl_vlan":1},"instructions":[{"type":"APPLY_ACTIONS","actions":[ ]}]}' http://localhost:8080/stats/flowentry/add 

curl -X POST -d '{ "dpid": 50356224,"table_id": 0,"priority": 1,"match":{ "dl_vlan":1},"instructions":[{"type":"APPLY_ACTIONS","actions":[ ]}]}' http://localhost:8080/stats/flowentry/add 

curl -X POST -d '{ "dpid": 50356225,"table_id": 0,"priority": 1,"match":{ "dl_vlan":1},"instructions":[{"type":"APPLY_ACTIONS","actions":[ ]}]}' http://localhost:8080/stats/flowentry/add 

curl -X POST -d '{ "dpid": 50356226,"table_id": 0,"priority": 1,"match":{ "dl_vlan":1},"instructions":[{"type":"APPLY_ACTIONS","actions":[ ]}]}' http://localhost:8080/stats/flowentry/add 

curl -X POST -d '{ "dpid": 50356227,"table_id": 0,"priority": 1,"match":{ "dl_vlan":1},"instructions":[{"type":"APPLY_ACTIONS","actions":[ ]}]}' http://localhost:8080/stats/flowentry/add 

curl -X POST -d '{ "dpid": 50360320,"table_id": 0,"priority": 1,"match":{ "dl_vlan":1},"instructions":[{"type":"APPLY_ACTIONS","actions":[ ]}]}' http://localhost:8080/stats/flowentry/add 

curl -X POST -d '{ "dpid": 50360321,"table_id": 0,"priority": 1,"match":{ "dl_vlan":1},"instructions":[{"type":"APPLY_ACTIONS","actions":[ ]}]}' http://localhost:8080/stats/flowentry/add 

curl -X POST -d '{ "dpid": 50360322,"table_id": 0,"priority": 1,"match":{ "dl_vlan":1},"instructions":[{"type":"APPLY_ACTIONS","actions":[ ]}]}' http://localhost:8080/stats/flowentry/add 

curl -X POST -d '{ "dpid": 50360323,"table_id": 0,"priority": 1,"match":{ "dl_vlan":1},"instructions":[{"type":"APPLY_ACTIONS","actions":[ ]}]}' http://localhost:8080/stats/flowentry/add 

curl -X POST -d '{ "dpid": 17895697,"table_id": 0,"priority": 1,"match":{ "eth_type":2054},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "OUTPUT","port": "FLOOD"}]}]}' http://localhost:8080/stats/flowentry/add 

curl -X POST -d '{ "dpid": 50331648,"table_id": 0,"priority": 2,"match":{ "eth_type":2054},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "OUTPUT","port": "FLOOD"}]}]}' http://localhost:8080/stats/flowentry/add 

curl -X POST -d '{ "dpid": 50331649,"table_id": 0,"priority": 2,"match":{ "eth_type":2054},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "OUTPUT","port": "FLOOD"}]}]}' http://localhost:8080/stats/flowentry/add 

curl -X POST -d '{ "dpid": 50331650,"table_id": 0,"priority": 2,"match":{ "eth_type":2054},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "OUTPUT","port": "FLOOD"}]}]}' http://localhost:8080/stats/flowentry/add 

curl -X POST -d '{ "dpid": 50331651,"table_id": 0,"priority": 2,"match":{ "eth_type":2054},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "OUTPUT","port": "FLOOD"}]}]}' http://localhost:8080/stats/flowentry/add 

curl -X POST -d '{ "dpid": 50335744,"table_id": 0,"priority": 2,"match":{ "eth_type":2054},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "OUTPUT","port": "FLOOD"}]}]}' http://localhost:8080/stats/flowentry/add 

curl -X POST -d '{ "dpid": 50335745,"table_id": 0,"priority": 2,"match":{ "eth_type":2054},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "OUTPUT","port": "FLOOD"}]}]}' http://localhost:8080/stats/flowentry/add 

curl -X POST -d '{ "dpid": 50335746,"table_id": 0,"priority": 2,"match":{ "eth_type":2054},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "OUTPUT","port": "FLOOD"}]}]}' http://localhost:8080/stats/flowentry/add 

curl -X POST -d '{ "dpid": 50335747,"table_id": 0,"priority": 2,"match":{ "eth_type":2054},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "OUTPUT","port": "FLOOD"}]}]}' http://localhost:8080/stats/flowentry/add 

curl -X POST -d '{ "dpid": 50339840,"table_id": 0,"priority": 2,"match":{ "eth_type":2054},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "OUTPUT","port": "FLOOD"}]}]}' http://localhost:8080/stats/flowentry/add 

curl -X POST -d '{ "dpid": 50339841,"table_id": 0,"priority": 2,"match":{ "eth_type":2054},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "OUTPUT","port": "FLOOD"}]}]}' http://localhost:8080/stats/flowentry/add 

curl -X POST -d '{ "dpid": 50339842,"table_id": 0,"priority": 2,"match":{ "eth_type":2054},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "OUTPUT","port": "FLOOD"}]}]}' http://localhost:8080/stats/flowentry/add 

curl -X POST -d '{ "dpid": 50339843,"table_id": 0,"priority": 2,"match":{ "eth_type":2054},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "OUTPUT","port": "FLOOD"}]}]}' http://localhost:8080/stats/flowentry/add 

curl -X POST -d '{ "dpid": 50343936,"table_id": 0,"priority": 2,"match":{ "eth_type":2054},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "OUTPUT","port": "FLOOD"}]}]}' http://localhost:8080/stats/flowentry/add 

curl -X POST -d '{ "dpid": 50343937,"table_id": 0,"priority": 2,"match":{ "eth_type":2054},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "OUTPUT","port": "FLOOD"}]}]}' http://localhost:8080/stats/flowentry/add 

curl -X POST -d '{ "dpid": 50343938,"table_id": 0,"priority": 2,"match":{ "eth_type":2054},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "OUTPUT","port": "FLOOD"}]}]}' http://localhost:8080/stats/flowentry/add 

curl -X POST -d '{ "dpid": 50343939,"table_id": 0,"priority": 2,"match":{ "eth_type":2054},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "OUTPUT","port": "FLOOD"}]}]}' http://localhost:8080/stats/flowentry/add 

curl -X POST -d '{ "dpid": 50348032,"table_id": 0,"priority": 2,"match":{ "eth_type":2054},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "OUTPUT","port": "FLOOD"}]}]}' http://localhost:8080/stats/flowentry/add 

curl -X POST -d '{ "dpid": 50348033,"table_id": 0,"priority": 2,"match":{ "eth_type":2054},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "OUTPUT","port": "FLOOD"}]}]}' http://localhost:8080/stats/flowentry/add 

curl -X POST -d '{ "dpid": 50348034,"table_id": 0,"priority": 2,"match":{ "eth_type":2054},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "OUTPUT","port": "FLOOD"}]}]}' http://localhost:8080/stats/flowentry/add 

curl -X POST -d '{ "dpid": 50348035,"table_id": 0,"priority": 2,"match":{ "eth_type":2054},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "OUTPUT","port": "FLOOD"}]}]}' http://localhost:8080/stats/flowentry/add 

curl -X POST -d '{ "dpid": 50352128,"table_id": 0,"priority": 2,"match":{ "eth_type":2054},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "OUTPUT","port": "FLOOD"}]}]}' http://localhost:8080/stats/flowentry/add 

curl -X POST -d '{ "dpid": 50352129,"table_id": 0,"priority": 2,"match":{ "eth_type":2054},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "OUTPUT","port": "FLOOD"}]}]}' http://localhost:8080/stats/flowentry/add 

curl -X POST -d '{ "dpid": 50352130,"table_id": 0,"priority": 2,"match":{ "eth_type":2054},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "OUTPUT","port": "FLOOD"}]}]}' http://localhost:8080/stats/flowentry/add 

curl -X POST -d '{ "dpid": 50352131,"table_id": 0,"priority": 2,"match":{ "eth_type":2054},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "OUTPUT","port": "FLOOD"}]}]}' http://localhost:8080/stats/flowentry/add 

curl -X POST -d '{ "dpid": 50356224,"table_id": 0,"priority": 2,"match":{ "eth_type":2054},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "OUTPUT","port": "FLOOD"}]}]}' http://localhost:8080/stats/flowentry/add 

curl -X POST -d '{ "dpid": 50356225,"table_id": 0,"priority": 2,"match":{ "eth_type":2054},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "OUTPUT","port": "FLOOD"}]}]}' http://localhost:8080/stats/flowentry/add 

curl -X POST -d '{ "dpid": 50356226,"table_id": 0,"priority": 2,"match":{ "eth_type":2054},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "OUTPUT","port": "FLOOD"}]}]}' http://localhost:8080/stats/flowentry/add 

curl -X POST -d '{ "dpid": 50356227,"table_id": 0,"priority": 2,"match":{ "eth_type":2054},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "OUTPUT","port": "FLOOD"}]}]}' http://localhost:8080/stats/flowentry/add 

curl -X POST -d '{ "dpid": 50360320,"table_id": 0,"priority": 2,"match":{ "eth_type":2054},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "OUTPUT","port": "FLOOD"}]}]}' http://localhost:8080/stats/flowentry/add 

curl -X POST -d '{ "dpid": 50360321,"table_id": 0,"priority": 2,"match":{ "eth_type":2054},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "OUTPUT","port": "FLOOD"}]}]}' http://localhost:8080/stats/flowentry/add 

curl -X POST -d '{ "dpid": 50360322,"table_id": 0,"priority": 2,"match":{ "eth_type":2054},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "OUTPUT","port": "FLOOD"}]}]}' http://localhost:8080/stats/flowentry/add 

curl -X POST -d '{ "dpid": 50360323,"table_id": 0,"priority": 2,"match":{ "eth_type":2054},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "OUTPUT","port": "FLOOD"}]}]}' http://localhost:8080/stats/flowentry/add 

