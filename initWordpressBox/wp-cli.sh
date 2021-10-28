#!/bin/bash

# Скачиваем скрипт
cd /tmp
curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

# Делаем его исполняемым
chmod +x wp-cli.phar

# Переносим в нужную директорию
mv wp-cli.phar /usr/local/bin/wp
