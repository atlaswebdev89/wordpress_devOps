#!/bin/bash

#Обновление
apt-get -y update && apt-get -y upgrade
 
# установка утилит
apt-get -y install net-tools unzip dnsutils iputils-ping apache2 curl wget

# Установка php7.4

		# Загрузим и сохраним репозиторий PPA в файл на вашем сервере. Также загрузим ключ GPG.
		apt -y install lsb-release apt-transport-https ca-certificates 
		wget -O /etc/apt/trusted.gpg.d/php.gpg https://packages.sury.org/php/apt.gpg

		#Добавим репозиторий:
		echo "deb https://packages.sury.org/php/ $(lsb_release -sc) main" | sudo tee /etc/apt/sources.list.d/php.list

		# Установка 
		apt-get update
		apt-get -y install php7.4 libapache2-mod-php7.4 php7.4-curl php7.4-gd php7.4-mbstring php7.4-zip php7.4-memcached php7.4-redis php7.4-xml php7.4-json php7.4-gettext  php7.4-cli php7.4-common php7.4-opcache php7.4-phpdbg php7.4-imagick php7.4-intl

# Устанавливаем часовой пояс
ln -snf /usr/share/zoneinfo/Europe/Minsk /etc/localtime && echo Europe/Minsk > /etc/timezone

#Расширения для работы с базами данных
apt-get -y install php7.4-mysql  

# Включаем необходимые модули 
a2enmod php7.4 deflate expires rewrite

# Установить mariaDB
apt-get install -y mariadb-server

# Создаем базу данных для wordpress
# ключ -f - пропуск ошибок
# ключ -v - подробный вывод процесса установки

mariadb -v -f -u root -proot  <<END
	CREATE DATABASE wordpress DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
	GRANT ALL ON wordpress.* TO 'wordpress'@'%' IDENTIFIED BY 'wordpress';
	GRANT ALL PRIVILEGES ON *.* TO 'admin'@'localhost' IDENTIFIED BY 'admin' WITH GRANT OPTION;
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
