<?php
/*
 * Функции для добавления версии к подключаемым стилям и скриптам С помощью данной функции нет необходимости очищать кеш браузера
 */
function wp_register_versioned_script( $handle, $src = false, $deps = array(), $in_footer = true ) {
    wp_register_script( $handle, get_stylesheet_directory_uri() . $src, $deps, filemtime( get_stylesheet_directory() . $src ), $in_footer );
}

/*Register all Styles and Scripts*/
add_action('wp_enqueue_scripts', 'register_theme_scripts');
function register_theme_scripts () {
    $theme_version = wp_get_theme()->get('Version');
        wp_register_script('core',     get_template_directory_uri().'/assets/js/core.min.js', array('jquery'), $theme_version, true);
        wp_register_versioned_script('main','/assets/js/main.min.js', array('jquery'));
}

/*include scripts*/
add_action( 'wp_enqueue_scripts', 'includes_scripts' );
function includes_scripts () {
    wp_enqueue_script('core');
    wp_enqueue_script('main');
    //Передача значений во внешнюю часть сайта для js скрипта
    // Для ajax обработки форм на сайте
    wp_localize_script('main', 'ajax_data', 
            array(
                'url' => admin_url('admin-ajax.php'),
                'nonce' => wp_create_nonce('mail_ajax_nonce'),
                'callback' => "request_message_mail",
            ));
}