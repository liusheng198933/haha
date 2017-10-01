#!/bin/bash

#deploy default rule to allow arp packet to broadcast using the following command

#arp flood
# OpenFlow 13
#curl -X POST -d '{"dpid":1, "match":{"eth_type":0x0806}, "priority":1, "actions":[{"type":"OUTPUT", "port":FLOOD}] }' http://localhost:8080/stats/flowentry/add

#curl -X POST -d '{"dpid":1, "match":{"ipv4_dst":"10.0.0.1", "eth_type":2048}, "actions":[{"type":"OUTPUT", "port":"FLOOD"}] }' http://localhost:8080/stats/flowentry/add

#curl -X POST -d '{"dpid":1, "match":{"ipv4_dst":"10.0.0.1", "eth_type":2048}, "actions":[{"type":"OUTPUT", "port":"FLOOD"}] }' http://localhost:8080/stats/flowentry/delete


# deploy rule for each switch using: curl -X POST -d '{"dpid":1, "match":{eth_type":0x0806}, "priority":2, "actions":[{"type":"OUTPUT", "port":1}] }' http://localhost:8080/stats/flowentry/add

# OpenFlow 14 push vlan id, set it and pop it

curl -X DELETE http://localhost:8080/stats/flowentry/clear/1

curl -X DELETE http://localhost:8080/stats/flowentry/clear/2

curl -X POST -d '{ 
    "dpid": 1, 
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
 }' http://localhost:8080/stats/flowentry/add




curl -X POST -d '{ 
    "dpid": 1, 
    "table_id": 0, 
    "priority": 2, 
    "match":{
        "ipv4_dst":"10.0.0.1/255.255.255.255", 
	"eth_type":2048,
	"dl_vlan":11
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
		    "port": 1
		}
            ]
        }
    ]
 }' http://localhost:8080/stats/flowentry/add


curl -X POST -d '{ 
    "dpid": 1, 
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
            	   "type": "PUSH_VLAN",     
            	   "ethertype": 33024       
        	},
        	{
            	   "type": "SET_FIELD",
            	   "field": "vlan_vid",     
            	   "value": 4105            
        	},
        	{
            	   "type": "OUTPUT",
            	   "port": 2
        	}
            ]
        }
    ]
 }' http://localhost:8080/stats/flowentry/add


curl -X POST -d '{ 
    "dpid": 2, 
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
 }' http://localhost:8080/stats/flowentry/add




curl -X POST -d '{ 
    "dpid": 2, 
    "table_id": 0, 
    "priority": 2, 
    "match":{
        "ipv4_dst":"10.0.0.2/255.255.255.255", 
	"eth_type":2048,
	"dl_vlan":9
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
		    "port": 2
		}
            ]
        }
    ]
 }' http://localhost:8080/stats/flowentry/add


curl -X POST -d '{ 
    "dpid": 2, 
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
            	   "type": "PUSH_VLAN",     
            	   "ethertype": 33024       
        	},
        	{
            	   "type": "SET_FIELD",
            	   "field": "vlan_vid",     
            	   "value": 4107            
        	},
        	{
            	   "type": "OUTPUT",
            	   "port": 2
        	}
            ]
        }
    ]
 }' http://localhost:8080/stats/flowentry/add
