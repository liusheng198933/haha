#!/bin/bash

curl -X POST -d '{"dpid": 1, "table_id": 0, "priority": 1, "match":{"eth_type":0x0806},"instructions": [{"type": "APPLY_ACTIONS","actions": [{"port": "FLOOD","type": "OUTPUT"}]}]}' "http://localhost:8080/stats/flowentry/add"

#sendback rule

curl -X POST -d '{ 
    "dpid": 1, 
    "table_id": 0, 
    "priority": 3, 
    "match":{
        "ipv4_dst":"10.0.0.3/255.255.255.255", 
	"eth_type":2048
    },
    "instructions": [
        {
            "type": "APPLY_ACTIONS",
            "actions": [
		{
            	   "type": "PUSH_VLAN",     
            	   "ethertype": 33024       
        	},
		{
            	   "type": "SET_FIELD",
            	   "field": "vlan_vid",     
            	   "value": 4121            
        	},
        	{
            	   "type": "OUTPUT",
            	   "port": "in_port"
        	}
            ]
        }
    ]
 }' http://localhost:8080/stats/flowentry/add
