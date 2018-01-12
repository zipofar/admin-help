a:104:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:49:"Создаем свой плагин для Munin";i:1;i:1;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:1;}i:2;i:1;}i:3;a:3:{i:0;s:10:"listu_open";i:1;a:0:{}i:2;i:65;}i:4;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:65;}i:5;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:65;}i:6;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:" ";}i:2;i:69;}i:7;a:3:{i:0;s:12:"externallink";i:1;a:2:{i:0;s:50:"http://munin-monitoring.org/wiki/HowToWritePlugins";i:1;s:75:"Пример создания плагина в официальной wiki";}i:2;i:70;}i:8;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:" ";}i:2;i:200;}i:9;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:201;}i:10;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:201;}i:11;a:3:{i:0;s:13:"listitem_open";i:1;a:1:{i:0;i:1;}i:2;i:201;}i:12;a:3:{i:0;s:16:"listcontent_open";i:1;a:0:{}i:2;i:201;}i:13;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:1:" ";}i:2;i:205;}i:14;a:3:{i:0;s:12:"externallink";i:1;a:2:{i:0;s:53:"https://www.agix.com.au/create-your-own-munin-plugin/";i:1;s:72:"Еще один тутор по созданию плагина к Munin";}i:2;i:206;}i:15;a:3:{i:0;s:17:"listcontent_close";i:1;a:0:{}i:2;i:336;}i:16;a:3:{i:0;s:14:"listitem_close";i:1;a:0:{}i:2;i:336;}i:17;a:3:{i:0;s:11:"listu_close";i:1;a:0:{}i:2;i:336;}i:18;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:336;}i:19;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:599:"Нужно обязательно сказать, что создавать плагины для Munin очень легко.
Первое о чем нужно знать - плагин это просто скрипт, который возвращает числовые значения в определенном формате. Причем этот скрипт может быть написан на любом языке (bash, perl, php, python и т.д.). Также надо помнить, что по дефолту Munin запрашивает скрипты раз в 5 минут.";}i:2;i:338;}i:20;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:937;}i:21;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:937;}i:22;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:141:"Для примера пусть наш плагин будет возвращать рандомно два значения от 0 до 10.";}i:2;i:939;}i:23;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1080;}i:24;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1080;}i:25;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:247:"Перейдем в каталог /etc/munin/plugins и увидим, что здесь находятся симлинки на скрипты. У меня вот здесь /usr/share/munin/plugins.
Назовем наш плагин random_val";}i:2;i:1082;}i:26;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1329;}i:27;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1329;}i:28;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:23:"Создадим его";}i:2;i:1331;}i:29;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1360;}i:30;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:42:"
nano /usr/share/munin/plugins/random_val
";i:1;N;i:2;N;}i:2;i:1360;}i:31;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1360;}i:32;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:37:"Сделаем исполняемым";}i:2;i:1412;}i:33;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1455;}i:34;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:46:"
chmod +x /usr/share/munin/plugins/random_val
";i:1;N;i:2;N;}i:2;i:1455;}i:35;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1455;}i:36;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:72:"Наш скрипт пока только с одним графиком";}i:2;i:1511;}i:37;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1589;}i:38;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:237:"
#!/bin/bash

r1=$(( $RANDOM % 10 ));

case $1 in
   config)
        cat <<'EOM'
graph_title Random values
graph_vlabel random val
graph_category system
random11.label random1
EOM
        exit 0;;
esac

printf "random11.value "
echo $r1
";i:1;N;i:2;N;}i:2;i:1589;}i:39;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1589;}i:40;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:29:"Поясним наш код.";}i:2;i:1836;}i:41;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:1871;}i:42;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:99:"
r1=$(( $RANDOM % 10 )); # переменная r1 получает рандомное число.
";i:1;N;i:2;N;}i:2;i:1871;}i:43;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:1871;}i:44;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:265:"В блоке case описывается конфигурация графика. Нужен он для того, чтобы Munin мог выделить параметры конфигурации вызвав наш скрипт с аргументом config.";}i:2;i:1980;}i:45;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2245;}i:46;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:355:"
graph_title # название графика
graph_vlabel # название вертикальной оси
graph_category system # в какой категории будет находиться ссылка на график
random11.label random1 # определяется название метки (random1) для данных random11.value.
";i:1;N;i:2;N;}i:2;i:2252;}i:47;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2252;}i:48;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:123:"Следующий блок просто выводиться значение в понятном Munin-у формате.";}i:2;i:2617;}i:49;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2746;}i:50;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:35:"
printf "random11.value "
echo $r1
";i:1;N;i:2;N;}i:2;i:2746;}i:51;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2746;}i:52;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:88:"Чтобы активировать наш плагин, создадим симлинк";}i:2;i:2791;}i:53;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:2885;}i:54;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:73:"
ln -s /usr/share/munin/plugins/random_val /etc/munin/plugins/random_val
";i:1;N;i:2;N;}i:2;i:2885;}i:55;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:2885;}i:56;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:33:"И перезапустим Munin";}i:2;i:2968;}i:57;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3007;}i:58;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:30:"
systemctl restart munin-node
";i:1;N;i:2;N;}i:2;i:3007;}i:59;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3007;}i:60;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:79:"Вот и  все. Теперь можно идти в вебинтерфейс";}i:2;i:3047;}i:61;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3126;}i:62;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3126;}i:63;a:3:{i:0;s:13:"internalmedia";i:1;a:7:{i:0;s:35:":screenshot_2018-01-08_19-05-31.png";i:1;s:0:"";i:2;N;i:3;s:3:"400";i:4;N;i:5;s:5:"cache";i:6;s:7:"details";}i:2;i:3128;}i:64;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3172;}i:65;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3172;}i:66;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:91:"Примерно так будет выглядеть график через 25 минут";}i:2;i:3174;}i:67;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3265;}i:68;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3265;}i:69;a:3:{i:0;s:13:"internalmedia";i:1;a:7:{i:0;s:36:"::screenshot_2018-01-08_19-24-57.png";i:1;s:0:"";i:2;N;i:3;s:3:"400";i:4;N;i:5;s:5:"cache";i:6;s:7:"details";}i:2;i:3267;}i:70;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3312;}i:71;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3312;}i:72;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:92:"Давайте добавим еще один график на нашу диаграмму.";}i:2;i:3314;}i:73;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3412;}i:74;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:318:"
#!/bin/bash

r1=$(( $RANDOM % 10 ));
r2=$(( $RANDOM % 10 ));

case $1 in
   config)
        cat <<'EOM'
graph_title Random values
graph_vlabel random val
graph_category system
random11.label random1
random22.label random2
EOM
        exit 0;;
esac

printf "random11.value "
echo $r1
printf "random22.value "
echo $r2
";i:1;N;i:2;N;}i:2;i:3412;}i:75;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3412;}i:76;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:62:"Теперь график может выглядеть так";}i:2;i:3740;}i:77;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3802;}i:78;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3802;}i:79;a:3:{i:0;s:13:"internalmedia";i:1;a:7:{i:0;s:36:"::screenshot_2018-01-08_20-23-12.png";i:1;s:0:"";i:2;N;i:3;s:3:"400";i:4;N;i:5;s:5:"cache";i:6;s:7:"details";}i:2;i:3804;}i:80;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:3849;}i:81;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:3851;}i:82;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:35:"Настройка Warning Critical";i:1;i:2;i:2;i:3851;}i:2;i:3851;}i:83;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:3851;}i:84;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:3851;}i:85;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:284:"Графики это конечно хорошо, но еще нужны оповещения в случае превышения пороговых значений.
Добавим в файл /usr/share/munin/plugins/random_val в блок case следующие значения";}i:2;i:3899;}i:86;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:4189;}i:87;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:40:"
random11.warning 3
random11.critical 5
";i:1;N;i:2;N;}i:2;i:4189;}i:88;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:4189;}i:89;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:63:"Теперь все это будет выглядеть так";}i:2;i:4238;}i:90;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:4307;}i:91;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:354:"
#!/bin/bash
r1=$(( $RANDOM % 10 ));
r2=$(( $RANDOM % 10 ));
case $1 in
   config)
        cat <<'EOM'
graph_title Random values
graph_vlabel random val
graph_category system
random11.label random1
random22.label random2
random11.warning 3
random11.critical 5
EOM
        exit 0;;
esac
printf "random11.value "
echo $r1
printf "random22.value "
echo $r2
";i:1;N;i:2;N;}i:2;i:4307;}i:92;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:4307;}i:93;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:558:"Хотя я не вижу смысла именно в обоих (warning и critical) значениях. Так как при настройке уведомлений, нельзя разделить или как-то выделить один из этих параметров.
Также данные настройки пороговых значений можно переопределить для каждого хоста в отдельности. Сделать это можно в файле /etc/munin/munin.conf. На пример так";}i:2;i:4670;}i:94;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:5234;}i:95;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:437:"
[munin1.testing]
    address 127.0.0.1
    use_node_name yes
    random_val.random11.critical 4 # Здесь переопределяется значение порогового значения
# random_val - имя плагина как в директории /etc/munin/plugins
# random11 - название графика
# critical - название уровня порогового значения (critical или warning)
";i:1;N;i:2;N;}i:2;i:5234;}i:96;a:3:{i:0;s:6:"p_open";i:1;a:0:{}i:2;i:5234;}i:97;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:95:"Сами уведомления настраиваются в файле /etc/munin/munin.conf
";}i:2;i:5680;}i:98;a:3:{i:0;s:12:"externallink";i:1;a:2:{i:0;s:43:"http://munin-monitoring.org/wiki/munin.conf";i:1;s:10:"Здесь";}i:2;i:5775;}i:99;a:3:{i:0;s:5:"cdata";i:1;a:1:{i:0;s:28:" официальная wiki";}i:2;i:5833;}i:100;a:3:{i:0;s:7:"p_close";i:1;a:0:{}i:2;i:5867;}i:101;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:369:"
# Добавим строчку в любом месте
contact.mail.command /etc/munin/telegram.sh
# contact - обязательное
# mail - вместо этого можно любое значение
# command - обязательное
# /etc/munin/telegram.sh - путь до любого скрипта, который пошлет уведомление
";i:1;N;i:2;N;}i:2;i:5867;}i:102;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:6244;}i:103;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:6244;}}