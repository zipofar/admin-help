a:14:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:14:"Config for PHP";i:1;i:1;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:3;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:350:"
server {
        listen 80;
        root /var/www/wp1.loc;
        index index.php index.html;
        server_name wp1.loc;

        location / {
                try_files $uri $uri/ /index.php$args;
        }

        location ~ \.php$ {
                include snippets/fastcgi-php.conf;
                fastcgi_pass 10.0.3.238:9000;
        }

}
";i:1;N;i:2;N;}i:2;i:36;}i:4;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:36;}i:5;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:16:"fastcgi-php.conf";}i:2;i:395;}i:6;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:417;}i:7;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:201:"
fastcgi_split_path_info ^(.+\.php)(/.+)$;

try_files $fastcgi_script_name =404;

set $path_info $fastcgi_path_info;
fastcgi_param PATH_INFO $path_info;

fastcgi_index index.php;
include fastcgi.conf;
";i:1;N;i:2;N;}i:2;i:417;}i:8;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:417;}i:9;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:12:"fastcgi.conf";}i:2;i:628;}i:10;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:640;}i:11;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:1077:"
fastcgi_param  SCRIPT_FILENAME    $document_root$fastcgi_script_name;
fastcgi_param  QUERY_STRING       $query_string;
fastcgi_param  REQUEST_METHOD     $request_method;
fastcgi_param  CONTENT_TYPE       $content_type;
fastcgi_param  CONTENT_LENGTH     $content_length;

fastcgi_param  SCRIPT_NAME        $fastcgi_script_name;
fastcgi_param  REQUEST_URI        $request_uri;
fastcgi_param  DOCUMENT_URI       $document_uri;
fastcgi_param  DOCUMENT_ROOT      $document_root;
fastcgi_param  SERVER_PROTOCOL    $server_protocol;
fastcgi_param  REQUEST_SCHEME     $scheme;
fastcgi_param  HTTPS              $https if_not_empty;

fastcgi_param  GATEWAY_INTERFACE  CGI/1.1;
fastcgi_param  SERVER_SOFTWARE    nginx/$nginx_version;

fastcgi_param  REMOTE_ADDR        $remote_addr;
fastcgi_param  REMOTE_PORT        $remote_port;
fastcgi_param  SERVER_ADDR        $server_addr;
fastcgi_param  SERVER_PORT        $server_port;
fastcgi_param  SERVER_NAME        $server_name;

# PHP only, required if PHP was built with --enable-force-cgi-redirect
fastcgi_param  REDIRECT_STATUS    200;
";i:1;N;i:2;N;}i:2;i:647;}i:12;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:1732;}i:13;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:1732;}}