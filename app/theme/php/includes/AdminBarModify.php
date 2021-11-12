<?php
    
add_action( 'add_admin_bar_menus','edit_admin_bar'); 
function edit_admin_bar () {
    // Удаляем меню профиля (ссылка на Wordpress)
    remove_action( 'admin_bar_menu', 'wp_admin_bar_wp_menu', 10 );
    // Удаляем меню с комментарии
    remove_action( 'admin_bar_menu', 'wp_admin_bar_comments_menu', 60 );
}

