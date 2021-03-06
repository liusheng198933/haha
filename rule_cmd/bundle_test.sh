#!/bin/bash

curl -X POST -d '{ 
    "dpid": 1, 
    "bdid": 1
 }' http://localhost:8080/stats/bundlectrl/open

curl -X POST -d '{ 
    "dpid": 1, 
    "bdid": 1,
    "table_id": 0, 
    "priority": 1, 
    "match":{
        "eth_type":0x0806
    },
    "instructions": [
        {
            "type": "APPLY_ACTIONS",
            "actions": [
                {
                    "type": "OUTPUT",
                    "port": "FLOOD"
                }
            ]
        }
    ]
 }' http://localhost:8080/stats/bundleadd/add

curl -X POST -d '{ 
    "dpid": 1, 
    "bdid": 1,
    "table_id": 0, 
    "priority": 2, 
    "match":{
        "ipv4_dst":"10.0.0.2/255.255.255.255", 
	"eth_type":2048
    },
    "instructions": [
        {
            "type": "APPLY_ACTIONS",
            "actions": [
        	{
            	   "type": "OUTPUT",
            	   "port": 2
        	}
            ]
        }
    ]
 }' http://localhost:8080/stats/bundleadd/add


curl -X POST -d '{ 
    "dpid": 1, 
    "bdid": 1,
    "table_id": 0, 
    "priority": 2, 
    "match":{
        "ipv4_dst":"10.0.0.1/255.255.255.255", 
	"eth_type":2048
    },
    "instructions": [
        {
            "type": "APPLY_ACTIONS",
            "actions": [
        	{
            	   "type": "OUTPUT",
            	   "port": 1
        	}
            ]
        }
    ]
 }' http://localhost:8080/stats/bundleadd/add

curl -X POST -d '{ 
    "dpid": 1, 
    "bdid": 1
 }' http://localhost:8080/stats/bundlectrl/commit


