a:38:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:51:"Настраиваем BIND9 DNS Slave сервер";i:1;i:1;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:3;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:68;}i:4;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:151:"Сервер верхнего уровня, который содержит в себе NS записи для наших двух DNS серверов";i:1;i:3;i:2;i:68;}i:2;i:68;}i:5;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:68;}i:6;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:68;}i:7;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:221:"Да, в моем случае сервер верхнего уровня, это корневой сервер, который отдает ip адреса для серверов, обслуживающих зону RU.";}i:2;i:230;}i:8;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:451;}i:9;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:626:"
$TTL    604800
.       IN      SOA     A.ROOT.NET. root.localhost. (
                              1         ; Serial
                         604800         ; Refresh
                          86400         ; Retry
                        2419200         ; Expire
                         604800 )       ; Negative Cache TTL

.                       IN      NS    A.ROOT.NET.
A.ROOT.NET.             IN      A     192.168.0.185
ru.                     IN      NS    ns1.ru.
ru.                     IN      NS    ns2.ru.
ns1.ru.                 IN      A     192.168.0.186
ns2.ru.                 IN      A     192.168.0.188
";i:1;N;i:2;N;}i:2;i:458;}i:10;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1094;}i:11;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:141:"Сервер NS1.RU, является master сервером, и обслуживает домены, находящиеся в зоне RU.";i:1;i:3;i:2;i:1094;}i:2;i:1094;}i:12;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:1094;}i:13;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1094;}i:14;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:54:"Вот так выглядит файл зоны db.ru";}i:2;i:1246;}i:15;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1306;}i:16;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:776:"
$TTL    604800
@       IN      SOA     ns1.ru. root.localhost. (
                              8         ; Serial
                              5         ; Refresh
                          86400         ; Retry
                        2419200         ; Expire
                         604800 )       ; Negative Cache TTL

@               IN      NS      ns1.ru.
@               IN      NS      ns2.ru.
ns1.ru.         IN      A       192.168.0.186
ns2.ru.         IN      A       192.168.0.188
zipofar.ru.     IN      A       1.1.1.1
habrahabr.ru.   IN      A       2.2.2.2
auto.ru.        IN      A       3.3.3.3
a.ru.           IN      A       4.4.4.4
b.ru.           IN      A       5.5.5.5
c.ru            IN      A       6.6.6.6
d.ru            IN      A       7.7.7.7
";i:1;N;i:2;N;}i:2;i:1306;}i:17;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1306;}i:18;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:65:"Вот так выглядит файл зоны named.conf.local";}i:2;i:2092;}i:19;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2163;}i:20;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:143:"
zone "ru." {
        type master;
        file "/etc/bind/db.ru";
        also-notify { 192.168.0.188; };
        allow-transfer { any; };
};
";i:1;N;i:2;N;}i:2;i:2163;}i:21;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2163;}i:22;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:193:"Так выглядит файл db.root. Но это только для моего показательного случая, т.к. я эмулирую и корневую зону тоже.";}i:2;i:2316;}i:23;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2515;}i:24;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:115:"
.                        3600000      NS    A.ROOT.NET.
A.ROOT.NET.              3600000      A     192.168.0.185
";i:1;N;i:2;N;}i:2;i:2515;}i:25;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:2639;}i:26;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:140:"Сервер NS2.RU, является slave сервером, и обслуживает домены, находящиеся в зоне RU.";i:1;i:3;i:2;i:2639;}i:2;i:2639;}i:27;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:2639;}i:28;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2639;}i:29;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:56:"Вот так выглядит файл named.conf.local";}i:2;i:2790;}i:30;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2852;}i:31;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:142:"
zone "ru." {
        type slave;
        file "/var/lib/bind/db.ru";
        masters { 192.168.0.186;  };
        masterfile-format text;
};
";i:1;N;i:2;N;}i:2;i:2852;}i:32;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2852;}i:33;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:193:"Так выглядит файл db.root. Но это только для моего показательного случая, т.к. я эмулирую и корневую зону тоже.";}i:2;i:3004;}i:34;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3203;}i:35;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:115:"
.                        3600000      NS    A.ROOT.NET.
A.ROOT.NET.              3600000      A     192.168.0.185
";i:1;N;i:2;N;}i:2;i:3203;}i:36;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:3326;}i:37;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:3326;}}