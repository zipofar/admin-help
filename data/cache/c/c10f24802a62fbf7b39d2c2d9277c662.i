a:32:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:56:"Обязательно настроить DirectoryIndex";i:1;i:1;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:3;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1;}i:4;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:150:"Т.к. при использовании mod_rewrite будут перебираться все расширения по дефолту (cgi, html,pl";}i:2;i:73;}i:5;a:3:{i:0;s:6:"entity";i:1;a:1:{i:0;s:3:"...";}i:2;i:223;}i:6;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:2:").";}i:2;i:226;}i:7;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:228;}i:8;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:228;}i:9;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:363:"Т.е. если ссылка заканчивается на слэшь, что является признаком директории, dir_mod подставит аля index.cgi и т.д. до тех пор пока не перебирет все расширения в поисках существующего индексного файла в папке.";}i:2;i:230;}i:10;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:593;}i:11;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:593;}i:12;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:48:"Допустим вот такая ссылка ";}i:2;i:595;}i:13;a:3:{i:0;s:12:"externallink";i:1;a:2:{i:0;s:24:"http://test.com/folder1/";i:1;N;}i:2;i:643;}i:14;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:667;}i:15;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:667;}i:16;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:41:"Dir_mod будет подставлять";}i:2;i:669;}i:17;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:716;}i:18;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:103:"
http://test.com/folder1/index.cgi
http://test.com/folder1/index.pl
http://test.com/folder1/index.html
";i:1;N;i:2;N;}i:2;i:716;}i:19;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:716;}i:20;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:271:"И теперь можно представить как это все будет выглядить в случае mod_rewrite и в случае классического перенаправления в единую точка входа веб приложения";}i:2;i:829;}i:21;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1106;}i:22;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:133:"
RewriteRule ^index\.php$ - [L]
RewriteCond %{REQUEST_FILENAME} !-f
RewriteCond %{REQUEST_FILENAME} !-d
RewriteRule . /index.php [L]
";i:1;N;i:2;N;}i:2;i:1106;}i:23;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1106;}i:24;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:131:"mod_rewrite сделает много циклов, т.к. dir_mod будет каждый раз переопределять url.";}i:2;i:1249;}i:25;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1380;}i:26;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1380;}i:27;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:194:"И чтобы избежать данного процесса, нужно указать конкретные индексные файлы, использующиеся в приложении";}i:2;i:1382;}i:28;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1576;}i:29;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:477:"
# Допустим ограничим только поиском Index.html в директориях
<VirtualHost *:80>
    ServerName test.com
    DocumentRoot /var/www/test
    
    <Directory /var/www/test>
        DirectoryIndex index.html
        
        RewriteEngine On
        RewriteRule ^index\.php$ - [L]
        RewriteCond %{REQUEST_FILENAME} !-f
        RewriteCond %{REQUEST_FILENAME} !-d
        RewriteRule . /index.php [L]
    </Directory>
</VirtualHost>
";i:1;N;i:2;N;}i:2;i:1583;}i:30;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:2068;}i:31;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:2068;}}