a:24:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:36:"Ubuntu 16 + Samba в домене AD";i:1;i:1;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:3;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1;}i:4;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:97:"Установим время с помощью стандартной утилиты timedatectl";}i:2;i:53;}i:5;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:156;}i:6;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:292:"
timedatectl set-timezone Europe/Moscow

# В качестве сервера времени будем использовать контроллер домена
nano /etc/systemd/timesyncd.conf
    [Time]
        NTP=dc1.domain.com
        
# Проверим время
timedatectl status
";i:1;N;i:2;N;}i:2;i:156;}i:7;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:156;}i:8;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:50:"Установим следующие пакеты";}i:2;i:458;}i:9;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:514;}i:10;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:509:"
samba - собственно samba сервер
krb5-config - конфигурационные файлы для Kerberos
krb5-user - программа для аутинтефикации с помощью Kerberos
libpam-winbind - плагин для интеграции с Windows domain authentication
libnss-winbind - плагин для интеграции службы имен Samba
winbind - сервис для распознования виндовых пользователей и групп
";i:1;N;i:2;N;}i:2;i:514;}i:11;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:514;}i:12;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:321:"В процессе установки может ничего не спросить и автоматически найти название домена. Если попросит ввести realm, то нужно ввести название домена заглавными буквами (прим. DOMAIN.LOC).";}i:2;i:1033;}i:13;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1354;}i:14;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1354;}i:15;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:106:"Далее нужно проверить возможность получения Kerberos билетов";}i:2;i:1356;}i:16;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1468;}i:17;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:31:"
kinit domain_admin_user
klist
";i:1;N;i:2;N;}i:2;i:1468;}i:18;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1468;}i:19;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:87:"Далее будем рисовать с чистого файла /etc/samba/smb.conf";}i:2;i:1509;}i:20;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1602;}i:21;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:1:"
";i:1;N;i:2;N;}i:2;i:1602;}i:22;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1611;}i:23;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:1611;}}