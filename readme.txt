Конфигурация 

Debian 10
Apache 2
Mariadb  Ver 15.1 Distrib 10.3.31-MariaDB
Php7.4
Wp-Cli 2.5.0
PhpMyadmin 5.1.1
Redis 5.0.3
Memcached 1.5.6
xdebug (в IDE надо делать mapping каталогов)

*****************************************
Название виртуального хоста
    dev-site.atl
(прописать соответствие в etc/hosts )

В папке config есть настройка для виртуального хоста apache2
Название домена может быть любое так как настроен только он виртуальный хост 
в apache2 в все запросы идут туда по дефолту

База данных

Название:   wordpress
Логин:      wordpress
Пароль:     wordpress


Администратор БД

Логин:      admin
Пароль:     admin

*****************************************

***************************************** УСТАНОВКА *******************************************

1. Установить Wordpress в локальную папке. Запустить в консоле команду
    ./getWordpress.sh

В папке site появятся файлы последней версии wordpress

2. Открыть файл Vagrantfile и изменить названия (config.vm.hostname,vb.name, config.vm.define) и ip адреса (192.168.57{58, 59 и тд}.100)

            config.vm.network "private_network", ip: "192.168.57.100"    

            s.inline = "sudo mount 192.168.57.1:$1/site /var/www/site;
                sudo mount 192.168.57.1:$1/config /home/config;"
            s.args   = [vagrant_root]

ЖЕЛАТЕЛЬНО ИЗМЕНИТЬ НАЗВАНИЕ НОВОГО САЙТА В файле config/virtualHost.conf

СОЗДАТЬ ПАПКУ к корне site/
3. Запустить установка vagrant 
        vagrant up

4. Подключиться к созданной виртуальной машине
        vagrant ssh
5. Выполнить команду первоначальной настройки wp сайта
	Заменить в файле start_plugins.sh название сайта и запустить команду 
        /home/config/start_plugins.sh

6. В файле gulpfile.js изменить название темы на свое 
    //Название новой темы Wordpress
    var theme = "test";

7. Для устранения ошибки петлевого запроса прописать в /etc/hosts

    127.0.0.1 {название сайта}

     
***********************************************************************************************

# Обновить весь provision
vagrant provision
# или
vagrant reload --provision

# Обновить настройки site (настройки virtualhost)
vagrant provision --provision-with siteEnable

# Обновить настройки phpmyadmin
vagrant provision --provision-with phpmyadmin


# Создание дамп BD файл createDumpDB.sh
# Запустить в vagrant createDumpDB.sh и создаться файл data-dump.sql

# Обновить настройки xdebug
vagrant provision --provision-with xdebug


# При копирование окружения с github надо удалить
    - config/data-dump.sql
    - в site/wp-config.php указать параметры для подключения к базе данных (wodpress, wordpress, wordpress)
