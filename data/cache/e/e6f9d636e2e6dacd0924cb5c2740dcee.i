a:38:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:171:"Postfix с использованием виртуальных пользователей и Dovecot в качестве LDA и текстовой базой данных.";i:1;i:1;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:3;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:188;}i:4;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:40:"Сначала настроим postfix.";i:1;i:2;i:2;i:188;}i:2;i:188;}i:5;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:188;}i:6;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:188;}i:7;a:3:{i:0;s:13:"emphasis_open";i:1;a:0:{}i:2;i:242;}i:8;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:80:"Здесь представлен только фрагмент  конфига.";}i:2;i:244;}i:9;a:3:{i:0;s:14:"emphasis_close";i:1;a:0:{}i:2;i:324;}i:10;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:326;}i:11;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:3988:"
# /etc/postfix/main.cf

smtpd_banner = $myhostname
biff = no

# Базовый домен делаем отличающимся от того, на который будет приходить почта из интернета
mydomain = local_example.ru
myhostname = mail.example.ru

# Оставляем пустым, т.к. конечный домен будет виртуальным
mydestination =

myorigin = $mydomain
mynetworks = 127.0.0.0/8

# Virtual Domains

# Вот здесь пишем домен или домены, который будет ловить почту из интернета
virtual_mailbox_domains = example.ru

# virtual_mailbox_maps -> Названия почтовых ящиков, 
# для которых Postfix принимает почту.
# Сам файл virtual_recipients выглядит примерно так:
# ======================================
# joe@example.ru  joe/
# ======================================
# Т.е. слева FQDN название ящика, справа название папки, 
# в которой будут хранится письма (если локальным доставщиком будет virtual).
# Слэшь в конце названия папки означает, что формат 
# хранения почты Maildir (т.е. каждое сообщение в отдельном файле).
# Так же необходимо создать карту из файла:
# postmap hash:/etc/postfix/virtual_recipients
virtual_mailbox_maps = hash:/etc/postfix/virtual_recipients

# virtual_alias_maps -> Находятся псевдонимы для ящиков, 
# т.е. в один ящик могут
# складываться письма для разных адресов.
# Файл может выглядеть так:
# ======================================
# admin@example.ru        joe@example.ru
# info@example.ru         joe@example.ru
# sale@example.ru         joe@example.ru
# postmaster@example.ru   joe@example.ru
# abuse@example.ru        joe@example.ru
# ======================================
# И опять же надо создать карту:
# postmap hash:/etc/postfix/virtual_alias_recipients
virtual_alias_maps = hash:/etc/postfix/virtual_alias_recipients

# Задаются параметры пользователя, который
# владеет папкой, в которую складывается почта
# в случае, если локальный доставщик virtual
virtual_uid_maps = static:1002
virtual_gid_maps = static:1002

# Собственно вот эта папка.
# Владелец которой польователь vmail,
# у которого gid = 1002, uid = 1002.
virtual_mailbox_base = /var/vmail

# Здесь указываем, что в качестве LDA
# будет выступать Dovecot вместо virtual.
virtual_transport = dovecot

dovecot_destination_recipient_limit = 1

# Auth
smtpd_sasl_type = dovecot
smtpd_sasl_path = private/auth
smtpd_sasl_auth_enable = yes
broken_sasl_auth_clients = yes
smtpd_sasl_security_options = noanonymous

smtpd_use_tls = yes
smtpd_tls_key_file = /etc/ssl/private/server.key
smtpd_tls_cert_file = /etc/ssl/certs/server.crt
smtpd_sasl_tls_security_options = noanonymous
smtpd_tls_auth_only = yes

# Restrictions
smtpd_helo_required = yes
disable_vrfy_command = yes

smtpd_relay_restrictions = permit_mynetworks,
                           permit_sasl_authenticated,
                           reject_unauth_destination

smtpd_recipient_restrictions = permit_mynetworks,
                               permit_sasl_authenticated,
                               reject_non_fqdn_helo_hostname,
                               reject_non_fqdn_sender,
                               reject_unknown_sender_domain,
                               reject_non_fqdn_recipient,
                               reject_unknown_recipient_domain

";i:1;N;i:2;N;}i:2;i:333;}i:12;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:4331;}i:13;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:38:"Теперь настроим Dovecot.";i:1;i:2;i:2;i:4331;}i:2;i:4331;}i:14;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:4331;}i:15;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:4331;}i:16;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:433:"Если в качестве LDA используется Dovecot, то имейте в виду, что если Dovecot не видит в своей базе пользователя для которого предназанчено письмо, то получится bounced такого письма. Т.е. он его не доставит, даже если Postfix его пропустил и передал Dovecot-у.";}i:2;i:4383;}i:17;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:4816;}i:18;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:4816;}i:19;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:249:"Далее здесь покажу как использовать для Dovecot-a в качестве базы данных пользователей и паролей текстовый файл в определенном формате passwd.";}i:2;i:4818;}i:20;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:5067;}i:21;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:5067;}i:22;a:3:{i:0;s:13:"emphasis_open";i:1;a:0:{}i:2;i:5069;}i:23;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:60:"Опять же только фрагмент конфига";}i:2;i:5071;}i:24;a:3:{i:0;s:14:"emphasis_close";i:1;a:0:{}i:2;i:5131;}i:25;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:5133;}i:26;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:134:"
# /etc/dovecot/conf.d/10-auth.log

# Включаем подгрузку нужного файла
!include auth-passwdfile.conf.ext
";i:1;N;i:2;N;}i:2;i:5140;}i:27;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:395:"
# /etc/dovecot/conf.d/auth-passwdfile.conf.ext

passdb {
  driver = passwd-file
  args = scheme=SHA256 username_format=%u /etc/dovecot/users
  # Здесь внимательно: %u означает, что имя пользователя в файле
  # users должно быть в формате FQDN.
}

userdb {
  driver = passwd-file
  args = username_format=%u /etc/dovecot/users
}
";i:1;N;i:2;N;}i:2;i:5289;}i:28;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:5289;}i:29;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:53:"Далее создаем файл /etc/dovecot/users";}i:2;i:5694;}i:30;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:5747;}i:31;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:346:"
# /etc/dovecot/users

# Последние две цифры, это опять же uid и gid пользователя vmail,
# из-под которого можно читать и записывать в папку, в которой 
# находится почта.

joe@example.ru:{SHA256}E8kndTfQNlTr9dfgTNXf1dgdfgiG55Dftyw=:1002:1002
";i:1;N;i:2;N;}i:2;i:5754;}i:32;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:5754;}i:33;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:66:"Пароль можно создать такой командой";}i:2;i:6110;}i:34;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:6176;}i:35;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:22:"
doveadm pw -s SHA256
";i:1;N;i:2;N;}i:2;i:6183;}i:36;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:6213;}i:37;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:6213;}}