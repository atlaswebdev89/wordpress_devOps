#!/bin/bash

    apt-get -y install php7.4-xdebug

    xdebug=$(php -m | grep xdebug | wc -l);
    defaults=/home/config/xdebug.conf;
    config=/etc/php/7.4/apache2/conf.d/20-xdebug.ini;
    if [[  $(php -m | grep xdebug | wc -l) -ge 1 ]]
    then
	if [[ -f $config ]]
	then
		cat $defaults > $config;
	fi
    else 
	echo "Not found xdebug";
    fi

# Перезагрузка apache2
systemctl restart apache2.service