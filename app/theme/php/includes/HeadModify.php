<?php
/**
 * Delete meta data from headers
 * remove-action - Удаляет функцию прикрепленную к указанному хуку.
 * Хук - wp_head
 */
remove_action('wp_head', 'rsd_link'); //используется различными блог-клиентами или веб-сервисами для публикации\изменения записей в блоге. 
remove_action('wp_head', 'wp_generator'); // вывод используемого движка и его версии.  
remove_action('wp_head', 'feed_links',2);
remove_action('wp_head', 'feed_links_extra',3);
remove_action('wp_head', 'wlwmanifest_link');
remove_action('wp_head', 'adjacent_posts_rel_link_wp_head');
remove_action('wp_head', 'wp_shortlink_wp_head',10,0);
remove_action('wp_head', 'wp_oembed_add_discovery_links' );
remove_action('wp_head', 'wp_oembed_add_host_js');
// Удаляем информацию о REST API из заголовков HTTP и секции head
remove_action( 'xmlrpc_rsd_apis', 'rest_output_rsd' );
remove_action( 'wp_head', 'rest_output_link_wp_head', 10 );
remove_action( 'template_redirect', 'rest_output_link_header', 11 );
//dns-prefetch
remove_action( 'wp_head', 'wp_resource_hints', 2 );
//Emoji из WordPress
remove_action('wp_head', 'print_emoji_detection_script', 7);
remove_action('wp_print_styles', 'print_emoji_styles');
//Нужен он для редактора Gutenberg
add_action( 'wp_enqueue_scripts', 'wpassist_remove_block_library_css' );
    function wpassist_remove_block_library_css(){
        wp_dequeue_style( 'wp-block-library' );
    }

