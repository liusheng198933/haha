from mininet.topo import Topo
from mininet.net import Mininet
from mininet.cli import CLI
from mininet.node import Controller, OVSKernelSwitch, RemoteController, Ryu
from time import sleep
import argparse
#from mininet.node import Ryu


#class ryuController( Controller ):
#    def __init__( self, name, cdir='/home/shengliu/Workspace/mininet/custom/', command='ryu-manager', cargs='/home/shengliu/Workspace/ryu/ryuApp/dummyRouter.py', **kwargs ):
#        Controller.__init__( self, name, cdir=cdir, command=command, cargs=cargs, **kwargs)




class MyTopod( Topo ):
    "Simple topology example."

    def __init__( self ):
        "Create custom topo."

        # Initialize topology
        Topo.__init__( self )

        # Add hosts and switches

        host1 = self.addHost('h1', ip='10.0.0.1')
        host2 = self.addHost('h2', ip='10.0.0.2')
	host3 = self.addHost('h3', ip='10.0.0.3')
        
        switch1 = self.addSwitch( 's1', protocols='OpenFlow14' )

	switch2 = self.addSwitch( 's2', protocols='OpenFlow14' )

        switch3 = self.addSwitch( 's3', protocols='OpenFlow14' )
        
        

        # Add links
        self.addLink(host1, switch1, 0, 1)
	self.addLink(host2, switch2, 0, 2)
	self.addLink(host3, switch3, 0, 3)
	self.addLink(switch1, switch2, 2, 1)
        self.addLink(switch2, switch3, 3, 2)
        
        
        

        #topos = { 'mytopod': ( lambda: MyTopod() )

def simpleTest():
    topo = MyTopod()

    net = Mininet( topo=topo, switch=OVSKernelSwitch, controller=Ryu('ryuController','/home/shengliu/Workspace/ryu/casualSDN/ofctl_rest.py') )
    #h1 = net.get('h1')
    #print h1.IP()
    #print h1.MAC()

    net.start()
    for i in range(3):
    	s = net.get('s%d' %(i+1))
 	s.cmd('sudo ovs-vsctl set bridge s%i protocols=OpenFlow14' %(i+1))
    # use static ARP configuration to avoid arp broadcast
    # net.staticArp()

    # deploy default rule to allow arp packet to broadcast using the following command
    # curl -X POST -d '{"dpid":1, "match":{"ipv4_dst":"10.0.0.1", "eth_type":2048}, "actions":[{"type":"OUTPUT", "port":"FLOOD"}] }' http://localhost:8080/stats/flowentry/add
    # curl -X POST -d '{"dpid":1, "match":{"ipv4_dst":"10.0.0.1", "eth_type":2048}, "actions":[{"type":"OUTPUT", "port":"FLOOD"}] }' http://localhost:8080/stats/flowentry/delete
    # deploy rule for each switch using: curl -X POST -d '{"dpid":1, "match":{eth_type":0x0806}, "priority":2, "actions":[{"type":"OUTPUT", "port":1}] }' http://localhost:8080/stats/flowentry/add
    # sudo ovs-vsctl set bridge s1 protocols=OpenFlow14
    # check the rules: ovs-ofctl -O openflow13 dump-flows s1

    CLI(net)

    net.stop()


if __name__ == '__main__':
  
    simpleTest()
