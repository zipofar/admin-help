a:51:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:52:"Настройка Virtual Domain + MySQL в Postfix";i:1;i:1;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:3;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1;}i:4;a:3:{i:0;s:11:"strong_open";i:1;a:0:{}i:2;i:69;}i:5;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:21:"virtual_alias_domains";}i:2;i:71;}i:6;a:3:{i:0;s:12:"strong_close";i:1;a:0:{}i:2;i:92;}i:7;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:511:" - домены для которых сервер является местом конечного назначения. Используется данный параметр именно, что в качестве алиаса для домена у которого существуют почтовые ящики. Т.е. письма приходят на адрес admin@book.com и перенаправляются на адрес admin@magazin.com у которого существуют ящики.";}i:2;i:94;}i:8;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:605;}i:9;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:605;}i:10;a:3:{i:0;s:11:"strong_open";i:1;a:0:{}i:2;i:607;}i:11;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:18:"virtual_alias_maps";}i:2;i:609;}i:12;a:3:{i:0;s:12:"strong_close";i:1;a:0:{}i:2;i:627;}i:13;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:84:" - псевдонимы для виртуальных почтовых ящиков.";}i:2;i:629;}i:14;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:719;}i:15;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:88:"
wilma@example.com wilma.pebble@example.com
pebble@example.com wilma.pebble@example.com
";i:1;N;i:2;N;}i:2;i:719;}i:16;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:719;}i:17;a:3:{i:0;s:11:"strong_open";i:1;a:0:{}i:2;i:817;}i:18;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:23:"virtual_mailbox_domains";}i:2;i:819;}i:19;a:3:{i:0;s:12:"strong_close";i:1;a:0:{}i:2;i:842;}i:20;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:252:" - сообщает серверу Postfix о том, что он является местом конечного назначения для одного или нескольких доменов виртуальных почтовых ящиков.";}i:2;i:844;}i:21;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1096;}i:22;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1096;}i:23;a:3:{i:0;s:11:"strong_open";i:1;a:0:{}i:2;i:1099;}i:24;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:20:"virtual_mailbox_maps";}i:2;i:1101;}i:25;a:3:{i:0;s:12:"strong_close";i:1;a:0:{}i:2;i:1121;}i:26;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:180:" - сообщает серверу Postfix, где искать ящики получателей в плане физического расположения на сервере.";}i:2;i:1123;}i:27;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1303;}i:28;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1303;}i:29;a:3:{i:0;s:11:"strong_open";i:1;a:0:{}i:2;i:1305;}i:30;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:13:"relay_domains";}i:2;i:1307;}i:31;a:3:{i:0;s:12:"strong_close";i:1;a:0:{}i:2;i:1320;}i:32;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:188:" -  домены, на которые разрешена пересылка корреспонденции от посторонних (не авторизованных) клиентов.";}i:2;i:1322;}i:33;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1510;}i:34;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1510;}i:35;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:145:"Создадим конфигурационные файлы с помощью которых Postfix сможет обращаться к MySQL.";}i:2;i:1512;}i:36;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1657;}i:37;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1657;}i:38;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:50:"Таблицы основаны на PostfixAdmin.";}i:2;i:1661;}i:39;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1711;}i:40;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:192:"
# /etc/postfix/sql/relay_domains.cf

hosts = 127.0.0.1
user = postfixadmin
password = mypassword
dbname = postfixadmin
query = SELECT domain FROM domain WHERE domain='%s' and backupmx = '1'

";i:1;N;i:2;N;}i:2;i:1718;}i:41;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:303:"
# /etc/postfix/sql/virtual_alias_domain_maps.cf

hosts = 127.0.0.1
user = postfixadmin
password = mypassword
dbname = postfixadmin
query = SELECT goto FROM alias,alias_domain WHERE alias_domain.alias_domain = '%d' and alias.address = CONCAT('%u', '@', alias_domain.target_domain) AND alias.active = 1

";i:1;N;i:2;N;}i:2;i:1926;}i:42;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:193:"
# /etc/postfix/sql/virtual_alias_maps.cf

hosts = 127.0.0.1
user = postfixadmin
password = mypassword
dbname = postfixadmin
query = SELECT goto FROM alias WHERE address='%s' AND active = '1'

";i:1;N;i:2;N;}i:2;i:2245;}i:43;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:219:"
# /etc/postfix/sql/virtual_mailbox_domains.cf

hosts = 127.0.0.1
user = postfixadmin
password = mypassword
dbname = postfixadmin
query = SELECT domain FROM domain WHERE domain='%s' AND backupmx = '0' AND active = '1'

";i:1;N;i:2;N;}i:2;i:2454;}i:44;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:201:"
# /etc/postfix/sql/virtual_mailbox_maps.cf

hosts = 127.0.0.1
user = postfixadmin
password = mypassword
dbname = postfixadmin
query = SELECT maildir FROM mailbox WHERE username='%s' AND active = '1'

";i:1;N;i:2;N;}i:2;i:2691;}i:45;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2691;}i:46;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:16:"Файл main.cf";}i:2;i:2902;}i:47;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2918;}i:48;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:466:"

myhostname = mail.domain.com
mydomain = domain.com
myorigin = $myhostname

mynetworks = 127.0.0.0/8

alias_maps = hash:/etc/postfix/aliases

relay_domains = mysql:/etc/postfix/sql/relay_domains.cf
virtual_alias_maps = mysql:/etc/postfix/sql/virtual_alias_maps.cf, mysql:/etc/postfix/sql/virtual_alias_domain_maps.cf
virtual_mailbox_domains = mysql:/etc/postfix/sql/virtual_mailbox_domains.cf
virtual_mailbox_maps = mysql:/etc/postfix/sql/virtual_mailbox_maps.cf


";i:1;N;i:2;N;}i:2;i:2925;}i:49;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:3399;}i:50;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:3399;}}