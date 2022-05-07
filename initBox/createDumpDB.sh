#!/bin/bash

# Создать дамп базы данных 

mysqldump -u wordpress -pwordpress wordpress > /home/config/data-dump.sql

if [[ -f /home/config/data-dump.sql ]]
then 
	echo "Good create dump"
else 
	echo "Bad create dump"
fi
