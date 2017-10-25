#!/bin/bash
curl -X POST -d '{ "dpid": 33562624,"bdid": 253}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 33562624,"bdid": 253,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.7.1.2","ipv4_src":"10.2.2.4","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 1}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 33562624,"bdid": 253}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 33562624,"bdid": 266}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 33562624,"bdid": 266,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.3.2.2","ipv4_src":"10.2.2.4","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 1}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 33562624,"bdid": 266}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 33562624,"bdid": 279}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 33562624,"bdid": 279,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.2.2.4","ipv4_src":"10.7.2.2","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 7}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 33562624,"bdid": 279}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 33562624,"bdid": 293}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 33562624,"bdid": 293,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.3.3.4","ipv4_src":"10.2.2.4","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 1}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 33562624,"bdid": 293}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 33562624,"bdid": 317}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 33562624,"bdid": 317,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.2.0.2","ipv4_src":"10.7.2.2","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 5}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 33562624,"bdid": 317}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 33562624,"bdid": 332}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 33562624,"bdid": 332,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.3.3.4","ipv4_src":"10.2.0.2","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 1}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 33562624,"bdid": 332}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 33562624,"bdid": 344}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 33562624,"bdid": 344,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.6.2.4","ipv4_src":"10.2.0.2","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 1}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 33562624,"bdid": 344}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 33562624,"bdid": 357}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 33562624,"bdid": 357,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.3.2.2","ipv4_src":"10.2.0.2","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 1}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 33562624,"bdid": 357}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 33562624,"bdid": 422}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 33562624,"bdid": 422,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.2.2.4","ipv4_src":"10.7.0.3","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 7}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 33562624,"bdid": 422}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 33562624,"bdid": 448}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 33562624,"bdid": 448,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.7.1.2","ipv4_src":"10.2.0.2","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 1}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 33562624,"bdid": 448}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 33562624,"bdid": 460}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 33562624,"bdid": 460,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.7.2.2","ipv4_src":"10.2.0.2","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 1}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 33562624,"bdid": 460}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 33562624,"bdid": 474}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 33562624,"bdid": 474,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.5.2.2","ipv4_src":"10.2.2.4","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 1}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 33562624,"bdid": 474}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 33562624,"bdid": 538}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 33562624,"bdid": 538,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.7.2.2","ipv4_src":"10.2.2.4","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 1}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 33562624,"bdid": 538}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 33562624,"bdid": 577}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 33562624,"bdid": 577,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.7.0.3","ipv4_src":"10.2.0.2","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 1}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 33562624,"bdid": 577}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 33562624,"bdid": 591}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 33562624,"bdid": 591,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.2.2.4","ipv4_src":"10.3.2.2","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 7}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 33562624,"bdid": 591}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 33562624,"bdid": 603}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 33562624,"bdid": 603,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.2.2.4","ipv4_src":"10.6.2.4","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 7}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 33562624,"bdid": 603}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 33562624,"bdid": 617}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 33562624,"bdid": 617,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.2.2.4","ipv4_src":"10.7.1.2","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 7}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 33562624,"bdid": 617}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 33562624,"bdid": 629}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 33562624,"bdid": 629,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.2.0.2","ipv4_src":"10.7.0.3","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 5}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 33562624,"bdid": 629}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 33562624,"bdid": 656}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 33562624,"bdid": 656,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.2.0.2","ipv4_src":"10.5.2.2","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 5}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 33562624,"bdid": 656}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 33562624,"bdid": 668}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 33562624,"bdid": 668,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.2.0.2","ipv4_src":"10.7.1.2","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 5}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 33562624,"bdid": 668}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 33562624,"bdid": 694}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 33562624,"bdid": 694,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.2.0.2","ipv4_src":"10.6.2.4","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 5}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 33562624,"bdid": 694}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 33562624,"bdid": 720}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 33562624,"bdid": 720,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.2.2.4","ipv4_src":"10.5.2.2","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 7}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 33562624,"bdid": 720}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 33562624,"bdid": 733}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 33562624,"bdid": 733,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.7.0.3","ipv4_src":"10.2.2.4","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 1}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 33562624,"bdid": 733}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 33562624,"bdid": 747}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 33562624,"bdid": 747,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.2.0.2","ipv4_src":"10.3.2.2","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 5}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 33562624,"bdid": 747}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 33562624,"bdid": 773}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 33562624,"bdid": 773,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.5.2.2","ipv4_src":"10.2.0.2","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 1}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 33562624,"bdid": 773}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 33562624,"bdid": 786}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 33562624,"bdid": 786,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.6.2.4","ipv4_src":"10.2.2.4","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 1}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 33562624,"bdid": 786}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 33562624,"bdid": 812}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 33562624,"bdid": 812,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.2.2.4","ipv4_src":"10.3.3.4","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 7}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 33562624,"bdid": 812}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 33562624,"bdid": 825}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 33562624,"bdid": 825,"table_id": 0,"priority": 7,"match":{ "eth_type":2048,"ipv4_dst":"10.2.0.2","ipv4_src":"10.3.3.4","dl_vlan":6},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4102},{"type": "OUTPUT","port": 5}]}]}' http://localhost:8080/stats/bundleadd/add 

curl -X POST -d '{ "dpid": 33562624,"bdid": 825}' http://localhost:8080/stats/bundlectrl/commit 

