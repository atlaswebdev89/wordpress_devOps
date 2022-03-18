<?php
/*
 * Функции для добавления версии к подключаемым стилям и скриптам С помощью данной функции нет необходимости очищать кеш браузера
 */
function wp_register_versioned_style( $handle, $src = false, $deps = array(), $media = 'all' ) {
    wp_register_style( $handle, URL_THEMES . $src, $deps = array(), filemtime( get_stylesheet_directory() . $src ), $media );
}

add_action('wp_enqueue_scripts', 'register_theme_styles');
function register_theme_styles () {
    $theme_version = wp_get_theme()->get('Version');
        wp_register_style('bootstrap', URL_THEMES.'/assets/css/bootstrap.min.css', array(), $theme_version);
        wp_register_style('core', URL_THEMES.'/assets/css/core.min.css', array(), $theme_version);
        wp_register_versioned_style('main', '/assets/css/main.min.css');
}

/*include styles*/
add_action( 'wp_enqueue_scripts', 'includes_styles' );
function includes_styles () {
        wp_enqueue_style('bootstrap');
        wp_enqueue_style('core');
        wp_enqueue_style('main');
}

//Добавляем предзагрузку шрифтов 
function wp_head_preload_fonts() {
    echo
        ' <link rel="preload" href="' . get_template_directory_uri() . '/assets/fonts/Montserrat-Regular.ttf" as="font" crossorigin>'
        .'<link rel="preload" href="' . get_template_directory_uri() . '/assets/fonts/Montserrat-Bold.ttf" as="font" crossorigin>'
        .'<link rel="preload" href="' . get_template_directory_uri() . '/assets/fonts/Courgette-Regular.ttf" as="font" crossorigin>'
        .'<link rel="preload" href="' . get_template_directory_uri() . '/assets/fonts/Poppins-Regular.ttf" as="font" crossorigin>'
        .'<link rel="preload" href="' . get_template_directory_uri() . '/assets/fonts/Poppins-Medium.ttf" as="font" crossorigin>'
    ;
}
add_action('wp_head', 'wp_head_preload_fonts');
//============================================================//