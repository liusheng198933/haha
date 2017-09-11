#!/bin/bash

curl -X POST -d '{ 
    "dpid": 3, 
    "bdid": 4
 }' http://localhost:8080/stats/bundlectrl/open

curl -X POST -d '{ 
    "dpid": 3, 
    "bdid": 4,
    "table_id": 0, 
    "priority": 2, 
    "match":{
        "ipv4_dst":"10.0.0.3/255.255.255.255", 
	"eth_type":2048,
	"dl_vlan":25
    },
    "instructions": [
        {
            "type": "APPLY_ACTIONS",
            "actions": [
		{
            	   "type": "POP_VLAN"         
        	},
		{
		    "type": "OUTPUT",
		    "port": 3
		}
            ]
        }
    ]
 }' http://localhost:8080/stats/bundleadd/delete

curl -X POST -d '{ 
    "dpid": 3, 
    "bdid": 4,
    "table_id": 0, 
    "priority": 3, 
    "match":{
        "ipv4_dst":"10.0.0.3/255.255.255.255", 
	"eth_type":2048,
	"dl_vlan":27
    },
    "instructions": [
        {
            "type": "APPLY_ACTIONS",
            "actions": [
		{
            	   "type": "POP_VLAN"         
        	},
		{
		    "type": "OUTPUT",
		    "port": 3
		}
            ]
        }
    ]
 }' http://localhost:8080/stats/bundleadd/add


curl -X POST -d '{ 
    "dpid": 3, 
    "bdid": 4
 }' http://localhost:8080/stats/bundlectrl/commit

