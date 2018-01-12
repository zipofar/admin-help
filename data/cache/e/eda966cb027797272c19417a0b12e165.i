a:191:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:130:"Настройка Master-Slave репликации по шагам и переключение Slave to Master и обратно";i:1;i:1;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:3;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1;}i:4;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:27:"Конфиг мастера";}i:2;i:147;}i:5;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:174;}i:6;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:213:"
[mysqld]
bind-address = 10.0.0.1

[mariadb]
log-bin
server_id=1
log-basename=srv1
binlog_format=ROW
binlog-do-db=db1
binlog-ignore-db=mysql
binlog-ignore-db=information_schema
binlog-ignore-db=performance_schema
";i:1;N;i:2;N;}i:2;i:181;}i:7;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:181;}i:8;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:25:"Конфиг слейва";}i:2;i:404;}i:9;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:435;}i:10;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:213:"
[mysqld]
bind-address = 10.0.0.2

[mariadb]
log-bin
server_id=2
log-basename=srv2
binlog_format=ROW
binlog-do-db=db1
binlog-ignore-db=mysql
binlog-ignore-db=information_schema
binlog-ignore-db=performance_schema
";i:1;N;i:2;N;}i:2;i:435;}i:11;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:435;}i:12;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:101:"На обоих серверах создаем пользователя для репликации.";}i:2;i:658;}i:13;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:765;}i:14;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:65:"
GRANT REPLICATION SLAVE ON *.* TO 'rep'@'%'IDENTIFIED BY 'rep';
";i:1;N;i:2;N;}i:2;i:765;}i:15;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:765;}i:16;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:70:"На обоих серверах создаем базу данных.";}i:2;i:840;}i:17;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:916;}i:18;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:22:"
CREATE DATABASE db1;
";i:1;N;i:2;N;}i:2;i:916;}i:19;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:916;}i:20;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:101:"Для тестов сделал такую табличку на srv1 (будет мастером).";}i:2;i:948;}i:21;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1055;}i:22;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:82:"
CREATE TABLE t1 (id INT NOT NULL AUTO_INCREMENT PRIMARY KEY, code VARCHAR(255));
";i:1;N;i:2;N;}i:2;i:1055;}i:23;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1055;}i:24;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:161:"Прежде чем вставлять данные, очистим значения GTID позиций бинлога мастера и слейва на srv1.";}i:2;i:1147;}i:25;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1314;}i:26;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:49:"
RESET MASTER;
SET GLOBAL gtid_slave_pos=’’;
";i:1;N;i:2;N;}i:2;i:1314;}i:27;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1314;}i:28;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:88:"Переменные GTID на srv1 должны теперь выглядеть так.";}i:2;i:1373;}i:29;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1467;}i:30;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:504:"
MariaDB [(none)]> show variables like '%gtid%';
+------------------------+-------+
| Variable_name          | Value |
+------------------------+-------+
| gtid_binlog_pos        |       |
| gtid_binlog_state      |       |
| gtid_current_pos       |       |
| gtid_domain_id         | 0     |
| gtid_ignore_duplicates | OFF   |
| gtid_seq_no            | 0     |
| gtid_slave_pos         |       |
| gtid_strict_mode       | OFF   |
| last_gtid              |       |
+------------------------+-------+
";i:1;N;i:2;N;}i:2;i:1467;}i:31;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1467;}i:32;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:60:"Вставим пять записей в таблицу t1.";}i:2;i:1981;}i:33;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2047;}i:34;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:74:"
# Повторить 5 раз
INSERT INTO db1.t1 (code) VALUES (uuid());
";i:1;N;i:2;N;}i:2;i:2047;}i:35;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2047;}i:36;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:29:"Смотрим GTID на srv1";}i:2;i:2131;}i:37;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2166;}i:38;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:504:"
MariaDB [(none)]> show variables like '%gtid%';
+------------------------+-------+
| Variable_name          | Value |
+------------------------+-------+
| gtid_binlog_pos        | 0-1-5 |
| gtid_binlog_state      | 0-1-5 |
| gtid_current_pos       | 0-1-5 |
| gtid_domain_id         | 0     |
| gtid_ignore_duplicates | OFF   |
| gtid_seq_no            | 0     |
| gtid_slave_pos         |       |
| gtid_strict_mode       | OFF   |
| last_gtid              | 0-1-5 |
+------------------------+-------+
";i:1;N;i:2;N;}i:2;i:2166;}i:39;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2166;}i:40;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:40:"Делаем дамп базы на srv1";}i:2;i:2680;}i:41;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2726;}i:42;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:39:"
mysqldump –uroot db1 > db1-dump.sql
";i:1;N;i:2;N;}i:2;i:2726;}i:43;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2726;}i:44;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:63:"Копируем дамп на srv2 загружаем в mysql";}i:2;i:2775;}i:45;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2844;}i:46;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:35:"
mysql –uroot db1 < db1-dump.sql
";i:1;N;i:2;N;}i:2;i:2844;}i:47;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2844;}i:48;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:47:"Также на srv2 ресетим все gtid";}i:2;i:2889;}i:49;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2942;}i:50;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:49:"
RESET MASTER;
SET GLOBAL gtid_slave_pos=’’;
";i:1;N;i:2;N;}i:2;i:2942;}i:51;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2942;}i:52;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:30:"Смотрим GTID на srv2.";}i:2;i:3001;}i:53;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3037;}i:54;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:504:"
MariaDB [(none)]> show variables like '%gtid%';
+------------------------+-------+
| Variable_name          | Value |
+------------------------+-------+
| gtid_binlog_pos        |       |
| gtid_binlog_state      |       |
| gtid_current_pos       |       |
| gtid_domain_id         | 0     |
| gtid_ignore_duplicates | OFF   |
| gtid_seq_no            | 0     |
| gtid_slave_pos         |       |
| gtid_strict_mode       | OFF   |
| last_gtid              |       |
+------------------------+-------+
";i:1;N;i:2;N;}i:2;i:3037;}i:55;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3037;}i:56;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:267:"Помним, что бэкап базы на srv1 сделали на позиции 0-1-5.
Теперь для того, чтобы продолжить репликацию с этой позиции, нужно задать gtid_slave_pos = ‘0-1-5’ на srv2.";}i:2;i:3551;}i:57;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3824;}i:58;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:42:"
SET GLOBAL gtid_slave_pos = ‘0-1-5’;
";i:1;N;i:2;N;}i:2;i:3824;}i:59;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3824;}i:60;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:24:"Смотрим на srv2";}i:2;i:3876;}i:61;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3906;}i:62;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:504:"
MariaDB [(none)]> show variables like '%gtid%';
+------------------------+-------+
| Variable_name          | Value |
+------------------------+-------+
| gtid_binlog_pos        |       |
| gtid_binlog_state      |       |
| gtid_current_pos       | 0-1-5 |
| gtid_domain_id         | 0     |
| gtid_ignore_duplicates | OFF   |
| gtid_seq_no            | 0     |
| gtid_slave_pos         | 0-1-5 |
| gtid_strict_mode       | OFF   |
| last_gtid              |       |
+------------------------+-------+
";i:1;N;i:2;N;}i:2;i:3906;}i:63;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3906;}i:64;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:104:"Посмотрим на srv1 название бинлога. Нам нужно значение 'File'.";}i:2;i:4420;}i:65;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:4530;}i:66;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:520:"
SHOW MASTER STATUS;

MariaDB [(none)]> show master status;
+-----------------+----------+--------------+---------------------------------------------+
| File            | Position | Binlog_Do_DB | Binlog_Ignore_DB                            |
+-----------------+----------+--------------+---------------------------------------------+
| srv1-bin.000001 |     1211 | db1          | mysql,information_schema,performance_schema |
+-----------------+----------+--------------+---------------------------------------------+
";i:1;N;i:2;N;}i:2;i:4530;}i:67;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:4530;}i:68;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:33:"Настроим slave на srv2.";}i:2;i:5060;}i:69;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:5099;}i:70;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:160:"
CHANGE MASTER TO
  MASTER_HOST='10.0.0.1',
  MASTER_USER='rep',
  MASTER_PASSWORD='rep',
  MASTER_LOG_FILE=' srv1-bin.000001',
  MASTER_USE_GTID = current_pos
";i:1;N;i:2;N;}i:2;i:5099;}i:71;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:5099;}i:72;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:75:"Стартуем слейв на srv2 и смотрим состояние.";}i:2;i:5269;}i:73;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:5350;}i:74;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:35:"
START SLAVE;
SHOW SLAVE STATUS\G;
";i:1;N;i:2;N;}i:2;i:5350;}i:75;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:5350;}i:76;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:71:"Следующие значения должны быть такими:";}i:2;i:5395;}i:77;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:5472;}i:78;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:46:"
Slave_IO_Running: Yes
Slave_SQL_Running: Yes
";i:1;N;i:2;N;}i:2;i:5472;}i:79;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:5472;}i:80;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:100:"Теперь внесем еще две записи на srv1 и посмотрим gtid на srv1.";}i:2;i:5528;}i:81;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:5634;}i:82;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:504:"
MariaDB [(none)]> show variables like '%gtid%';
+------------------------+-------+
| Variable_name          | Value |
+------------------------+-------+
| gtid_binlog_pos        | 0-1-7 |
| gtid_binlog_state      | 0-1-7 |
| gtid_current_pos       | 0-1-7 |
| gtid_domain_id         | 0     |
| gtid_ignore_duplicates | OFF   |
| gtid_seq_no            | 0     |
| gtid_slave_pos         |       |
| gtid_strict_mode       | OFF   |
| last_gtid              | 0-1-7 |
+------------------------+-------+
";i:1;N;i:2;N;}i:2;i:5634;}i:83;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:5634;}i:84;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:45:"Также посмотрим на srv2 gtid.";}i:2;i:6148;}i:85;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:6199;}i:86;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:504:"
MariaDB [(none)]> show variables like '%gtid%';
+------------------------+-------+
| Variable_name          | Value |
+------------------------+-------+
| gtid_binlog_pos        |       |
| gtid_binlog_state      |       |
| gtid_current_pos       | 0-1-7 |
| gtid_domain_id         | 0     |
| gtid_ignore_duplicates | OFF   |
| gtid_seq_no            | 0     |
| gtid_slave_pos         | 0-1-7 |
| gtid_strict_mode       | OFF   |
| last_gtid              |       |
+------------------------+-------+
";i:1;N;i:2;N;}i:2;i:6199;}i:87;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:6199;}i:88;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:46:"Все. Репликация работает.";}i:2;i:6713;}i:89;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:6759;}i:90;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:6762;}i:91;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:38:"Переключаем Slave to Master";i:1;i:2;i:2;i:6762;}i:2;i:6762;}i:92;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:6762;}i:93;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:6762;}i:94;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:345:"Представим, что с сервером srv1, что-то произошло и мы не может на него писать. В связи с этим где-то что-то переключили и поток данных перенаправили на srv2. Т.е. из слейва (srv2) надо сделать мастер.";}i:2;i:6814;}i:95;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:7159;}i:96;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:7159;}i:97;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:93:"Прежде чем начать писать на слейв(srv2), делаем ресет.";}i:2;i:7161;}i:98;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:7260;}i:99;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:21:"
#srv2
RESET MASTER;
";i:1;N;i:2;N;}i:2;i:7260;}i:100;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:7260;}i:101;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:91:"Предположим, что слейв остановился на позиции 0-1-7.";}i:2;i:7291;}i:102;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:7388;}i:103;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:510:"
#srv2
MariaDB [(none)]> show variables like '%gtid%';
+------------------------+-------+
| Variable_name          | Value |
+------------------------+-------+
| gtid_binlog_pos        |       |
| gtid_binlog_state      |       |
| gtid_current_pos       | 0-1-7 |
| gtid_domain_id         | 0     |
| gtid_ignore_duplicates | OFF   |
| gtid_seq_no            | 0     |
| gtid_slave_pos         | 0-1-7 |
| gtid_strict_mode       | OFF   |
| last_gtid              |       |
+------------------------+-------+
";i:1;N;i:2;N;}i:2;i:7388;}i:104;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:7388;}i:105;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:130:"Видим, что позиция бинлога пустая, значит запись начнется с позиции 0-2-0.";}i:2;i:7908;}i:106;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:8038;}i:107;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:8038;}i:108;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:45:"Вставим две записи на srv2.";}i:2;i:8040;}i:109;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:8091;}i:110;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:44:"
INSERT INTO db1.t1 (code) VALUES (uuid());
";i:1;N;i:2;N;}i:2;i:8091;}i:111;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:8091;}i:112;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:27:"Получаем на srv2.";}i:2;i:8145;}i:113;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:8178;}i:114;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:504:"
MariaDB [(none)]> show variables like '%gtid%';
+------------------------+-------+
| Variable_name          | Value |
+------------------------+-------+
| gtid_binlog_pos        | 0-2-2 |
| gtid_binlog_state      | 0-2-2 |
| gtid_current_pos       | 0-1-7 |
| gtid_domain_id         | 0     |
| gtid_ignore_duplicates | OFF   |
| gtid_seq_no            | 0     |
| gtid_slave_pos         | 0-1-7 |
| gtid_strict_mode       | OFF   |
| last_gtid              | 0-2-2 |
+------------------------+-------+
";i:1;N;i:2;N;}i:2;i:8178;}i:115;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:8178;}i:116;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:447:"Предположим, что srv1 ввели в работу, и мы хотим чтобы он снова стал мастером, но база у нас 10ТБ и затаскивать на srv1 такой большой бэкап нет никакого желания. Сделаем его (srv1) слейвом, догоним базу до текущего состояния srv2 и переключим опять в мастер.";}i:2;i:8692;}i:117;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:9139;}i:118;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:9139;}i:119;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:20:"Смотрим srv1.";}i:2;i:9141;}i:120;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:9167;}i:121;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:504:"
MariaDB [(none)]> show variables like '%gtid%';
+------------------------+-------+
| Variable_name          | Value |
+------------------------+-------+
| gtid_binlog_pos        | 0-1-7 |
| gtid_binlog_state      | 0-1-7 |
| gtid_current_pos       | 0-1-7 |
| gtid_domain_id         | 0     |
| gtid_ignore_duplicates | OFF   |
| gtid_seq_no            | 0     |
| gtid_slave_pos         |       |
| gtid_strict_mode       | OFF   |
| last_gtid              | 0-1-7 |
+------------------------+-------+
";i:1;N;i:2;N;}i:2;i:9167;}i:122;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:9167;}i:123;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:192:"Допустим ничего не поломалось и мастер (srv1) стоит на той же позиции, на которой закончил репликацию слейв.";}i:2;i:9681;}i:124;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:9873;}i:125;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:9873;}i:126;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:20:"Ресетим srv1.";}i:2;i:9875;}i:127;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:9901;}i:128;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:28:"
RESET MASTER;
RESET SLAVE;
";i:1;N;i:2;N;}i:2;i:9901;}i:129;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:9901;}i:130;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:245:"Выставляем (srv1) slave_pos в позицию 0-2-0, т.е. в ту позицию с которой начал писать бинлог srv2 и получается на которой остановилась запись на srv1.";}i:2;i:9939;}i:131;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:10190;}i:132;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:39:"
SET GLOBAL gtid_slave_pos=’0-2-0’
";i:1;N;i:2;N;}i:2;i:10190;}i:133;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:10190;}i:134;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:39:"Настраиваем на srv1 slave.";}i:2;i:10239;}i:135;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:10284;}i:136;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:160:"
CHANGE MASTER TO
  MASTER_HOST='10.0.0.2',
  MASTER_USER='rep',
  MASTER_PASSWORD='rep',
  MASTER_LOG_FILE=' srv2-bin.000001',
  MASTER_USE_GTID = current_pos
";i:1;N;i:2;N;}i:2;i:10284;}i:137;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:10284;}i:138;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:39:"Запускаем слейв на srv1";}i:2;i:10454;}i:139;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:10499;}i:140;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:14:"
START SLAVE;
";i:1;N;i:2;N;}i:2;i:10499;}i:141;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:10499;}i:142;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:29:"Смотрим gtid на srv1";}i:2;i:10523;}i:143;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:10558;}i:144;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:504:"
MariaDB [(none)]> show variables like '%gtid%';
+------------------------+-------+
| Variable_name          | Value |
+------------------------+-------+
| gtid_binlog_pos        |       |
| gtid_binlog_state      |       |
| gtid_current_pos       | 0-2-2 |
| gtid_domain_id         | 0     |
| gtid_ignore_duplicates | OFF   |
| gtid_seq_no            | 0     |
| gtid_slave_pos         | 0-2-2 |
| gtid_strict_mode       | OFF   |
| last_gtid              |       |
+------------------------+-------+
";i:1;N;i:2;N;}i:2;i:10558;}i:145;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:10558;}i:146;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:84:"Ура. Все прошло удачно. Теперь srv1 стал слейвом.";}i:2;i:11072;}i:147;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:11156;}i:148;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:11156;}i:149;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:102:"Вставим еще одну запись на srv2 «для порядка» так сказать.";}i:2;i:11158;}i:150;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:11260;}i:151;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:11262;}i:152;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:125:"Ну и теперь вернем все как было, т.е. srv1 сделаем мастером, а srv2 слейвом";i:1;i:2;i:2;i:11262;}i:2;i:11262;}i:153;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:11262;}i:154;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:11262;}i:155;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:91:"Сначала блокируем все таблицы на запись в db1 на srv2.";}i:2;i:11401;}i:156;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:11498;}i:157;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:39:"
USE db1;
FLUSH TABLES WITH READ LOCK;
";i:1;N;i:2;N;}i:2;i:11498;}i:158;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:11498;}i:159;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:138:"Дождемся пока все данные на srv1 дозапишуться (если слейв отстает от мастера).";}i:2;i:11547;}i:160;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:11691;}i:161;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:21:"
SHOW PROCESSLIST\G;
";i:1;N;i:2;N;}i:2;i:11691;}i:162;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:11691;}i:163;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:47:"Останавливаем слейв на srv1";}i:2;i:11722;}i:164;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:11775;}i:165;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:13:"
STOP SLAVE;
";i:1;N;i:2;N;}i:2;i:11775;}i:166;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:11775;}i:167;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:69:"На всякий случай сделаем ресет для srv1.";}i:2;i:11798;}i:168;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:11873;}i:169;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:15:"
RESET MASTER;
";i:1;N;i:2;N;}i:2;i:11873;}i:170;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:11873;}i:171;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:240:"Допустим, что где-то там переключаем поток данных на srv1 и готово. Srv1 снова стал мастером. Отсчет позиции бинлога на srv1 начнется с 0-1-0.";}i:2;i:11898;}i:172;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:12138;}i:173;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:12138;}i:174;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:48:"Снимаем lock на srv2 и ресетим.";}i:2;i:12140;}i:175;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:12194;}i:176;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:43:"
UNLOCK TABLES;
RESET MASTER;
RESET SLAVE;
";i:1;N;i:2;N;}i:2;i:12194;}i:177;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:12194;}i:178;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:85:"На srv2 устанавливаем начальную позицию gtid в 0-1-0.";}i:2;i:12247;}i:179;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:12338;}i:180;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:40:"
SET GLOBAL gtid_slave_pos=’0-1-0’;
";i:1;N;i:2;N;}i:2;i:12338;}i:181;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:12338;}i:182;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:44:"Настраиваем слейв на srv2.";}i:2;i:12388;}i:183;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:12438;}i:184;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:160:"
CHANGE MASTER TO
  MASTER_HOST='10.0.0.1',
  MASTER_USER='rep',
  MASTER_PASSWORD='rep',
  MASTER_LOG_FILE=' srv1-bin.000001',
  MASTER_USE_GTID = current_pos
";i:1;N;i:2;N;}i:2;i:12438;}i:185;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:12438;}i:186;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:28:"Стартуем слейв.";}i:2;i:12608;}i:187;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:12642;}i:188;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:14:"
START SLAVE;
";i:1;N;i:2;N;}i:2;i:12642;}i:189;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:12664;}i:190;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:12664;}}