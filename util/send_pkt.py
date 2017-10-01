from scapy.all import send, IP, TCP, Ether, Dot1Q
import sys

def trafficGenerate(num, h_src, h_dst):
    for i in range(num):
        data = "This is Sheng! %d" %(i+1)
        pk = IP(src='10.0.0.%d' %h_src,dst='10.0.0.%d' %h_dst)/TCP()/data
        send(pk)
        #send(Ether()/Dot1Q(vlan=10)/data)

if __name__ == '__main__':
    # need to provide mac address to avoid broadcast
    trafficGenerate(int(sys.argv[1]), int(sys.argv[2]), int(sys.argv[3]))
