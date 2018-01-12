a:9:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:62:"Настройка fail2ban для отправки почты";i:1;i:1;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:3;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1;}i:4;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:84:"Внутри каждого jail нужно добавить action = %(action_mwl)s";}i:2;i:79;}i:5;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:163;}i:6;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:111:"
# Пример для ssh

[sshd]

bantime = 60
port    = ssh
logpath = %(sshd_log)s
action = %(action_mwl)s

";i:1;N;i:2;N;}i:2;i:170;}i:7;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:290;}i:8;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:290;}}