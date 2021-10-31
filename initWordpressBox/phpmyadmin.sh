#!/bin/bash

	dir_1="/var/lib/phpmyadmin"
	dir_2="/usr/share/phpmyadmin"
	version="5.1.1"
	config="config.inc.php"
	apache_conf="pma.conf"
# Обновим пакеты и установим недостающие 
	apt-get -y update
	apt-get -y install php-xml php-mbstring php-zip php-gd php-curl php-json php-gettext  php-phpseclib
# Создадим директории для phpmyadmin 
	
	if  [[ -d $dir_1 ]] 
	then
		rm -R $dir_1
		
	fi

	if  [[ -d $dir_2 ]]
	then 
		rm -R $dir_2
	fi
	
	mkdir -p $dir_1/tmp
	mkdir -p $dir_2

# Нужный владелец 
	chown -R www-data:www-data $dir_1

# Перейдем в домашнюю директорию и скачаем архив с официального сайта
	cd
	wget https://files.phpmyadmin.net/phpMyAdmin/$version/phpMyAdmin-$version-all-languages.tar.gz
# Распаковываем и перемещаем в нужную директорию	
	tar xvf phpMyAdmin-$version-all-languages.tar.gz
	mv phpMyAdmin-$version-all-languages/* /usr/share/phpmyadmin

# Проверяем наличие файла конфигурации в синхронизированный с хостом папке

	if [[ -f /home/config/$config ]]
	then
		cp /home/config/$config $dir_2
	fi

# Создаем пользователя в БД
mariadb -v -f -u root -proot  <<END
		GRANT SELECT, INSERT, UPDATE, DELETE ON phpmyadmin.* TO 'pma'@'localhost' IDENTIFIED BY 'phpmyadmin';
		FLUSH PRIVILEGES;
END

# для создания базы данных и таблиц конфигурации
    mariadb -v -f -u root < /usr/share/phpmyadmin/sql/create_tables.sql
# На этом установка phpMyAdmin закончена. В целях безопасности удалим служебную директорию setup:
	rm -rf /usr/share/phpmyadmin/setup

# Конфигурация для apache2
# Проверяем наличие файла 
	if [[ -f /home/config/$apache_conf ]]
	then 
		cp /home/config/$apache_conf /etc/apache2/conf-available/
		# Включаем конфигурацию
		a2enconf $apache_conf
		# Перезагрузка apache2
        systemctl restart apache2.service
	fi 