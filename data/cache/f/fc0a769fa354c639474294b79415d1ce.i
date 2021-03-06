a:19:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:50:"Samba доступ к папке по паролю";i:1;i:1;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:3;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1;}i:4;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:173:"У Samba есть свой собственный репозиторий с пользователями и паролями. Это может быть файл passdb.tdb.";}i:2;i:67;}i:5;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:240;}i:6;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:240;}i:7;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:192:"Чтобы сделать доступ к папке по паролю, нужно создать системного пользователя, а затем добавить его в Samba.";}i:2;i:242;}i:8;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:434;}i:9;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:284:"
adduser smb1

smbpasswd -a smb1

chown smb1:smb1 /var/samba/demo
chmod 770 /var/samba/demo

# Или лучше создать группу например smb000 и добавлять пользователей в нее
chown root:smb000 /var/samba/demo
chmod 770 /var/samba/demo
";i:1;N;i:2;N;}i:2;i:441;}i:10;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:441;}i:11;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:42:"Создание сетевой папки";}i:2;i:735;}i:12;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:783;}i:13;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:321:"
mkdir /var/samba/demo

# /etc/smb.conf
[demo]
    path = /var/samba/demo
    read only = no # Иначе не даст создавать файлы и папки
    create mode = 0770 # Маска при создании файлов
    directory mode = 0770 # Маска при создании директорий
";i:1;N;i:2;N;}i:2;i:783;}i:14;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:783;}i:15;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:270:"Кстати, если пользователь Windows имеет такие же логин и пароль как и на samba сервере, при обращении к папке на samba сервере, пароль запрашиваться не будет.";}i:2;i:1114;}i:16;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1384;}i:17;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1384;}i:18;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:1384;}}