a:31:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:18:"Thin Provision LVM";i:1;i:1;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:3;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:35;}i:4;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:47:"Создание Thin Provision logical volumes";i:1;i:2;i:2;i:35;}i:2;i:35;}i:5;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:35;}i:6;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:35;}i:7;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:40:"Создаем группу Volume Group";}i:2;i:96;}i:8;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:142;}i:9;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:25:"
vgcreate vg001 /dev/sdb
";i:1;N;i:2;N;}i:2;i:142;}i:10;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:142;}i:11;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:21:"Создаем пул";}i:2;i:177;}i:12;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:204;}i:13;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:36:"
lvcreate -l 100%FREE -T vg001/pool
";i:1;N;i:2;N;}i:2;i:204;}i:14;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:204;}i:15;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:42:"Создаем раздел Logical Volume";}i:2;i:250;}i:16;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:298;}i:17;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:168:"
lvcreate -V 1G -n vm1 vg001/pool

# А можно создать раздел больше, чем физический раздел
lvcreate -V 10G -n vm1 vg001/pool
";i:1;N;i:2;N;}i:2;i:298;}i:18;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:477;}i:19;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:26:"Snapshot Thin Provision LV";i:1;i:2;i:2;i:477;}i:2;i:477;}i:20;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:477;}i:21;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:1094:"
# Создаем файловую систему для vm1
mkfs.ext4 /dev/vg001/vm1

# Маунтим vm1
mount /dev/vg001/vm1 /mnt

# Создаем файл
touch /mnt/t1.txt

# Создаем snapshot
lvcreate -s -n vm1_snap1 vg001/vm1

# Смотрим, что получилось
lvs --all

# Создаем еще файл
touch /mnt/t2.txt

#### Откатываемся до состояния snapshot-а

# Отключаем раздел vm1
umount /mnt

# Деактивируем раздел vm1
lvchange -an vg001/vm1

# Заменяем текущее содержимое vm1 на snapshot
lvconvert --merge vg001/vm1_snap1

# Активируем раздел vm1
lvchange -ay vg001/vm1

# Все, snapshot применился и автоматически удалился
# Теперь можно опять примаунтить vm1 и увидеть, что
# все изменения с момента снапшота исчезли.

# Также snapshot можно просто удалить не откатываясь на него
lvremove vg001/vm1_snap1
";i:1;N;i:2;N;}i:2;i:522;}i:22;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1626;}i:23;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:12:"Ссылки";i:1;i:2;i:2;i:1626;}i:2;i:1626;}i:24;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:1626;}i:25;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1626;}i:26;a:3:{i:0;s:12:"externallink";i:1;a:2:{i:0;s:69:"https://www-rhstorage.rhcloud.com/blog/vpodzime/lvm-thin-provisioning";i:1;s:24:"About Thin Provision LVM";}i:2;i:1651;}i:27;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:0:"";}i:2;i:1749;}i:28;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1749;}i:29;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1749;}i:30;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:1749;}}