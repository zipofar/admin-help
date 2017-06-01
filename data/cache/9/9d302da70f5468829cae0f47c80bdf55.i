a:79:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:89:"Настройка SMTP аутэнтификации в Postfix с помощью Dovecot";i:1;i:1;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:3;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1;}i:4;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:98:"Основную часть настройки авторизации Dovecot-а смотреть ";}i:2;i:106;}i:5;a:3:{i:0;s:12:"internallink";i:1;a:2:{i:0;s:56:"настройка_ubuntu_16_postfix_dovecot_2_imap_pop3";i:1;s:10:"здесь";}i:2;i:204;}i:6;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:".";}i:2;i:275;}i:7;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:276;}i:8;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:276;}i:9;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:104:"Зачем это вообще надо, т.е. зачем нужна SMTP аутентификация?";}i:2;i:278;}i:10;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:382;}i:11;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:382;}i:12;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:773:"Нужно это для того чтобы, дать возможность нашим клиентам использовать наш сервер для отправки почты во внешний мир. Если не делать аутентификацию клиентов, то достаточно быстро наш почтовый сервер превратиться в открытый шлюз (Open relay), и абсолютно любой человек на земле сможет воспользоваться нашим сервером для пересылки своих сообщений на другие сервера в интернете. Ну короче станем мы злостными рассыльщиками спама.";}i:2;i:384;}i:13;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1157;}i:14;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1157;}i:15;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:105:"Что значит воспользоваться аутентификацией Dovecot (Dovecot SASL)?";}i:2;i:1159;}i:16;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1264;}i:17;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1264;}i:18;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:498:"Это значит, что при подключении клиента по SMTP к нашему серверу, сервер через сокет передаст логин и пароль модулю Dovecota (ответственному за аутентификацию). Тот в свою очередь сопоставит переданные данные с имеющимися на сервере и в случае совпадения вернет грубо говоря true. ";}i:2;i:1266;}i:19;a:3:{i:0;s:18:"doublequoteopening";i:1;a:0:{}i:2;i:1764;}i:20;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:124:"Мол все окей, логин и пароль совпадают с теми, что есть в базе данных.";}i:2;i:1765;}i:21;a:3:{i:0;s:18:"doublequoteclosing";i:1;a:0:{}i:2;i:1889;}i:22;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1890;}i:23;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1890;}i:24;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:527:"Итак, пароль это конечно замечательно, но хотелось бы осуществлять его передачу не в открытом виде, а зашифрованном. Для этого лучше всего подойдет способ подключения клиента к серверу с помощью шифрованного соединения. Для этого в Postfix нужно включить TLS шифрование и создать сертификаты.";}i:2;i:1892;}i:25;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2419;}i:26;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2419;}i:27;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:161:"Начнем с донастройки Dovecot-а. А именно разместим сокет Dovecot-а в специальном каталоге Postfix-а";}i:2;i:2421;}i:28;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2588;}i:29;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:425:"
conf.d/10-master.conf:
     service auth {
       ...
       unix_listener /var/spool/postfix/private/auth {
         mode = 0660
         # Удостовреться, что Postfix работает под ниже описанными пользователем и группой
         user = postfix
         group = postfix        
       }
       ...
     }
 
conf.d/10-auth.conf
     auth_mechanisms = plain login
";i:1;N;i:2;N;}i:2;i:2588;}i:30;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2588;}i:31;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:76:"Далее переходим к конфигу Postfix /etc/postfix/main.cf";}i:2;i:3023;}i:32;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3099;}i:33;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3099;}i:34;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:143:"В Postfix как и в Dovecot существует 3 барьера безопасности для подключения к серверу:";}i:2;i:3101;}i:35;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3244;}i:36;a:3:{i:0;s:10:"listo_open";i:1;a:0:{}i:2;i:3244;}i:37;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:3244;}i:38;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:3244;}i:39;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:69:" С использованием логина и пароля - PLAIN";}i:2;i:3248;}i:40;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:3317;}i:41;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:3317;}i:42;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:3317;}i:43;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:3317;}i:44;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:90:" С использованием логина и зашифрованного пароля";}i:2;i:3321;}i:45;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:3411;}i:46;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:3411;}i:47;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:3411;}i:48;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:3411;}i:49;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:159:" С использованием первого или второго метода + шифрование самого соединения (STARTTLS, SSL/TLS)";}i:2;i:3415;}i:50;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:3574;}i:51;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:3574;}i:52;a:3:{i:0;s:11:"listo_close";i:1;a:0:{}i:2;i:3574;}i:53;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3574;}i:54;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:81:"Для начала включим простую (PLAIN) авторизацию.";}i:2;i:3576;}i:55;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3657;}i:56;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:185:"
# /etc/postfix/main.cf

smtpd_sasl_type = dovecot
smtpd_sasl_path = private/auth
smtpd_sasl_auth_enable = yes
broken_sasl_auth_clients = yes
smtpd_sasl_security_options = noanonymous

";i:1;N;i:2;N;}i:2;i:3664;}i:57;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3664;}i:58;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:33:"Теперь включаем TLS";}i:2;i:3859;}i:59;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3892;}i:60;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:837:"

smtpd_use_tls = yes
smtpd_tls_key_file = /etc/ssl/private/server.key
smtpd_tls_cert_file = /etc/ssl/certs/server.crt
smtpd_sasl_tls_security_options = noanonymous
smtpd_tls_auth_only = yes

# Параметр smtpd_sasl_security_options можно поменять на  [noanonymous, noplaintext], т.е.
# smtpd_sasl_security_options = noanonymous, noplaintext - этот параметр не позволит установить соединение в случае передачи пароля в открытом виде и без установки шифрованного соединения TLS.
# В свою очередь [smtpd_sasl_tls_security_options] позволяет передавать пароль в открытом виде, но только при установленном TLS соединении.

";i:1;N;i:2;N;}i:2;i:3899;}i:61;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3899;}i:62;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:58:"Серты создаем с помощью команды";}i:2;i:4746;}i:63;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:4804;}i:64;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:127:"
sudo openssl req -x509 -nodes -days 36500 -newkey rsa:2048 -keyout /etc/ssl/private/server.key -out /etc/ssl/certs/server.crt
";i:1;N;i:2;N;}i:2;i:4811;}i:65;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:4811;}i:66;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:249:"Ну и самое главное для чего все это делалось. Т.е. объявить, что пересылка писем на внешние сервера возможна только после аутентификации.";}i:2;i:4948;}i:67;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:5197;}i:68;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:118:"
mynetworks = host
smtpd_relay_restrictions = permit_mynetworks, permit_sasl_authenticated, reject_unauth_destination
";i:1;N;i:2;N;}i:2;i:5204;}i:69;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:5204;}i:70;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:425:"И еще немного сахарку. Может захотеться, чтобы клиенты желающие отправлять почту через наш сервер подключались только и сразу с помощью шифрованного соединения. Для этого предусмотрен порт 465. Включить его можно следующим способом.";}i:2;i:5332;}i:71;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:5757;}i:72;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:120:"
# /etc/postfix/main.cf
smtps inet n - n - - smtpd 
    -o smtpd_tls_wrappermode=yes 
    -o smtpd_sasl_auth_enable=yes
";i:1;N;i:2;N;}i:2;i:5764;}i:73;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:5764;}i:74;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:176:"Так же по фэншую можно включить 587 порт, т.к. многие почтовые клиенты используют его по умолчанию.";}i:2;i:5894;}i:75;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:6070;}i:76;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:161:"

# /etc/postfix/master.cf

submission inet n       -       n       -       -       smtpd
  -o smtpd_tls_security_level=encrypt
  -o smtpd_sasl_auth_enable=yes

";i:1;N;i:2;N;}i:2;i:6077;}i:77;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:6246;}i:78;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:6246;}}