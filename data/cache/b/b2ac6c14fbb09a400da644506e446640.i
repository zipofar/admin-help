a:88:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:60:"Настройка Postfix virtual mailbox + MySQL + Dovecot";i:1;i:1;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:3;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1;}i:4;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:5:"color";i:1;a:2:{i:0;i:1;i:1;a:2:{i:0;s:12:"color:green;";i:1;s:0:"";}}i:2;i:1;i:3;s:13:"<color green>";}i:2;i:77;}i:5;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:5:"color";i:1;a:2:{i:0;i:3;i:1;s:38:" ===== Настроим Postfix ===== ";}i:2;i:3;i:3;s:38:" ===== Настроим Postfix ===== ";}i:2;i:90;}i:6;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:5:"color";i:1;a:2:{i:0;i:4;i:1;s:0:"";}i:2;i:4;i:3;s:8:"</color>";}i:2;i:128;}i:7;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:136;}i:8;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:136;}i:9;a:3:{i:0;s:11:"strong_open";i:1;a:0:{}i:2;i:138;}i:10;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:21:"virtual_alias_domains";}i:2;i:140;}i:11;a:3:{i:0;s:12:"strong_close";i:1;a:0:{}i:2;i:161;}i:12;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:511:" - домены для которых сервер является местом конечного назначения. Используется данный параметр именно, что в качестве алиаса для домена у которого существуют почтовые ящики. Т.е. письма приходят на адрес admin@book.com и перенаправляются на адрес admin@magazin.com у которого существуют ящики.";}i:2;i:163;}i:13;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:674;}i:14;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:674;}i:15;a:3:{i:0;s:11:"strong_open";i:1;a:0:{}i:2;i:676;}i:16;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:18:"virtual_alias_maps";}i:2;i:678;}i:17;a:3:{i:0;s:12:"strong_close";i:1;a:0:{}i:2;i:696;}i:18;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:84:" - псевдонимы для виртуальных почтовых ящиков.";}i:2;i:698;}i:19;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:788;}i:20;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:88:"
wilma@example.com wilma.pebble@example.com
pebble@example.com wilma.pebble@example.com
";i:1;N;i:2;N;}i:2;i:788;}i:21;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:788;}i:22;a:3:{i:0;s:11:"strong_open";i:1;a:0:{}i:2;i:886;}i:23;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:23:"virtual_mailbox_domains";}i:2;i:888;}i:24;a:3:{i:0;s:12:"strong_close";i:1;a:0:{}i:2;i:911;}i:25;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:252:" - сообщает серверу Postfix о том, что он является местом конечного назначения для одного или нескольких доменов виртуальных почтовых ящиков.";}i:2;i:913;}i:26;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1165;}i:27;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1165;}i:28;a:3:{i:0;s:11:"strong_open";i:1;a:0:{}i:2;i:1168;}i:29;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:20:"virtual_mailbox_maps";}i:2;i:1170;}i:30;a:3:{i:0;s:12:"strong_close";i:1;a:0:{}i:2;i:1190;}i:31;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:180:" - сообщает серверу Postfix, где искать ящики получателей в плане физического расположения на сервере.";}i:2;i:1192;}i:32;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1372;}i:33;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1372;}i:34;a:3:{i:0;s:11:"strong_open";i:1;a:0:{}i:2;i:1374;}i:35;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:13:"relay_domains";}i:2;i:1376;}i:36;a:3:{i:0;s:12:"strong_close";i:1;a:0:{}i:2;i:1389;}i:37;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:188:" -  домены, на которые разрешена пересылка корреспонденции от посторонних (не авторизованных) клиентов.";}i:2;i:1391;}i:38;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1579;}i:39;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1579;}i:40;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:145:"Создадим конфигурационные файлы с помощью которых Postfix сможет обращаться к MySQL.";}i:2;i:1581;}i:41;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1726;}i:42;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1726;}i:43;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:5:"color";i:1;a:2:{i:0;i:1;i:1;a:2:{i:0;s:10:"color:red;";i:1;s:0:"";}}i:2;i:1;i:3;s:11:"<color red>";}i:2;i:1730;}i:44;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:5:"color";i:1;a:2:{i:0;i:3;i:1;s:50:"Таблицы основаны на PostfixAdmin.";}i:2;i:3;i:3;s:50:"Таблицы основаны на PostfixAdmin.";}i:2;i:1741;}i:45;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:5:"color";i:1;a:2:{i:0;i:4;i:1;s:0:"";}i:2;i:4;i:3;s:8:"</color>";}i:2;i:1791;}i:46;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1799;}i:47;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:192:"
# /etc/postfix/sql/relay_domains.cf

hosts = 127.0.0.1
user = postfixadmin
password = mypassword
dbname = postfixadmin
query = SELECT domain FROM domain WHERE domain='%s' and backupmx = '1'

";i:1;N;i:2;N;}i:2;i:1806;}i:48;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:303:"
# /etc/postfix/sql/virtual_alias_domain_maps.cf

hosts = 127.0.0.1
user = postfixadmin
password = mypassword
dbname = postfixadmin
query = SELECT goto FROM alias,alias_domain WHERE alias_domain.alias_domain = '%d' and alias.address = CONCAT('%u', '@', alias_domain.target_domain) AND alias.active = 1

";i:1;N;i:2;N;}i:2;i:2014;}i:49;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:193:"
# /etc/postfix/sql/virtual_alias_maps.cf

hosts = 127.0.0.1
user = postfixadmin
password = mypassword
dbname = postfixadmin
query = SELECT goto FROM alias WHERE address='%s' AND active = '1'

";i:1;N;i:2;N;}i:2;i:2333;}i:50;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:219:"
# /etc/postfix/sql/virtual_mailbox_domains.cf

hosts = 127.0.0.1
user = postfixadmin
password = mypassword
dbname = postfixadmin
query = SELECT domain FROM domain WHERE domain='%s' AND backupmx = '0' AND active = '1'

";i:1;N;i:2;N;}i:2;i:2542;}i:51;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:201:"
# /etc/postfix/sql/virtual_mailbox_maps.cf

hosts = 127.0.0.1
user = postfixadmin
password = mypassword
dbname = postfixadmin
query = SELECT maildir FROM mailbox WHERE username='%s' AND active = '1'

";i:1;N;i:2;N;}i:2;i:2779;}i:52;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2779;}i:53;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:16:"Файл main.cf";}i:2;i:2990;}i:54;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3006;}i:55;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:811:"

myhostname = mail.domain.com
mydomain = domain.com
myorigin = $myhostname

# Чтобы никто не мог отправлять почту на внешние адреса без аутэнтификации
mynetworks = 

# Для избежания записи ошибок в лог, создайте файл /etc/postfix/aliases и сделайте пустую карту postmap hash:/etc/postfix/aliases

alias_maps = hash:/etc/postfix/aliases

relay_domains = mysql:/etc/postfix/sql/relay_domains.cf
virtual_alias_maps = mysql:/etc/postfix/sql/virtual_alias_maps.cf, mysql:/etc/postfix/sql/virtual_alias_domain_maps.cf
virtual_mailbox_domains = mysql:/etc/postfix/sql/virtual_mailbox_domains.cf
virtual_mailbox_maps = mysql:/etc/postfix/sql/virtual_mailbox_maps.cf

virtual_transport = dovecot

";i:1;N;i:2;N;}i:2;i:3013;}i:56;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3013;}i:57;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:108:"Подключим Dovecot в качестве LDA для виртуальных пользователей.";}i:2;i:3834;}i:58;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3942;}i:59;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:382:"
# /etc/postfix/master.cf
# Не забудьте создать пользователя vmail, группу vmail и включить этого польователя в эту группу, gid = 2000, uid = 2000

dovecot   unix  -       n       n       -       -       pipe
  flags=DRhu user=vmail:vmail argv=/usr/local/libexec/dovecot/dovecot-lda -f ${sender} -d ${recipient}
";i:1;N;i:2;N;}i:2;i:3949;}i:60;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3949;}i:61;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:5:"color";i:1;a:2:{i:0;i:1;i:1;a:2:{i:0;s:12:"color:green;";i:1;s:0:"";}}i:2;i:1;i:3;s:13:"<color green>";}i:2;i:4341;}i:62;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:5:"color";i:1;a:2:{i:0;i:3;i:1;s:38:" ===== Настроим Dovecot ===== ";}i:2;i:3;i:3;s:38:" ===== Настроим Dovecot ===== ";}i:2;i:4354;}i:63;a:3:{i:0;s:6:"plugin";i:1;a:4:{i:0;s:5:"color";i:1;a:2:{i:0;i:4;i:1;s:0:"";}i:2;i:4;i:3;s:8:"</color>";}i:2;i:4392;}i:64;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:4400;}i:65;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:93:"
auth_mechanisms = plain login

# Расскоментируем 
!include auth-sql.conf.ext
";i:1;N;i:2;N;}i:2;i:4407;}i:66;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:210:"
# 10-logging.conf

# Путь до логов с ошибками
log_path = /var/log/dovecot-lda-err.log

# Путь до информационных логов
info_log_path = /var/log/dovecot-lda-info.log
";i:1;N;i:2;N;}i:2;i:4515;}i:67;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:458:"
# 10-mail.conf

#Местоположение почтовых ящиков
mail_location = maildir:/var/mail/d%/%u/Maildir

# Пользователь и группа, которые будут иметь доступ к директориям в которых находятся почтовые ящики
# Соответственно сделайте sudo chown vmail:vmail -R /var/mail && sudo chmod 700 -R /var/mail
mail_uid = 2000
mail_gid = 2000
";i:1;N;i:2;N;}i:2;i:4740;}i:68;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:224:"
# 15-lda.conf

postmaster_address = admin@example.com
lda_mailbox_autocreate = yes
lda_mailbox_autosubscribe = yes

protocol lda {
  log_path = /var/log/dovecot-lda-err.log
  info_log_path = /var/log/dovecot-lda-info.log
}
";i:1;N;i:2;N;}i:2;i:5213;}i:69;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:162:"
# auth-sql.conf.ext

passdb {
  driver = sql
  args = /etc/dovecot/dovecot-sql.conf.ext
}

userdb {
  driver = sql
  args = /etc/dovecot/dovecot-sql.conf.ext
}

";i:1;N;i:2;N;}i:2;i:5452;}i:70;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:1219:"
# /etc/dovecot/dovecot-sql.conf.ext

driver = mysql
connect = host=127.0.0.1 dbname=postfixadmin user=postfixadmin password=pa$$word

# В postfixadmin выбрана такая схема шифрования для хранения пароля $CONF['encrypt'] = 'dovecot:CRAM-MD5';
# Суть в том, что когда клиент подключается по IMAP или POP к нашему серверу,
# происходит передача пароля от клиента -> серверу. Когда сервер получает пароль, 
# он его шифрует указанным методом (default_pass_scheme) и сравнивает с паролем (шифрованным методом $CONF['encrypt']) 
#который находиться в базе MySQL.

default_pass_scheme = CRAM-MD5

user_query = SELECT '/var/mail/%d/%n' as home, 'maildir:/var/mail/%d/%n'as mail, 2000 AS uid, 2000 AS gid FROM mailbox WHERE username = '%u' AND active = '1'

password_query = SELECT username as user, password, '/var/mail/%d/%n' as userdb_home, 'maildir:/var/mail/%d/%n' as userdb_mail, 2000 as userdb_uid, 2000 as userdb_gid FROM mailbox WHERE username = '%u' AND active = '1'

";i:1;N;i:2;N;}i:2;i:5629;}i:71;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:5629;}i:72;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:205:"На данном этапе уже можно отправлять почту на наш сервер. Т.е. почта должна приходить и раскладываться по папкам.";}i:2;i:6858;}i:73;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:7063;}i:74;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:7063;}i:75;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:122:"Так же можно проверить порты 110, 143 на предмет их работоспособности.";}i:2;i:7065;}i:76;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:7187;}i:77;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:15:"
netstat -vatn
";i:1;N;i:2;N;}i:2;i:7194;}i:78;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:7194;}i:79;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:93:"Если порты не прослушиваються, тогда правим конфиг";}i:2;i:7219;}i:80;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:7312;}i:81;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:265:"
# 10-master.conf

service imap-login {
  inet_listener imap {
    port = 143
  }
  inet_listener imaps {
    port = 993
    ssl = yes
  }
}

service pop3-login {
  inet_listener pop3 {
    port = 110
  }
  inet_listener pop3s {
    port = 995
    ssl = yes
  }
}

";i:1;N;i:2;N;}i:2;i:7319;}i:82;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:7319;}i:83;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:203:"Снова проверяем, если и сейчас не прослушиваються, то скорее всего не установлены дополнительные пакеты к Dovecot.";}i:2;i:7594;}i:84;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:7797;}i:85;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:71:"
sudo apt-get install dovecot-pop3d
sudo apt-get install dovecot-imapd
";i:1;N;i:2;N;}i:2;i:7804;}i:86;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:7883;}i:87;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:7883;}}