#!/bin/bash


curl -X DELETE http://localhost:8080/stats/flowentry/clear/1

curl -X DELETE http://localhost:8080/stats/flowentry/clear/2

curl -X DELETE http://localhost:8080/stats/flowentry/clear/3

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
	"dl_vlan":12
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
    "dpid": 1, 
    "table_id": 0, 
    "priority": 2, 
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
            	   "value": 4106            
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
	"dl_vlan":10
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
	"ipv4_src":"10.0.0.2/255.255.255.255",
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
            	   "port": 1
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
	"ipv4_src":"10.0.0.2/255.255.255.255",
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
            	   "value": 4117            
        	},
        	{
            	   "type": "OUTPUT",
            	   "port": 3
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
	"ipv4_src":"10.0.0.3/255.255.255.255",
        "ipv4_dst":"10.0.0.1/255.255.255.255", 
	"eth_type":2048,
	"dl_vlan":19
    },
    "instructions": [
        {
            "type": "APPLY_ACTIONS",
            "actions": [
        	{
            	   "type": "SET_FIELD",
            	   "field": "vlan_vid",     
            	   "value": 4118            
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
    "dpid": 2, 
    "table_id": 0, 
    "priority": 2, 
    "match":{
	"ipv4_src":"10.0.0.1/255.255.255.255",
        "ipv4_dst":"10.0.0.3/255.255.255.255", 
	"eth_type":2048,
	"dl_vlan":20
    },
    "instructions": [
        {
            "type": "APPLY_ACTIONS",
            "actions": [
        	{
            	   "type": "SET_FIELD",
            	   "field": "vlan_vid",     
            	   "value": 4119            
        	},
        	{
            	   "type": "OUTPUT",
            	   "port": 3
        	}
            ]
        }
    ]
 }' http://localhost:8080/stats/flowentry/add

curl -X POST -d '{ 
    "dpid": 3, 
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
    "dpid": 3, 
    "table_id": 0, 
    "priority": 2, 
    "match":{
        "ipv4_dst":"10.0.0.3/255.255.255.255", 
	"eth_type":2048,
	"dl_vlan":17
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
 }' http://localhost:8080/stats/flowentry/add


curl -X POST -d '{ 
    "dpid": 3, 
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
            	   "value": 4108            
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
    "dpid": 3, 
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
            	   "value": 4109            
        	},
        	{
            	   "type": "OUTPUT",
            	   "port": 2
        	}
            ]
        }
    ]
 }' http://localhost:8080/stats/flowentry/add
