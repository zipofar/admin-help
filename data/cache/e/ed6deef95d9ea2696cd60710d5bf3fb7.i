a:24:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:33:"Настройка Template MySQL";i:1;i:1;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:3;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1;}i:4;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:88:"Добавляем пользователя MySQL. USAGE - значит без прав.";}i:2;i:50;}i:5;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:144;}i:6;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:93:"
GRANT USAGE ON *.* TO 'zabbix'@'localhost' IDENTIFIED BY 'superpassword';
FLUSH PRIVILEGES;
";i:1;N;i:2;N;}i:2;i:144;}i:7;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:144;}i:8;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:85:"В /etc/zabbix/zabbix_agent.d должен быть файл userparameter_mysql.conf";}i:2;i:247;}i:9;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:338;}i:10;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:730:"
UserParameter=mysql.version,mysql -V
UserParameter=mysql.status[*],echo "show global status where Variable_name='$1';" | HOME=/etc/zabbix mysql -N | awk '{print $$2}'
UserParameter=mysql.ping,HOME=/etc/zabbix mysqladmin ping | grep -c alive
# 'sum' on data_length or index_length alone needed when we are getting this information for whole database instead of a single table
UserParameter=mysql.size[*],echo "select sum($(case "$3" in both|"") echo "data_length+index_length";; data|index) echo "$3_length";; free) echo "data_free";; esac)) from information_schema.tables$([[ "$1" = "all" || ! "$1" ]] || echo " where table_schema='$1'")$([[ "$2" = "all" || ! "$2" ]] || echo "and table_name='$2'");" | HOME=/etc/zabbix mysql -N
";i:1;N;i:2;N;}i:2;i:338;}i:11;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:338;}i:12;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:109:"Согласно файлу userparameter_mysql.conf смотрим где находится каталог ";}i:2;i:1078;}i:13;a:3:{i:0;s:11:"strong_open";i:1;a:0:{}i:2;i:1187;}i:14;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:4:"HOME";}i:2;i:1189;}i:15;a:3:{i:0;s:12:"strong_close";i:1;a:0:{}i:2;i:1193;}i:16;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:43:", там и создаем файл .my.cnf";}i:2;i:1195;}i:17;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1238;}i:18;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:60:"
# .my.cnf

[client]
user = zabbix
password = superpassword
";i:1;N;i:2;N;}i:2;i:1245;}i:19;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1245;}i:20;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:39:"Перезапускаем агента";}i:2;i:1315;}i:21;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1354;}i:22;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1354;}i:23;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:1354;}}