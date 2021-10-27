#!/bin/bash

#Обновление
apt-get -y update && apt-get -y upgrade
 
# установка утилит
apt-get -y install net-tools dnsutils iputils-ping apache2 curl php7.3 libapache2-mod-php7.3 php7.3-curl php7.3-gd php7.3-mbstring php7.3-zip

#Расширения для работы с базами данных
apt-get -y install php7.3-mysql  

# Включаем необходимые модули 
a2enmod php7.3 deflate expires rewrite

# Установить mariaDB
apt-get install -y mariadb-server

# Создаем базу данных для wordpress
mariadb -v -f -u root -proot  <<END
	CREATE DATABASE wordpress DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
	GRANT ALL ON wordpress.* TO 'wordpress'@'%' IDENTIFIED BY 'wordpress';
	FLUSH PRIVILEGES;
END

# Разрешим удаленный доступ к базе данных
# заменим строку в файле конфигурации mariadb
filename="/etc/mysql/mariadb.conf.d/50-server.cnf";
sed -i "s/bind-address            = 127.0.0.1/bind-address            = 0.0.0.0/" $filename;

# Перезагрузка MariaDB
systemctl restart mariadb.service
# Перезагрузка apache2
systemctl restart apache2.service
