Конфигурация 

Debian 10
Apache 2
Mariadb  Ver 15.1 Distrib 10.3.31-MariaDB
Php7.3.31
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