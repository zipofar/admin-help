a:23:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:31:"Не запускается LXD";i:1;i:1;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:3;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1;}i:4;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:161:"Возникла такая проблема. Не запускается LXD и вот такие ошибки при попытке перезапуска lxd.";}i:2;i:48;}i:5;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:215;}i:6;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:189:"
# Ошибка
error: Unable to talk to LXD: Get http://unix.socket/1.0: dial unix /var/lib/lxd/unix.socket: connect: connection refused

# Ошибка
Connection refused is LXD running?
";i:1;N;i:2;N;}i:2;i:215;}i:7;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:215;}i:8;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:306:"Все из-за того, что сначала я установил LXC, а потом добавил LXD. И получилось так, что сначала успевал стартовать lxc network, а потом на этот же порт пытался забиндиться lxd network. ";}i:2;i:414;}i:9;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:720;}i:10;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:720;}i:11;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:63:"Сетевые настройки храняться здесь";}i:2;i:722;}i:12;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:791;}i:13;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:46:"
/etc/default/lxc-net
/etc/default/lxd-bridge
";i:1;N;i:2;N;}i:2;i:791;}i:14;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:791;}i:15;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:51:"Пришлось отключить USE_LXC_BRIDGE=";}i:2;i:847;}i:16;a:3:{i:0;s:18:"doublequoteopening";i:1;a:0:{}i:2;i:898;}i:17;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:5:"false";}i:2;i:899;}i:18;a:3:{i:0;s:18:"doublequoteclosing";i:1;a:0:{}i:2;i:904;}i:19;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:23:" в файле lxc-net.";}i:2;i:905;}i:20;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:928;}i:21;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:928;}i:22;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:928;}}