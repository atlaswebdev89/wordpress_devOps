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

# Файл .htaccess создается автоматически при обновлении постоянных ссылок в админке WP
touch /tmp/wordpress/wordpress/.htaccess
mkdir /tmp/wordpress/wordpress/wp-content/upgrade

# точка обозначает копировать скрытые файлы тоже
cp -a /tmp/wordpress/wordpress/. $CWD/site

# Копируем файл конфигурация для wordpress 
cp $CWD/config/config-wordpress.php $CWD/site/wp-config.php


