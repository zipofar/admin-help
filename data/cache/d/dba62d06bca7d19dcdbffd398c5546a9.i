a:95:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:22:"OpenVPN + Ubuntu 16.04";i:1;i:1;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:3;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:39;}i:4;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:7:"Install";i:1;i:2;i:2;i:39;}i:2;i:39;}i:5;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:39;}i:6;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:169:"
apt install openvpn easy-rsa

gunzip -c /usr/share/doc/openvpn/examples/sample-config-files/server.conf.gz | sudo tee /etc/openvpn/server.conf

make-cadir ~/openvpn-ca
";i:1;N;i:2;N;}i:2;i:66;}i:7;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:23:"
vim ~/openvpn-ca/vars
";i:1;N;i:2;N;}i:2;i:250;}i:8;a:3:{i:0;s:10:"listu_open";i:1;a:0:{}i:2;i:282;}i:9;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:282;}i:10;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:282;}i:11;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:20:" export KEY_COUNTRY=";}i:2;i:286;}i:12;a:3:{i:0;s:18:"doublequoteopening";i:1;a:0:{}i:2;i:306;}i:13;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:2:"US";}i:2;i:307;}i:14;a:3:{i:0;s:18:"doublequoteclosing";i:1;a:0:{}i:2;i:309;}i:15;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:310;}i:16;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:310;}i:17;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:310;}i:18;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:310;}i:19;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:21:" export KEY_PROVINCE=";}i:2;i:314;}i:20;a:3:{i:0;s:18:"doublequoteopening";i:1;a:0:{}i:2;i:335;}i:21;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:2:"CA";}i:2;i:336;}i:22;a:3:{i:0;s:18:"doublequoteclosing";i:1;a:0:{}i:2;i:338;}i:23;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:339;}i:24;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:339;}i:25;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:339;}i:26;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:339;}i:27;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:17:" export KEY_CITY=";}i:2;i:343;}i:28;a:3:{i:0;s:18:"doublequoteopening";i:1;a:0:{}i:2;i:360;}i:29;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:12:"SanFrancisco";}i:2;i:361;}i:30;a:3:{i:0;s:18:"doublequoteclosing";i:1;a:0:{}i:2;i:373;}i:31;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:374;}i:32;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:374;}i:33;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:374;}i:34;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:374;}i:35;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:16:" export KEY_ORG=";}i:2;i:378;}i:36;a:3:{i:0;s:18:"doublequoteopening";i:1;a:0:{}i:2;i:394;}i:37;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:12:"Fort-Funston";}i:2;i:395;}i:38;a:3:{i:0;s:18:"doublequoteclosing";i:1;a:0:{}i:2;i:407;}i:39;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:408;}i:40;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:408;}i:41;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:408;}i:42;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:408;}i:43;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:18:" export KEY_EMAIL=";}i:2;i:412;}i:44;a:3:{i:0;s:18:"doublequoteopening";i:1;a:0:{}i:2;i:430;}i:45;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:18:"me@myhost.mydomain";}i:2;i:431;}i:46;a:3:{i:0;s:18:"doublequoteclosing";i:1;a:0:{}i:2;i:449;}i:47;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:450;}i:48;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:450;}i:49;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:450;}i:50;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:450;}i:51;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:15:" export KEY_OU=";}i:2;i:454;}i:52;a:3:{i:0;s:18:"doublequoteopening";i:1;a:0:{}i:2;i:469;}i:53;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:20:"MyOrganizationalUnit";}i:2;i:470;}i:54;a:3:{i:0;s:18:"doublequoteclosing";i:1;a:0:{}i:2;i:490;}i:55;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:491;}i:56;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:491;}i:57;a:3:{i:0;s:11:"listu_close";i:1;a:0:{}i:2;i:491;}i:58;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:128:"
cd ~/openvpn-ca

source vars

./clean-all

./build-ca

./build-key-server server

./build-dh

openvpn --genkey --secret ta.key
";i:1;N;i:2;N;}i:2;i:498;}i:59;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:498;}i:60;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:71:"Положит следующие файлы в папку /etc/openvpn";}i:2;i:636;}i:61;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:708;}i:62;a:3:{i:0;s:10:"listu_open";i:1;a:0:{}i:2;i:708;}i:63;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:708;}i:64;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:708;}i:65;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:8:" ca.cart";}i:2;i:712;}i:66;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:720;}i:67;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:720;}i:68;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:720;}i:69;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:720;}i:70;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:11:" server.crt";}i:2;i:724;}i:71;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:735;}i:72;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:735;}i:73;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:735;}i:74;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:735;}i:75;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:11:" server.key";}i:2;i:739;}i:76;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:750;}i:77;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:750;}i:78;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:750;}i:79;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:750;}i:80;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:11:" dh2048.pem";}i:2;i:754;}i:81;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:765;}i:82;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:765;}i:83;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:765;}i:84;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:765;}i:85;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:7:" ta.key";}i:2;i:769;}i:86;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:776;}i:87;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:776;}i:88;a:3:{i:0;s:11:"listu_close";i:1;a:0:{}i:2;i:776;}i:89;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:776;}i:90;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:34:"Ключи для клиентов";}i:2;i:778;}i:91;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:812;}i:92;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:21:"
./build-key client1
";i:1;N;i:2;N;}i:2;i:819;}i:93;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:848;}i:94;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:848;}}