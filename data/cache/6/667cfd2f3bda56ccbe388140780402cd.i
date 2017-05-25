a:99:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:60:"Настройка Ubuntu 16 + Postfix + Dovecot 2 IMAP POP3";i:1;i:1;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:3;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:77;}i:4;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:69:"Работаем с системными пользователями";i:1;i:2;i:2;i:77;}i:2;i:77;}i:5;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:77;}i:6;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:77;}i:7;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:73:"Включаем LDA для системных пользователей";}i:2;i:160;}i:8;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:233;}i:9;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:87:"
#postconf
mailbox_command = /usr/lib/dovecot/dovecot-lda -f "$SENDER" -a "$RECIPIENT"
";i:1;N;i:2;N;}i:2;i:240;}i:10;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:240;}i:11;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:53:"Включаем логгирование Dovecot-lda";}i:2;i:337;}i:12;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:390;}i:13;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:435:"
#conf.d/10-logging.conf
log_path = /var/log/dovecot-lda_err.log
info_log_path = /var/log/dovecot-lda.log

#conf.d/15-lda.conf
postmaster_address = admin@example.com
lda_mailbox_autocreate = yes
lda_mailbox_autosubscribe = yes

#Файлы должны быть доступны на запись для пользователя dovecot
protocol lda {
log_path = /var/log/dovecot-lda_err.log
info_log_path = /var/log/dovecot-lda.log
}
";i:1;N;i:2;N;}i:2;i:397;}i:14;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:397;}i:15;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:75:"Изменяем местоположение почтовых ящиков";}i:2;i:842;}i:16;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:923;}i:17;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:68:"
# conf.d/10-mail.conf
mail_location = maildir:/var/mail/%u/Maildir
";i:1;N;i:2;N;}i:2;i:923;}i:18;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:923;}i:19;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:158:"Попробуем получить почту через POP3 и IMAP с помощью самой простой аутентификации plaintext_auth";}i:2;i:1001;}i:20;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1165;}i:21;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:128:"
# /etc/pam.d/dovecot
auth required pam_unix.so
account required pam_unix.so

# conf.d/10-auth.conf
disable_plaintext_auth = no
";i:1;N;i:2;N;}i:2;i:1165;}i:22;a:3:{i:0;s:10:"quote_open";i:1;a:0:{}i:2;i:1302;}i:23;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:" ";}i:2;i:1304;}i:24;a:3:{i:0;s:13:"emphasis_open";i:1;a:0:{}i:2;i:1305;}i:25;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:82:"Кстати, посмотреть в Ubuntu, какие порты слушаем";}i:2;i:1307;}i:26;a:3:{i:0;s:14:"emphasis_close";i:1;a:0:{}i:2;i:1389;}i:27;a:3:{i:0;s:11:"quote_close";i:1;a:0:{}i:2;i:1391;}i:28;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:15:"
netstat -vatn
";i:1;N;i:2;N;}i:2;i:1397;}i:29;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1422;}i:30;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:60:"Попробуем защищенное соединение";i:1;i:3;i:2;i:1422;}i:2;i:1422;}i:31;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:1422;}i:32;a:3:{i:0;s:10:"quote_open";i:1;a:0:{}i:2;i:1493;}i:33;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:" ";}i:2;i:1495;}i:34;a:3:{i:0;s:13:"emphasis_open";i:1;a:0:{}i:2;i:1496;}i:35;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:117:"Небольшая ремарка. Что можно использовать в плане безопасности.";}i:2;i:1498;}i:36;a:3:{i:0;s:14:"emphasis_close";i:1;a:0:{}i:2;i:1615;}i:37;a:3:{i:0;s:11:"quote_close";i:1;a:0:{}i:2;i:1617;}i:38;a:3:{i:0;s:10:"listu_open";i:1;a:0:{}i:2;i:1618;}i:39;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:1618;}i:40;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:1618;}i:41;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:131:" Можно шифровать сам пароль на стороне клиента для передачи его серверу";}i:2;i:1622;}i:42;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:1753;}i:43;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:1753;}i:44;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:1753;}i:45;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:1753;}i:46;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:180:" Можно шифровать само соединение с сервером и не шифровать сам пароль или еще и пароль зашифровать";}i:2;i:1757;}i:47;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:1937;}i:48;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:1937;}i:49;a:3:{i:0;s:11:"listu_close";i:1;a:0:{}i:2;i:1937;}i:50;a:3:{i:0;s:10:"quote_open";i:1;a:0:{}i:2;i:1938;}i:51;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:" ";}i:2;i:1940;}i:52;a:3:{i:0;s:13:"emphasis_open";i:1;a:0:{}i:2;i:1941;}i:53;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:121:"В плане шифрования самого соединения, можно пользовать два метода";}i:2;i:1943;}i:54;a:3:{i:0;s:14:"emphasis_close";i:1;a:0:{}i:2;i:2064;}i:55;a:3:{i:0;s:11:"quote_close";i:1;a:0:{}i:2;i:2066;}i:56;a:3:{i:0;s:10:"listu_open";i:1;a:0:{}i:2;i:2067;}i:57;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:2067;}i:58;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:2067;}i:59;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:9:" STARTTLS";}i:2;i:2071;}i:60;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:2080;}i:61;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:2080;}i:62;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:2080;}i:63;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:2080;}i:64;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:8:" SSL/TLS";}i:2;i:2084;}i:65;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:2092;}i:66;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:2092;}i:67;a:3:{i:0;s:11:"listu_close";i:1;a:0:{}i:2;i:2092;}i:68;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2092;}i:69;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:664:"STARTTLS в принципе тоже самое, что и SSL/TLS, но используется при подключении на стандартный порт 110, 143. Т.е. при начале установления соединения сервер и клиент могут договориться о передаче данных друг другу по защищенному каналу (если и клиент и сервер поддерживают шифрование) или начать работать без шифрования (т.е. просто как текст, что является очень не безопасным).";}i:2;i:2094;}i:70;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2758;}i:71;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2758;}i:72;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:106:"SSL/TLS использует свои порты 995 - POP3S, 993 - IMAPS. При этом никаких ";}i:2;i:2760;}i:73;a:3:{i:0;s:18:"doublequoteopening";i:1;a:0:{}i:2;i:2866;}i:74;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:6:"или";}i:2;i:2867;}i:75;a:3:{i:0;s:18:"doublequoteclosing";i:1;a:0:{}i:2;i:2873;}i:76;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:106:" нету. Т.е. устанавливается только защищенное подключение.";}i:2;i:2874;}i:77;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2980;}i:78;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2980;}i:79;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:67:"Ну, начнем пожалуй. Включим ssl в Dovecot-e.";}i:2;i:2982;}i:80;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3049;}i:81;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:193:"
# conf.d/10-ssl.conf

ssl = yes
# Preferred permissions: root:root 0444
ssl_cert = </etc/ssl/certs/dovecot.pem
# Preferred permissions: root:root 0400
ssl_key = </etc/ssl/private/dovecot.pem

";i:1;N;i:2;N;}i:2;i:3056;}i:82;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3056;}i:83;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:37:"Создадим сертификат";}i:2;i:3259;}i:84;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3296;}i:85;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:224:"
# Запустим специальный скрипт 
# Перейдем в папку /usr/share/dovecot
# Запустим ./mkcert.sh
# Поправим файл dovecot-openssl.cnf -> commonName = FQDN сервера
";i:1;N;i:2;N;}i:2;i:3303;}i:86;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3303;}i:87;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:51:"Включим порты: IMAPS = 993, POP3S = 995";}i:2;i:3537;}i:88;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3594;}i:89;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:271:"
# conf.d/10-master.conf

service imap-login {
  inet_listener imap {
    port = 143
  }
  inet_listener imaps {
    port = 993
    ssl = yes
  }
  
service pop3-login {
  inet_listener pop3 {
    port = 110
  }
  inet_listener pop3s {
    port = 995
    ssl = yes
  }


";i:1;N;i:2;N;}i:2;i:3594;}i:90;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3594;}i:91;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:53:"Ну и все. Должно все работать.";}i:2;i:3875;}i:92;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3928;}i:93;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3928;}i:94;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:123:"Можно еще выключить использование простого текста при авторизации";}i:2;i:3930;}i:95;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:4059;}i:96;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:53:"
# conf.d/10-auth.conf

disable_plaintext_auth = yes
";i:1;N;i:2;N;}i:2;i:4059;}i:97;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:4120;}i:98;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:4120;}}