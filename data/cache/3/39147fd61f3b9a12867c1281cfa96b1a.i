a:30:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:30:"Windows 2008 R2 OpenVPN server";i:1;i:1;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:3;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1;}i:4;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:77:"Нюансы при создании openvpn сервера на windows 2008";}i:2;i:47;}i:5;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:124;}i:6;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:124;}i:7;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:83:"1. Определение путей в конфигурационном файле";}i:2;i:126;}i:8;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:215;}i:9;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:49:"
ca "C:\\Program Files\\OpenVPN\\config\\ca.crt"
";i:1;N;i:2;N;}i:2;i:215;}i:10;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:215;}i:11;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:87:"2. Файлы в каталоге ccd должны быть без расширения";}i:2;i:274;}i:12;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:361;}i:13;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:361;}i:14;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:143:"3. Обязательно включить перенаправление IP пакетов на реальном и TAP интерфейсах";}i:2;i:363;}i:15;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:506;}i:16;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:129:"
# Открыть powershell 
netsh interface ipv4 show interfaces

netsh interface ipv4 set interface <id> forwarding="enabled"
";i:1;N;i:2;N;}i:2;i:513;}i:17;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:653;}i:18;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:27:"Рабочий конфиг";i:1;i:2;i:2;i:653;}i:2;i:653;}i:19;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:653;}i:20;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:693;}i:21;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:11:"server.ovpn";i:1;i:3;i:2;i:693;}i:2;i:693;}i:22;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:693;}i:23;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:1387:"
# server.ovpn
port 1194
proto tcp
dev tun

ca "C:\\Program Files\\OpenVPN\\config\\ca.crt"
cert "C:\\Program Files\\OpenVPN\\config\\server.crt"
key "C:\\Program Files\\OpenVPN\\config\\server.key "
dh "C:\\Program Files\\OpenVPN\\config\\dh2048.pem"

server 10.8.0.0 255.255.255.0

ifconfig-pool-persist "C:\\Program Files\\OpenVPN\\config\\ipp.txt"

# Для того, чтобы иметь возможность обращаться к серверу
# по его локальному адресу, а не только адресу из сети openvpn.
# Т.е. при запуске openvpn на клиенте, на клиенте же будет прописываться
# статический маршрут.
push "route 1.1.1.0 255.255.255.0"

client-config-dir "C:\\Program Files\\OpenVPN\\config\\ccd"

# Данная директива прописывает статический маршрут на сервере, для возможности
# обращения с сервера к клиенту по его локальному адресу клиента.
route 192.168.0.0 255.255.255.0

keepalive 10 120

tls-auth "C:\\Program Files\\OpenVPN\\config\\ta.key" 0 
cipher AES-128-CBC
auth SHA256
comp-lzo

max-clients 100

persist-key
persist-tun
status "C:\\Program Files\\OpenVPN\\openvpn-status.log"
log "C:\\Program Files\\OpenVPN\\openvpn.log"
verb 3
";i:1;N;i:2;N;}i:2;i:721;}i:24;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:2118;}i:25;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:11:"ccd/client1";i:1;i:3;i:2;i:2118;}i:2;i:2118;}i:26;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:3;}i:2;i:2118;}i:27;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:393:"
# ccd/client1

# Для того чтобы с сервера можно было пинговать 
# клиента по его локальному адресу, 
# а не только по адресу назначенному openvpn
iroute 192.168.0.0 255.255.255.0

# Для назначения постоянного адреса клиенту
ifconfig-push 10.8.0.101 10.8.0.102
";i:1;N;i:2;N;}i:2;i:2146;}i:28;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:2547;}i:29;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:2547;}}