a:13:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:93:"Сron спамит auth.log (pam_unix(cron:session): session opened for user root by (uid=0))";i:1;i:1;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:3;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1;}i:4;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:64:"Вот такие записи бывают в /etc/var/auth.log";}i:2;i:110;}i:5;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:174;}i:6;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:196:"
Jun  2 10:39:01 mail-serv CRON[28225]: pam_unix(cron:session): session opened for user root by (uid=0)
Jun  2 10:39:02 mail-serv CRON[28225]: pam_unix(cron:session): session closed for user root
";i:1;N;i:2;N;}i:2;i:181;}i:7;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:181;}i:8;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:82:"Для устранения можно использовать следующее";}i:2;i:387;}i:9;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:469;}i:10;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:232:"
# /etc/pam.d/common-session-noninteractive

# Найти строку: session required        pam_unix.so
# И над ней добавить: session     [success=1 default=ignore] pam_succeed_if.so service in cron quiet use_uid
";i:1;N;i:2;N;}i:2;i:476;}i:11;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:716;}i:12;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:716;}}