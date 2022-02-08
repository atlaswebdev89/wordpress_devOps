#!/bin/bash

# Директория с сайтом
site=/var/www/site
user="atlas"
pass="coredallas89"
url="dev-site.atl"

# Переходим в каталог с wp сайтом
cd $site

# Объявляем массив - не обязательно 
# Чтобы объявить ассоциативный массив, используйте declare встроенную -A опцию (в верхнем регистре):
declare -a plugins
# Массив необходимы плагинов
plugins=(
            "wpvivid-backuprestore"
            "classic-widgets" 
            "classic-editor"
            "cyr2lat"
            "duplicator"
            "error-log-monitor"
            "html-editor-syntax-highlighter"
            "query-monitor"
            "simple-history"
            "wp-smtp"
            "wp-statistics"
            "wp-super-cache"
            "wordpress-seo"
            "aryo-activity-log"
            "tag-manager-header-body-footer"
            "black-studio-tinymce-widget"
            "admin-menu-editor"
            "tinymce-advanced"
            "disable-xml-rpc"
            "simple-image-sizes"
            "force-regenerate-thumbnails"
            "wp-structuring-markup"
            "wp-user-avatar"
            "robots-txt-editor"
            "user-login-history"
            "wp-htaccess-editor"
            "limit-login-attempts-reloaded"
)

# Длина массива
pluginsLen=${#plugins[@]}

# Проверяем наличие файлов и каталоге 
if [[ !$(ls -l | wc -l) > 0 ]]
then 
    echo "Not found files in current directory $site"
fi

# Настраиваем новый сайт
wp core install --url=$url  --title="New Site Wordpress" --admin_user=$user --admin_password=$pass --admin_email="atlas@gmail.com"
# Обновим wp 
    wp core update
# Устанавливаем must have плагины 

        # Удаляем ненужные плагины
        wp plugin delete akismet
        wp plugin delete hello
        
        # Обновляем плагины 
        wp plugin update --all
        
        
        # Устанавливаем и активируем дополнительные необходимые плагины
        if [[ $pluginsLen > 0 ]]
        then
            for i in ${plugins[@]}
                do
                    wp plugin install $i --activate
                done
        else 
            echo "Massive plugins is empty!"
        fi

# Скачиваем и устанавливаем плагин Carbon Fields
if [[ $(cd $site/wp-content/plugins && ls -l | grep "carbon-field" | wc -l) == 0 ]] 
then
    cd ${HOME}
                namePl="carbon.zip"
            # Скачаваем и распаковываем плагин   
                    curl -o $namePl https://carbonfields.net/zip/latest/
                unzip -q -o $namePl -d /var/www/site/wp-content/plugins/
            # Активируем плагин
            cd $site && wp plugin activate carbon-fields
            # Удаляем архив плагина
            cd ${HOME} && rm $namePl
else
    echo "Success: Carbon Fields is installed"
    # Активируем плагин
    cd $site && wp plugin activate carbon-fields
    echo "Success: Carbon Fields is activated"
fi

# Обновить переводы
            cd $site
            wp language plugin --all update
            wp language theme --all update 
            wp language core update


