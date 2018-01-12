a:16:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:79:"Postfix ограничить число исходящих соединений";i:1;i:1;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:3;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1;}i:4;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:322:"При использовании Postfix в качестве relay, все исходящие письма отправляются через почтовик провайдера, который в свою очередь ограничивает число паралельных входящих соединений.";}i:2;i:96;}i:5;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:418;}i:6;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:418;}i:7;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:149:"Чтобы ограничить количество паралельных исходящих соединений, делаем следующее:";}i:2;i:420;}i:8;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:569;}i:9;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:149:"
# /etc/postfix/master.cf

smtp      unix  -       -       n       -       1       smtp
relay     unix  -       -       n       -       1       smtp
";i:1;N;i:2;N;}i:2;i:576;}i:10;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:576;}i:11;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:51:"Также добавим строчек в main.cf";}i:2;i:735;}i:12;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:792;}i:13;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:104:"
# /etc/postfix/main.cf

relay_destination_concurrency_limit = 1
smtp_destination_concurrency_limit = 1
";i:1;N;i:2;N;}i:2;i:792;}i:14;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:905;}i:15;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:905;}}