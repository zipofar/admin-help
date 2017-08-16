a:19:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:12:"1С + Ubuntu";i:1;i:1;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:3;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1;}i:4;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:101:"Для установки 1с сервера на ubuntu, нужно как миниму 2 файла";}i:2;i:29;}i:5;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:130;}i:6;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:300:"
1c-enterprise83-common_8.3.10-2375_amd64.deb
1c-enterprise83-server_8.3.10-2375_amd64.deb

# Третий файл нужен для возможности публикации 1с как веб сервис
# т.е. для доступа через Apache

1c-enterprise83-ws_8.3.10-2375_amd64.deb
";i:1;N;i:2;N;}i:2;i:137;}i:7;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:137;}i:8;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:95:"Заливаем их на сервер и устанавливаем с помощью dpkg -i";}i:2;i:447;}i:9;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:542;}i:10;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:544;}i:11;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:49:"Публикация как веб сервиса";i:1;i:2;i:2;i:544;}i:2;i:544;}i:12;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:544;}i:13;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:544;}i:14;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:62:"Версия 8.3.10-2375 уже работает с Apache 2.4";}i:2;i:607;}i:15;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:669;}i:16;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:827:"
# Apache 2.4
/opt/1C/v8.3/x86_64/webinst -apache24 -wsdir test -dir /var/www/test -connstr "Srvr=localhost;Ref=test;" -confPath /etc/apache2/apache2.conf

# Apache 2.2
/opt/1C/v8.3/x86_64/webinst -apache22 -wsdir test -dir /var/www/test -connstr "Srvr=localhost;Ref=test;" -confPath /etc/apache2/apache2.conf

# -apache22 | -apache24 -> версия апача
# -wsdir test -> значит набирать в адресной строке надо http://servername.loc/test
# -dir /var/www/test -> значить default.vrd запишется в этот каталог
# -connstr "Srvr=localhost;Ref=test;":
#    localhost -> ip адрес вашего сервера (лучше адрес интерфейса с которого будет подключение)
#    Ref=test -> название БД в postgres
  
";i:1;N;i:2;N;}i:2;i:676;}i:17;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1511;}i:18;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:1511;}}