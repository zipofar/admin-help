a:21:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:10:"IP Utility";i:1;i:1;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:3;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1;}i:4;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:59:"Установить адрес для интерфейса";}i:2;i:27;}i:5;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:92;}i:6;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:37:"
ip address add 10.0.0.1/24 dev eth1
";i:1;N;i:2;N;}i:2;i:92;}i:7;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:92;}i:8;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:33:"Поднять интерфейс";}i:2;i:139;}i:9;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:178;}i:10;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:21:"
ip link set eth1 up
";i:1;N;i:2;N;}i:2;i:178;}i:11;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:178;}i:12;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:24:"Добавить gateway";}i:2;i:209;}i:13;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:239;}i:14;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:40:"
ip route add default via 192.168.1.254
";i:1;N;i:2;N;}i:2;i:239;}i:15;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:239;}i:16;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:31:"Добавить маршрут";}i:2;i:289;}i:17;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:326;}i:18;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:45:"
ip route add 172.16.0.0/24 via 192.168.10.1
";i:1;N;i:2;N;}i:2;i:326;}i:19;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:379;}i:20;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:379;}}