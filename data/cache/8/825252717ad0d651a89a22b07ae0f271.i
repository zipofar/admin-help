a:6:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:3:"NAT";i:1;i:1;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:3;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:511:"

iptables -t nat -A POSTROUTING -o ppp0 -j MASQUERADE

iptables -t nat -A PREROUTING -p tcp --dport 8001 -j DNAT --to-destination 192.168.1.200:8080

## Change source addresses to 1.2.3.4.
# iptables -t nat -A POSTROUTING -o eth0 -j SNAT --to 1.2.3.4

## Change source addresses to 1.2.3.4, 1.2.3.5 or 1.2.3.6
# iptables -t nat -A POSTROUTING -o eth0 -j SNAT --to 1.2.3.4-1.2.3.6

## Change source addresses to 1.2.3.4, ports 1-1023
# iptables -t nat -A POSTROUTING -p tcp -o eth0 -j SNAT --to 1.2.3.4:1-1023

";i:1;N;i:2;N;}i:2;i:25;}i:4;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:544;}i:5;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:544;}}