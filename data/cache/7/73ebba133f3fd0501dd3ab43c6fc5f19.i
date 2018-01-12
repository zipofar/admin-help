a:21:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:47:"Настройка Munin + Nginx (Ubuntu 16.04)";i:1;i:1;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:3;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1;}i:4;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:40:"Сразу даю ссылочку на ";}i:2;i:64;}i:5;a:3:{i:0;s:12:"externallink";i:1;a:2:{i:0;s:76:"http://guide.munin-monitoring.org/en/stable-2.0/example/webserver/nginx.html";i:1;s:48:"официальную документацию.";}i:2;i:104;}i:6;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:233;}i:7;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:233;}i:8;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:131:"Но лично у меня вот этот блок, который использует fastcgi-html.sock не заработал";}i:2;i:235;}i:9;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:372;}i:10;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:197:"
location /munin/ {
    fastcgi_split_path_info ^(/munin)(.*);
    fastcgi_param PATH_INFO $fastcgi_path_info;
    fastcgi_pass unix:/var/run/munin/fastcgi-html.sock;
    include fastcgi_params;
}
";i:1;N;i:2;N;}i:2;i:372;}i:11;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:372;}i:12;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:62:"Вместо этого пришлось сделать так";}i:2;i:579;}i:13;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:647;}i:14;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:53:"
location /munin {
    alias /var/cache/munin/www;
}
";i:1;N;i:2;N;}i:2;i:647;}i:15;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:647;}i:16;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:55:"Итоговый вариант выглядит так";}i:2;i:710;}i:17;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:771;}i:18;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:475:"
# /etc/nginx/site-available/munin
server {
   listen 80;
   server_name munin.loc;

   location ^~ /munin-cgi/munin-cgi-graph/ {
       fastcgi_split_path_info ^(/munin-cgi/munin-cgi-graph)(.*);
       fastcgi_param PATH_INFO $fastcgi_path_info;
       fastcgi_pass unix:/var/run/munin/fastcgi-graph.sock;
       include fastcgi_params;
   }

   location /munin/static/ {
       alias /etc/munin/static/;
   }

   location /munin {
       alias /var/cache/munin/www;
   }
}
";i:1;N;i:2;N;}i:2;i:771;}i:19;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1254;}i:20;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:1254;}}