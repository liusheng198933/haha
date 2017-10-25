#!/bin/bash
curl -X POST -d '{ "dpid": 33566722,"bdid": 305}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 33566722,"bdid": 305,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.3.0.1","ipv4_src":"10.0.0.3","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 5}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 33566722,"bdid": 305}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 33566722,"bdid": 370}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 33566722,"bdid": 370,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.4.0.2","ipv4_src":"10.3.0.1","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 1}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 33566722,"bdid": 370}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 33566722,"bdid": 383}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 33566722,"bdid": 383,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.3.0.1","ipv4_src":"10.4.2.3","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 5}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 33566722,"bdid": 383}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 33566722,"bdid": 396}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 33566722,"bdid": 396,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.3.0.1","ipv4_src":"10.7.2.2","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 5}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 33566722,"bdid": 396}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 33566722,"bdid": 409}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 33566722,"bdid": 409,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.2.1.1","ipv4_src":"10.3.0.1","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 1}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 33566722,"bdid": 409}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 33566722,"bdid": 434}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 33566722,"bdid": 434,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.7.2.2","ipv4_src":"10.3.0.1","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 1}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 33566722,"bdid": 434}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 33566722,"bdid": 487}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 33566722,"bdid": 487,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.2.1.3","ipv4_src":"10.3.0.1","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 1}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 33566722,"bdid": 487}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 33566722,"bdid": 499}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 33566722,"bdid": 499,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.4.2.3","ipv4_src":"10.3.0.1","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 1}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 33566722,"bdid": 499}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 33566722,"bdid": 514}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 33566722,"bdid": 514,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.3.0.1","ipv4_src":"10.1.2.4","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 5}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 33566722,"bdid": 514}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 33566722,"bdid": 526}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 33566722,"bdid": 526,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.3.0.1","ipv4_src":"10.4.0.2","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 5}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 33566722,"bdid": 526}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 33566722,"bdid": 552}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 33566722,"bdid": 552,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.3.0.1","ipv4_src":"10.4.3.2","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 5}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 33566722,"bdid": 552}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 33566722,"bdid": 565}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 33566722,"bdid": 565,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.1.2.4","ipv4_src":"10.3.0.1","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 1}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 33566722,"bdid": 565}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 33566722,"bdid": 643}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 33566722,"bdid": 643,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.4.3.2","ipv4_src":"10.3.0.1","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 1}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 33566722,"bdid": 643}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 33566722,"bdid": 708}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 33566722,"bdid": 708,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.3.0.1","ipv4_src":"10.2.1.1","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 5}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 33566722,"bdid": 708}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 33566722,"bdid": 759}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 33566722,"bdid": 759,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.0.0.3","ipv4_src":"10.3.0.1","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 1}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 33566722,"bdid": 759}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 33566722,"bdid": 838}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 33566722,"bdid": 838,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.3.0.1","ipv4_src":"10.2.1.3","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 5}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 33566722,"bdid": 838}' http://localhost:8080/stats/bundlectrl/commit 

