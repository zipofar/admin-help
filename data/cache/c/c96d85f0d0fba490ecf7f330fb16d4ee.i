a:63:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:49:"Master-Slave репликация MySQL (MariaDB)";i:1;i:1;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:3;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1;}i:4;a:3:{i:0;s:13:"emphasis_open";i:1;a:0:{}i:2;i:66;}i:5;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:71:"В общих чертах про репликацию mysql читай";}i:2;i:68;}i:6;a:3:{i:0;s:14:"emphasis_close";i:1;a:0:{}i:2;i:139;}i:7;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:" ";}i:2;i:141;}i:8;a:3:{i:0;s:12:"externallink";i:1;a:2:{i:0;s:54:"http://highload.guide/blog/mysql_replication_2015.html";i:1;s:10:"здесь";}i:2;i:142;}i:9;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:211;}i:10;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:211;}i:11;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:78:"Про мультимастер решение и вообще полезно ";}i:2;i:213;}i:12;a:3:{i:0;s:12:"externallink";i:1;a:2:{i:0;s:33:"https://habrahabr.ru/post/276581/";i:1;s:13:" ЧИТАТЬ";}i:2;i:291;}i:13;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:342;}i:14;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:342;}i:15;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:49:"Буду использовать MariaDB 10.0.29";}i:2;i:344;}i:16;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:399;}i:17;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:20:"
mysqladmin version
";i:1;N;i:2;N;}i:2;i:399;}i:18;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:429;}i:19;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:12:"Первое";i:1;i:2;i:2;i:429;}i:2;i:429;}i:20;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:429;}i:21;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:429;}i:22;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:63:"Мой файл конфигурации лежит здесь.";}i:2;i:454;}i:23;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:523;}i:24;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:1134:"
# /etc/mysql/mariadb.conf.d/50-server.cnf

[mysqld]
user            = mysql
pid-file        = /var/run/mysqld/mysqld.pid
socket          = /var/run/mysqld/mysqld.sock
port            = 3306
basedir         = /usr
datadir         = /var/lib/mysql
tmpdir          = /tmp
lc-messages-dir = /usr/share/mysql

# Вот здесь меняем, чтобы был доступ по сети
bind-address = 192.168.0.185

[mariadb]
# Включаем ведение журнала logbin. Обязательно для мастера.
log-bin

# Вот этот параметр у каждого сервера свой. Значение данного параметра может быть от 1 до 2^32-1. Нужен на мастере и слейве.
server_id=1

# Это название файла binlog-а для мастера. Опять же для каждого сервера должно быть индивидуальным.
log-basename=master1

# Тут указываем формат binlog-а. Должно быть одинаковым как на мастере, так и на слейве.
binlog_format=ROW
";i:1;N;i:2;N;}i:2;i:523;}i:25;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1667;}i:26;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:19:"Второе - GTID";i:1;i:2;i:2;i:1667;}i:2;i:1667;}i:27;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:1667;}i:28;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1667;}i:29;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:204:"Знаем, что надо обязательно использовать GTID. Документация MariaDB говорит, что с версии 10.0 оно включено по дефолту.
";}i:2;i:1700;}i:30;a:3:{i:0;s:12:"externallink";i:1;a:2:{i:0;s:88:"https://dev.mysql.com/doc/refman/5.7/en/replication-mode-change-online-enable-gtids.html";i:1;s:10:"Здесь";}i:2;i:1904;}i:31;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:191:" можно читануть пошаговую инструкцию для включения этой штуки, т.к. не во всех дистрибах mysql оно включено.";}i:2;i:2007;}i:32;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2198;}i:33;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2198;}i:34;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:66:"Если вкратце, то для свежого сервера";}i:2;i:2200;}i:35;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2272;}i:36;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:96:"
# my.cnf
gtid-mode=ON

# В командной строке mysql
SET @@GLOBAL.GTID_MODE = ON;
";i:1;N;i:2;N;}i:2;i:2272;}i:37;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:2378;}i:38;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:49:"Третье - как ВКЛ репликацию";i:1;i:2;i:2;i:2378;}i:2;i:2378;}i:39;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:2378;}i:40;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2378;}i:41;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:155:"Вся работа с настройкой и управлением репликацией происходит в командной строке mysql.";}i:2;i:2440;}i:42;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2595;}i:43;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2595;}i:44;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:200:"CHANGE MASTER TO - вот эта команда и служит для настройки слейва. Именно слейва, т.к. мастером оно является изначально.";}i:2;i:2597;}i:45;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2797;}i:46;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2797;}i:47;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:120:"START SLAVE, STOP SLAVE - да, вот так вот оно (слейв) включается и выключается.";}i:2;i:2799;}i:48;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2919;}i:49;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:2921;}i:50;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:33:"Настраиваем слейв";i:1;i:3;i:2;i:2921;}i:2;i:2921;}i:51;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:2921;}i:52;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:166:"
CHANGE MASTER TO
  MASTER_HOST='master.domain.com | ip address',
  MASTER_USER='replication_user',
  MASTER_PASSWORD='megapassword',
  MASTER_USE_GTID = current_pos
";i:1;N;i:2;N;}i:2;i:2970;}i:53;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2970;}i:54;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:174:"Естественно, что на мастере нужно создать такого пользователя с таким паролем и дать ему права.";}i:2;i:3146;}i:55;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3326;}i:56;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:128:"
CREATE USER replication_user@localhost IDENTIFIED BY 'megapassword';
GRANT REPLICATION SLAVE ON *.* TO 'replication_user'@'%';
";i:1;N;i:2;N;}i:2;i:3326;}i:57;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:3464;}i:58;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:38:"Еще полезные команды";i:1;i:3;i:2;i:3464;}i:2;i:3464;}i:59;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:3464;}i:60;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:120:"
show master status;
show slave status\G;
show variables like '%gtid%';
show processlist\G;

reset master;
reset slave;
";i:1;N;i:2;N;}i:2;i:3518;}i:61;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:3648;}i:62;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:3648;}}