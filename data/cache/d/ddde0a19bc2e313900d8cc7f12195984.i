a:20:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:61:"Setting locale failed. Please check that your locale settings";i:1;i:1;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:3;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1;}i:4;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:36:"Ошибка выглядит так";}i:2;i:78;}i:5;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:120;}i:6;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:427:"
perl: warning: Setting locale failed.
perl: warning: Please check that your locale settings:
	LANGUAGE = (unset),
	LC_ALL = (unset),
	LC_CTYPE = "UTF-8",
	LANG = "en_US.UTF-8"
    are supported and installed on your system.
perl: warning: Falling back to the standard locale ("C").
locale: Cannot set LC_CTYPE to default locale: No such file or directory
locale: Cannot set LC_ALL to default locale: No such file or directory
";i:1;N;i:2;N;}i:2;i:120;}i:7;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:120;}i:8;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:41:"Правим файл /etc/default/locale";}i:2;i:557;}i:9;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:604;}i:10;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:78:"
LANGUAGE=en_US.UTF-8
LC_ALL=en_US.UTF-8
LANG=en_US.UTF-8
LC_TYPE=en_US.UTF-8
";i:1;N;i:2;N;}i:2;i:604;}i:11;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:604;}i:12;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:31:"Обновляем локали";}i:2;i:692;}i:13;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:729;}i:14;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:49:"
locale-gen en_US.UTF-8
dpkg-reconfigure locales
";i:1;N;i:2;N;}i:2;i:729;}i:15;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:729;}i:16;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:26:"Перезагружаем";}i:2;i:788;}i:17;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:814;}i:18;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:814;}i:19;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:814;}}