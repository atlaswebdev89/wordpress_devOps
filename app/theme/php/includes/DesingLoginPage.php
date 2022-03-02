<?php

# Добавляем свой файл стилей для страницы авторизации
add_action('login_head', 'custom_login_css');
function custom_login_css() {
    echo '<link rel="stylesheet"  href="'.get_stylesheet_directory_uri().'/assets/css/login-style.min.css" media="all"/>';
}
 
#Изменение url на ссылке
add_filter( 'login_headerurl', 'logo_link_url');
function logo_link_url() {
    return get_bloginfo( 'url' ); //Возвращаем ссылку с названием сайта
}

#Изменение title ссылки
add_filter( 'login_headertext', 'logo_link_title' );
function logo_link_title() {
    return TitleDesc;
}

