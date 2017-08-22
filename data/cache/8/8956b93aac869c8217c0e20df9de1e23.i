a:29:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:15:"Mange VM in KVM";i:1;i:1;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:3;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:32;}i:4;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:8:"Clone VM";i:1;i:5;i:2;i:32;}i:2;i:32;}i:5;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:5;}i:2;i:32;}i:6;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:72:"
virt-clone -o name-vm1 --name name-vm2-clone --file /dev/ubuntu-vg/vm3
";i:1;N;i:2;N;}i:2;i:52;}i:7;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:134;}i:8;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:9:"Delete VM";i:1;i:5;i:2;i:134;}i:2;i:134;}i:9;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:5;}i:2;i:134;}i:10;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:46:"
virsh destroy name-vm
virsh undefine name-vm
";i:1;N;i:2;N;}i:2;i:155;}i:11;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:211;}i:12;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:6:"Add VM";i:1;i:5;i:2;i:211;}i:2;i:211;}i:13;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:5;}i:2;i:211;}i:14;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:44:"
virsh define /etc/libvirt/qemu/name-vm.xml
";i:1;N;i:2;N;}i:2;i:229;}i:15;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:283;}i:16;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:11:"Show All VM";i:1;i:5;i:2;i:283;}i:2;i:283;}i:17;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:5;}i:2;i:283;}i:18;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:18:"
virsh list --all
";i:1;N;i:2;N;}i:2;i:306;}i:19;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:334;}i:20;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:14:"Add disk to VM";i:1;i:5;i:2;i:334;}i:2;i:334;}i:21;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:5;}i:2;i:334;}i:22;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:79:"
virsh attach-disk Guest1 /dev/sr0 vdc
# В ВМ появится диск vdc
";i:1;N;i:2;N;}i:2;i:360;}i:23;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:449;}i:24;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:22:"Create new MAC address";i:1;i:5;i:2;i:449;}i:2;i:449;}i:25;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:5;}i:2;i:449;}i:26;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:136:"
MACADDR="52:54:00:$(dd if=/dev/urandom bs=512 count=1 2>/dev/null | md5sum | sed 's/^\(..\)\(..\)\(..\).*$/\1:\2:\3/')"; echo $MACADDR
";i:1;N;i:2;N;}i:2;i:483;}i:27;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:628;}i:28;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:628;}}