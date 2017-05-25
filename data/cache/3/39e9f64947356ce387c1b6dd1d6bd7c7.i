a:27:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:84:"Reverse proxy для доступа к Outlook Web App (OWA) из интернета";i:1;i:1;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:3;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1;}i:4;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:483:"Жил был почтовый сервер Exchange 2013 во внутренней сети, и все бы ничего, но захотелось получить доступ к почте из сети интернет. Т.к. тупо пробрасывать порт на серевер как-то не по фэншую, а выносить его в DMZ тем более не хотелось, было решено использовать обратный прокси.";}i:2;i:101;}i:5;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:584;}i:6;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:584;}i:7;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:235:"Для обеспечения защиты и бесперебойного доступа к OWA из интернета, можно организовать обратный прокси. Сделаем это с помощью nginx.";}i:2;i:586;}i:8;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:821;}i:9;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:821;}i:10;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:66:"Создадим файл /etc/nginx/conf.d/proxy.conf (ориг. ";}i:2;i:823;}i:11;a:3:{i:0;s:12:"externallink";i:1;a:2:{i:0;s:74:"http://blog.adamjoshuasmith.com/deploying-exchange-2016-behind-nginx-free/";i:1;s:4:"Link";}i:2;i:889;}i:12;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:")";}i:2;i:972;}i:13;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:973;}i:14;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:1674:"
    server
    {
        listen 80;
        server_name owa.example.com;
        return 301 https://$host$request_uri;
    }

    server
    {
        tcp_nodelay on;
        listen 443;
        
        # Обязательно включить SSL
        ssl on;
        
        ssl_certificate /etc/ssl/certs/nginx-selfsigned.crt;
        ssl_certificate_key /etc/ssl/private/nginx-selfsigned.key;
        ssl_session_timeout 5m;
        server_name owa.example.com;
        location / {
                return 301 https://Local_Address;
        }

        proxy_http_version      1.1;
        proxy_read_timeout      360;
        proxy_pass_header       Date;
        proxy_pass_header       Server;
        proxy_pass_header       Authorization;
        proxy_set_header        Host $host;
        proxy_set_header        X-Real-IP $remote_addr;
        proxy_set_header        X-Forwarded-For $proxy_add_x_forwarded_for;
        proxy_pass_request_headers on;
#       more_set_input_headers 'Authorization: $http_authorization';
        proxy_set_header Accept-Encoding "";
#       more_set_headers -s 401 'WWW-Authenticate: Basic realm="Local_Address"';
        proxy_buffering off;
        proxy_set_header Connection "Keep-Alive";

        location ~* ^/owa { proxy_pass https://Local_Address; }
        location ~* ^/Microsoft-Server-ActiveSync { proxy_pass https://Local_Address; }
        location ~* ^/ecp { proxy_pass https://Local_Address; }
        location ~* ^/rpc { proxy_pass https://Local_Address; }
    }
    
    # Local_Address - вписать IP или доменное имя сервера на котором находится Exchange
    
";i:1;N;i:2;N;}i:2;i:980;}i:15;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:980;}i:16;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:150:"Для создания самоподписанного сертификата можно воспользоваться командой (ориг. ";}i:2;i:2664;}i:17;a:3:{i:0;s:12:"externallink";i:1;a:2:{i:0;s:118:"https://www.digitalocean.com/community/tutorials/how-to-create-a-self-signed-ssl-certificate-for-nginx-in-ubuntu-16-04";i:1;s:4:"Link";}i:2;i:2814;}i:18;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:")";}i:2;i:2941;}i:19;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2942;}i:20;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:145:"
sudo openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/nginx-selfsigned.key -out /etc/ssl/certs/nginx-selfsigned.crt
";i:1;N;i:2;N;}i:2;i:2949;}i:21;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2949;}i:22;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:426:"Самый важный пункт при создании сертификата - Common Name. В это поле надо внести доменное имя, ассоциированное с вашим доменом или более предпочтительно IP адрес сервера (этого сервера) на котором собственно и будет установлен сертификат.";}i:2;i:3104;}i:23;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3530;}i:24;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:378:"
Country Name (2 letter code) [AU]:RU
State or Province Name (full name) [Some-State]:Moscow
Locality Name (eg, city) []:Moscow
Organization Name (eg, company) [Internet Widgits Pty Ltd]:MyOrganization
Organizational Unit Name (eg, section) []:MyOrganization
Common Name (e.g. server FQDN or YOUR name) []:server_IP_address or domain_name
Email Address []:admin@your_domain.com
";i:1;N;i:2;N;}i:2;i:3537;}i:25;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:3923;}i:26;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:3923;}}