a:76:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:33:"LVS начало + Direct Routing";i:1;i:1;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:3;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1;}i:4;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:289:"Что такое LVS (Linux Virtual Server) – это встроенный компонент в ядре Linux, который обеспечивает перенаправление IP пакетов на группу серверов, обрабатывающих эти пакеты.";}i:2;i:50;}i:5;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:339;}i:6;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:339;}i:7;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:151:"Что такое IPVSADM – это просто консольная утилита для настройки и взаимодействия с LVS.";}i:2;i:341;}i:8;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:492;}i:9;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:492;}i:10;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:221:"Что такое KEEPALIVED – это ПО в виде демона, с помощью которого можно настраивать как LVS так и VRRP путем редактирования конфига.";}i:2;i:494;}i:11;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:715;}i:12;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:715;}i:13;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:293:"И… Т.е. при использовании KEEPALIVED для настройки балансера не обязательно устанавливать IPVSADM, но она полезна тем, что с ее помощью можно посмотреть, как настроен LVS.";}i:2;i:717;}i:14;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1010;}i:15;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1010;}i:16;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:482:"Ммм… почему нельзя обойтись без KEEPALIVED и просто использовать IPVSADM? Можно конечно, но воспринимайте KEEPALIVED как удобный инструмент для настройки балансера. Также с помощью него можно легко настроить еще и запасной (standby) балансировщик, с использованием технологии VRRP.";}i:2;i:1012;}i:17;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1494;}i:18;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1494;}i:19;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:175:"Ну хорошо. Давай начнем с IPVSADM, а там посмотрим. Для начала нужно ознакомиться с возможностями LVS ";}i:2;i:1496;}i:20;a:3:{i:0;s:12:"externallink";i:1;a:2:{i:0;s:127:"https://access.redhat.com/documentation/en-us/red_hat_enterprise_linux/5/html/virtual_server_administration/ch-lvs-overview-vsa";i:1;s:11:" здесь";}i:2;i:1671;}i:21;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:8:" или ";}i:2;i:1814;}i:22;a:3:{i:0;s:12:"externallink";i:1;a:2:{i:0;s:42:"http://www.linuxvirtualserver.org/how.html";i:1;s:10:"здесь";}i:2;i:1822;}i:23;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:".";}i:2;i:1879;}i:24;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1880;}i:25;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1880;}i:26;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:251:"Из прочитанного становится ясно, что есть Direct Routing и NAT, ну и IP Tunneling. Начнем с Direct Routing и забудем пока об отказоустойчивости балансировщика.";}i:2;i:1882;}i:27;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2133;}i:28;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2133;}i:29;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:260:"Представим, что у нас везде белые IP адреса на Real Server-ах запущен nginx на порту 80. Т.е. мы хотим перенапрявлять запросы на порт 80 на RealServer 01 и RealServer 02.";}i:2;i:2135;}i:30;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2395;}i:31;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2395;}i:32;a:3:{i:0;s:13:"internalmedia";i:1;a:7:{i:0;s:29:":lvs_directrouting_scheme.png";i:1;s:0:"";i:2;s:6:"center";i:3;s:3:"400";i:4;N;i:5;s:5:"cache";i:6;s:7:"details";}i:2;i:2397;}i:33;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2437;}i:34;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2437;}i:35;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1497:"Вот так примерно выглядит схема. Красными и зелеными стрелками показана схема движения пакетов.
Виртуальный IP адрес (VIP) является общим для реальных серверов и балансировщика. Виртуальный IP на балансировщике нужен для того, чтобы принимать пакеты с запросом и напрямую перенапрявлять их реальным серверам. Все реальные сервера должны иметь сконфигурированные алиасы на интерфейсе для приема пакетов на виртуальный IP адрес, чтобы сервер мог локально обработать принятые пакеты. Причем эти алиасы не должны обрабатывать arp запросы. Физические интерфейсы балансировщика и реальных серверов обязательно должны быть соединены через hub/switch. Такое соединение необходимо т.к. балансировщик отправляет пакеты напрямую (по mac адресу) реальному серверу. Также все эти сервера должны находится в одной подсети. Более подробно ";}i:2;i:2439;}i:36;a:3:{i:0;s:12:"externallink";i:1;a:2:{i:0;s:50:"http://www.linuxvirtualserver.org/VS-DRouting.html";i:1;s:10:"здесь";}i:2;i:3936;}i:37;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:".";}i:2;i:4001;}i:38;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:4002;}i:39;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:4004;}i:40;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:101:"Приступим непосредственно к настройке балансировщика.";i:1;i:2;i:2;i:4004;}i:2;i:4004;}i:41;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:4004;}i:42;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:4119;}i:43;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:52:"Включаем форвардинг пакетов";i:1;i:3;i:2;i:4119;}i:2;i:4119;}i:44;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:4119;}i:45;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:40:"
echo 1 > /proc/sys/net/ipv4/ip_forward
";i:1;N;i:2;N;}i:2;i:4188;}i:46;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:4238;}i:47;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:54:"Настроим VIP на балансировщике";i:1;i:3;i:2;i:4238;}i:2;i:4238;}i:48;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:4238;}i:49;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:109:"
#/etc/network/interfaces
auto eth0:0
iface eth0:0 inet static
	address 192.200.0.198
	netmask 255.255.255.0
";i:1;N;i:2;N;}i:2;i:4309;}i:50;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:13:"
ifup eth0:0
";i:1;N;i:2;N;}i:2;i:4433;}i:51;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:4433;}i:52;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:402:"Настройка VIP на реальных серверах может осуществляться различными способами. Самое главное избежать так называемой ARP Problem. Это когда алиас интерфейс для виртуального IP настроен так, что он отвечает на arp запросы. Читаем ";}i:2;i:4456;}i:53;a:3:{i:0;s:12:"externallink";i:1;a:2:{i:0;s:47:"http://www.linuxvirtualserver.org/docs/arp.html";i:1;s:10:"здесь";}i:2;i:4858;}i:54;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:".";}i:2;i:4920;}i:55;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:4921;}i:56;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:4921;}i:57;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:65:"Я лично выбрал метод с помощью iptables.";}i:2;i:4923;}i:58;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:4994;}i:59;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:68:"
iptables –t nat –A PREROUTING –d 192.200.0.198 –j REDIRECT
";i:1;N;i:2;N;}i:2;i:4994;}i:60;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:4994;}i:61;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:244:"Т.е. когда пакет попадает на сервер он не отбрасывается, а передается на обработку localhost-у на тот же порт на который он пытался попасть.";}i:2;i:5072;}i:62;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:5316;}i:63;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:5318;}i:64;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:33:"Теперь настроим LVS";i:1;i:3;i:2;i:5318;}i:2;i:5318;}i:65;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:5318;}i:66;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:424:"
# -A - добавляем виртуальный сервис
# -t – использовать TCP сервис
# -u – если хотим обслуживать UDP
# -далее идет ip адрес и порт
# -s – планировщик, т.е. каким способом будет выбираться реальный сервер
# -rr – я выбрал round robin
ipvsadm -A -t 192.200.0.198:80 -s rr
";i:1;N;i:2;N;}i:2;i:5368;}i:67;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:5368;}i:68;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:76:"Этой командой добавляем реальные сервера";}i:2;i:5802;}i:69;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:5884;}i:70;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:496:"
# -a – добавить реальный сервер
# -t – использовать TCP сервис
# -далее идет ip адрес и порт
# -r – ip реального сервера
# -далее собственно и происходит выбор вида роутинга
# -g – gatewaying (direct routing)
# -i – IPIP Tunneling
# -m – masquerading (NAT)
ipvsadm -a -t 192.200.0.198:80 -r 192.200.0.20:80 -g
ipvsadm -a -t 192.200.0.198:80 -r 192.200.0.21:80 –g
";i:1;N;i:2;N;}i:2;i:5884;}i:71;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:5884;}i:72;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:56:"Более подробно читайте # man ipvsadm";}i:2;i:6390;}i:73;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:6446;}i:74;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:6447;}i:75;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:6447;}}