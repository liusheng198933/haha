#!/bin/bash
curl -X POST -d '{ "dpid": 16777217,"bdid": 264}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 16777217,"bdid": 264,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.7.1.2","ipv4_src":"10.2.2.4","dl_vlan":5},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4101},{"type": "OUTPUT","port": 8}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 16777217,"bdid": 264}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 16777217,"bdid": 277}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 16777217,"bdid": 277,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.3.2.2","ipv4_src":"10.2.2.4","dl_vlan":5},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4101},{"type": "OUTPUT","port": 4}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 16777217,"bdid": 277}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 16777217,"bdid": 290}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 16777217,"bdid": 290,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.2.2.4","ipv4_src":"10.7.2.2","dl_vlan":5},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4101},{"type": "OUTPUT","port": 3}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 16777217,"bdid": 290}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 16777217,"bdid": 303}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 16777217,"bdid": 303,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.3.3.4","ipv4_src":"10.2.2.4","dl_vlan":5},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4101},{"type": "OUTPUT","port": 4}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 16777217,"bdid": 303}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 16777217,"bdid": 329}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 16777217,"bdid": 329,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.2.0.2","ipv4_src":"10.7.2.2","dl_vlan":5},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4101},{"type": "OUTPUT","port": 3}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 16777217,"bdid": 329}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 16777217,"bdid": 342}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 16777217,"bdid": 342,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.3.3.4","ipv4_src":"10.2.0.2","dl_vlan":5},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4101},{"type": "OUTPUT","port": 4}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 16777217,"bdid": 342}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 16777217,"bdid": 355}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 16777217,"bdid": 355,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.6.2.4","ipv4_src":"10.2.0.2","dl_vlan":5},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4101},{"type": "OUTPUT","port": 7}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 16777217,"bdid": 355}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 16777217,"bdid": 368}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 16777217,"bdid": 368,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.3.2.2","ipv4_src":"10.2.0.2","dl_vlan":5},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4101},{"type": "OUTPUT","port": 4}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 16777217,"bdid": 368}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 16777217,"bdid": 433}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 16777217,"bdid": 433,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.2.2.4","ipv4_src":"10.7.0.3","dl_vlan":5},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4101},{"type": "OUTPUT","port": 3}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 16777217,"bdid": 433}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 16777217,"bdid": 459}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 16777217,"bdid": 459,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.7.1.2","ipv4_src":"10.2.0.2","dl_vlan":5},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4101},{"type": "OUTPUT","port": 8}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 16777217,"bdid": 459}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 16777217,"bdid": 472}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 16777217,"bdid": 472,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.7.2.2","ipv4_src":"10.2.0.2","dl_vlan":5},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4101},{"type": "OUTPUT","port": 8}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 16777217,"bdid": 472}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 16777217,"bdid": 485}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 16777217,"bdid": 485,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.5.2.2","ipv4_src":"10.2.2.4","dl_vlan":5},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4101},{"type": "OUTPUT","port": 6}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 16777217,"bdid": 485}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 16777217,"bdid": 550}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 16777217,"bdid": 550,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.7.2.2","ipv4_src":"10.2.2.4","dl_vlan":5},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4101},{"type": "OUTPUT","port": 8}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 16777217,"bdid": 550}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 16777217,"bdid": 589}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 16777217,"bdid": 589,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.7.0.3","ipv4_src":"10.2.0.2","dl_vlan":5},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4101},{"type": "OUTPUT","port": 8}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 16777217,"bdid": 589}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 16777217,"bdid": 602}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 16777217,"bdid": 602,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.2.2.4","ipv4_src":"10.3.2.2","dl_vlan":5},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4101},{"type": "OUTPUT","port": 3}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 16777217,"bdid": 602}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 16777217,"bdid": 615}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 16777217,"bdid": 615,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.2.2.4","ipv4_src":"10.6.2.4","dl_vlan":5},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4101},{"type": "OUTPUT","port": 3}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 16777217,"bdid": 615}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 16777217,"bdid": 628}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 16777217,"bdid": 628,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.2.2.4","ipv4_src":"10.7.1.2","dl_vlan":5},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4101},{"type": "OUTPUT","port": 3}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 16777217,"bdid": 628}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 16777217,"bdid": 641}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 16777217,"bdid": 641,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.2.0.2","ipv4_src":"10.7.0.3","dl_vlan":5},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4101},{"type": "OUTPUT","port": 3}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 16777217,"bdid": 641}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 16777217,"bdid": 667}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 16777217,"bdid": 667,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.2.0.2","ipv4_src":"10.5.2.2","dl_vlan":5},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4101},{"type": "OUTPUT","port": 3}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 16777217,"bdid": 667}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 16777217,"bdid": 680}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 16777217,"bdid": 680,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.2.0.2","ipv4_src":"10.7.1.2","dl_vlan":5},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4101},{"type": "OUTPUT","port": 3}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 16777217,"bdid": 680}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 16777217,"bdid": 706}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 16777217,"bdid": 706,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.2.0.2","ipv4_src":"10.6.2.4","dl_vlan":5},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4101},{"type": "OUTPUT","port": 3}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 16777217,"bdid": 706}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 16777217,"bdid": 732}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 16777217,"bdid": 732,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.2.2.4","ipv4_src":"10.5.2.2","dl_vlan":5},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4101},{"type": "OUTPUT","port": 3}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 16777217,"bdid": 732}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 16777217,"bdid": 745}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 16777217,"bdid": 745,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.7.0.3","ipv4_src":"10.2.2.4","dl_vlan":5},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4101},{"type": "OUTPUT","port": 8}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 16777217,"bdid": 745}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 16777217,"bdid": 758}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 16777217,"bdid": 758,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.2.0.2","ipv4_src":"10.3.2.2","dl_vlan":5},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4101},{"type": "OUTPUT","port": 3}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 16777217,"bdid": 758}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 16777217,"bdid": 784}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 16777217,"bdid": 784,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.5.2.2","ipv4_src":"10.2.0.2","dl_vlan":5},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4101},{"type": "OUTPUT","port": 6}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 16777217,"bdid": 784}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 16777217,"bdid": 797}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 16777217,"bdid": 797,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.6.2.4","ipv4_src":"10.2.2.4","dl_vlan":5},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4101},{"type": "OUTPUT","port": 7}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 16777217,"bdid": 797}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 16777217,"bdid": 823}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 16777217,"bdid": 823,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.2.2.4","ipv4_src":"10.3.3.4","dl_vlan":5},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4101},{"type": "OUTPUT","port": 3}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 16777217,"bdid": 823}' http://localhost:8080/stats/bundlectrl/commit 

curl -X POST -d '{ "dpid": 16777217,"bdid": 836}' http://localhost:8080/stats/bundlectrl/open 

curl -X POST -d '{ "dpid": 16777217,"bdid": 836,"table_id": 0,"priority": 8,"match":{ "eth_type":2048,"ipv4_dst":"10.2.0.2","ipv4_src":"10.3.3.4","dl_vlan":5},"instructions":[{"type":"APPLY_ACTIONS","actions":[{"type": "DEC_NW_TTL"}, {"type":"SET_FIELD","field":"vlan_vid","value": 4101},{"type": "OUTPUT","port": 3}]}]}' http://localhost:8080/stats/bundleadd/delete_strict 

curl -X POST -d '{ "dpid": 16777217,"bdid": 836}' http://localhost:8080/stats/bundlectrl/commit 

