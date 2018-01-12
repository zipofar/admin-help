a:77:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:24:"Install KVM on Ubuntu 16";i:1;i:1;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:3;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:188:"
$ grep -E '(vmx|svm)' /proc/cpuinfo
$ apt-get update
$ apt-get install qemu-kvm libvirt-bin virtinst bridge-utils cpu-checker

$ kvm-ok
INFO: /dev/kvm exists
KVM acceleration can be used
";i:1;N;i:2;N;}i:2;i:46;}i:4;a:3:{i:0;s:10:"listu_open";i:1;a:0:{}i:2;i:244;}i:5;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:244;}i:6;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:244;}i:7;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:101:" /var/lib/libvirt/boot/ — ISO-образы для установки гостевых систем;";}i:2;i:248;}i:8;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:349;}i:9;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:349;}i:10;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:349;}i:11;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:349;}i:12;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:101:" /var/lib/libvirt/images/ — образы жестких дисков гостевых систем;";}i:2;i:353;}i:13;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:454;}i:14;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:454;}i:15;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:454;}i:16;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:454;}i:17;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:74:" /var/log/libvirt/ — тут следует искать все логи;";}i:2;i:458;}i:18;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:532;}i:19;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:532;}i:20;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:532;}i:21;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:532;}i:22;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:77:" /etc/libvirt/ — каталог с файлами конфигурации;";}i:2;i:536;}i:23;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:613;}i:24;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:613;}i:25;a:3:{i:0;s:11:"listu_close";i:1;a:0:{}i:2;i:613;}i:26;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:613;}i:27;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:23:"Список сетей";}i:2;i:615;}i:28;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:638;}i:29;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:49:"
$ virsh net-list --all
$ virsh net-info default
";i:1;N;i:2;N;}i:2;i:645;}i:30;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:645;}i:31;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:46:"Устанавливаем виртуалку.";}i:2;i:704;}i:32;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:756;}i:33;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:263:"
virt-install --virt-type=kvm \
--name vm1-ubuntu \
--ram 1024 \
--vcpus=1 \
--os-variant=ubuntu16.04 \
--hvm \
--cdrom=/var/lib/libvirt/boot/ubuntu-16.04.1-server-amd64.iso \
--network bridge=virbr0,model=virtio \
--graphics vnc \
--disk path=/dev/ubuntu-vg/vm1
";i:1;N;i:2;N;}i:2;i:756;}i:34;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:756;}i:35;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:161:"После того как выполните команду и не появится никаих ошибок, терминал перейдет в режим ";}i:2;i:1028;}i:36;a:3:{i:0;s:18:"doublequoteopening";i:1;a:0:{}i:2;i:1189;}i:37;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:16:"ожидания";}i:2;i:1190;}i:38;a:3:{i:0;s:18:"doublequoteclosing";i:1;a:0:{}i:2;i:1206;}i:39;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:578:". В это время нужно запустить VNC клиент на другой машине (или на этой же) и подключиться к устанавливаемой ВМ. Я для этого использовал программу SSVNC. Она сочетает в себе vnc клиент и ssh клиент. Т.е. VNC сервер, который на стороне сервера kvm по умолчанию слушает только localhost (127.0.0.1), а ssvnc умеет пробрасывать подключение через ssh.";}i:2;i:1207;}i:40;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1791;}i:41;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:19:"
apt install ssvnc
";i:1;N;i:2;N;}i:2;i:1791;}i:42;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1791;}i:43;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:149:"Параметры для подключения можно посмотреть, запустив паралельно другой терминал";}i:2;i:1821;}i:44;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1976;}i:45;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:37:"
virsh dumpxml vm1-ubuntu | grep vnc
";i:1;N;i:2;N;}i:2;i:1976;}i:46;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1976;}i:47;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:195:"Хз почему, но исошник образа ОС нужно обязательно скопировать в определенный каталог, иначе выдает ошибку.";}i:2;i:2023;}i:48;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2224;}i:49;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:55:"
/var/lib/libvirt/boot/ubuntu-16.04.1-server-amd64.iso
";i:1;N;i:2;N;}i:2;i:2224;}i:50;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2224;}i:51;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:217:"Т.к. я в качестве диска для ВМ использую logical volume LVM.
Соответсвенно сначала создаю его, а потом указываю в качестве диска.";}i:2;i:2289;}i:52;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2512;}i:53;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:32:"
--disk path=/dev/ubuntu-vg/vm1
";i:1;N;i:2;N;}i:2;i:2512;}i:54;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2512;}i:55;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:18:"По поводу ";}i:2;i:2554;}i:56;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:2:"--";}i:2;i:2572;}i:57;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:161:"os-variant=ubuntu16.04. Придется установить пакет libosinfo-bin, чтобы посмотреть все поддерживаемые ОС.";}i:2;i:2574;}i:58;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2741;}i:59;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:54:"
$ apt install libosinfo-bin
$ osinfo-query os | less
";i:1;N;i:2;N;}i:2;i:2741;}i:60;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2741;}i:61;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:63:"Хорошая страница по управлению ВМ ";}i:2;i:2805;}i:62;a:3:{i:0;s:12:"externallink";i:1;a:2:{i:0;s:105:"https://www.centos.org/docs/5/html/5.2/Virtualization/chap-Virtualization-Managing_guests_with_virsh.html";i:1;s:12:"Ссылка";}i:2;i:2868;}i:63;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2990;}i:64;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2990;}i:65;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:54:"Сеть. Здесь я использовал Bridge.";}i:2;i:2992;}i:66;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3052;}i:67;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:38:"
--network bridge=virbr0,model=virtio
";i:1;N;i:2;N;}i:2;i:3052;}i:68;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3052;}i:69;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:532:"Линуксовый бридж, это не совсем то о чем можно подумать. Это скорее умный коммутатор на подобии Hyper-V, который имеет свой IP, MAC. И к которому можно подключать множество ВМ.
Т.е. при создании бриджа, его привязывают к реальному интерфейсу. А реальный интерфейс в свою очередь переводят в режим Manual.";}i:2;i:3100;}i:70;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3632;}i:71;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3632;}i:72;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:50:"Вот так это выглядит у меня.";}i:2;i:3634;}i:73;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3690;}i:74;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:424:"
# nano /etc/network/interfaces

auto lo virbr0

iface lo inet loopback

# Настоящий физический интерфейс, смотрящий в локальную сеть
iface enp2s0 inet manual

# Это бридж, т.е. можно сказать виртуальный коммутатор.
# Создается при помощи brctl
iface virbr0 inet dhcp
    bridge_ports enp2s0
    bridge_stp off

";i:1;N;i:2;N;}i:2;i:3690;}i:75;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:4122;}i:76;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:4122;}}