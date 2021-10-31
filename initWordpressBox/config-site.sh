#!/bin/bash

config=virtualHost.conf
dir=/home/config/

#Проверяем наличие конфигурации для виртуального сервера apache
	if [[ -f $dir$config ]]
	then
		cp $dir$config /etc/apache2/sites-available/
		# Очистка всего не нужного
		cd /etc/apache2/sites-enabled/ && rm *
		# Включаем сайт
		a2ensite $config
		# Перезагрузка apache2
                systemctl restart apache2.service
	fi

