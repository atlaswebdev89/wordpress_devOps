#!/bin/bash

#Сохраним текущий каталог
CWD=$(pwd)
rm -R /tmp/wordpress/
mkdir /tmp/wordpress/
cd /tmp/wordpress/

# Скачиваем последню версию
curl -O https://wordpress.org/latest.tar.gz

# Распаковываем
tar xzvf latest.tar.gz

touch /tmp/wordpress/wordpress/.htaccess
cp /tmp/wordpress/wordpress/wp-config-sample.php /tmp/wordpress/wordpress/wp-config.php

mkdir /tmp/wordpress/wordpress/wp-content/upgrade

# точка обозначает копировать скрытые файлы тоже
cp -a /tmp/wordpress/wordpress/. $CWD/site
