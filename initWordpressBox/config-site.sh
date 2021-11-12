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

dump="data-dump.sql"
# Проверяем наличие sql дампа БД. Если есть то делаем импорт в БД
# Можно использовать или mysql или mariadb
# ключ -f - пропуск ошибок
# ключ -v - подробный вывод процесса установки

if [[ -f $dir$dump ]]
then
	mariadb -f -v -u wordpress -pwordpress << END
			CREATE database IF NOT EXISTS wordpress;
END
	mysql -v -u wordpress -pwordpress wordpress < $dir$dump
fi
