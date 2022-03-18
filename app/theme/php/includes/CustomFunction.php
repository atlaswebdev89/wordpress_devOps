<?php

//Получение логотипа
function get_logo_carbon ($type = NULL) {
        if($type) {
           if (carbon_get_theme_option($type)) {
                    $logo =  wp_get_attachment_image_url(carbon_get_theme_option($type), 'full' );
                echo $logo;
            }else {
                    $not_found =  URL_THEMES."/assets/images/not-found-little.jpg";
                echo $not_found;
            }
        }else {
                $not_found =  URL_THEMES."/assets/images/not-found-little.jpg";
            echo $not_found;
        }
    
}

// Добавить класс к тегу li в меню (см. wp_nav_menu)
function add_additional_class_on_li($classes, $item, $args) {
    if(isset($args->add_li_class)) {
        $classes[] = $args->add_li_class;
    }
    return $classes;
}
add_filter('nav_menu_css_class', 'add_additional_class_on_li', 1, 3);

// Добавить класс к тегу <a> в меню (см. wp_nav_menu)
function add_menu_link_class( $atts, $item, $args ) {
  if (property_exists($args, 'link_class')) {
    $atts['class'] = $args->link_class;
  }
  return $atts;
}
add_filter( 'nav_menu_link_attributes', 'add_menu_link_class', 1, 3 );

//Отключаем стандартные блоки для редактирования страниц
add_action( 'init', 'my_remove_post_excerpt_feature' );
function my_remove_post_excerpt_feature() {
	remove_post_type_support( 'page', 'editor' );
}

/**Вывод значений ключевых слов*/
add_action( 'wp_head', 'add_field_keyword', 1 );
function add_field_keyword() {
    if(!is_404()) {
        if(carbon_get_post_meta(get_the_ID(), 'crb_keywords_page')) {
             echo '<meta name="keywords" content="' . esc_html( carbon_get_post_meta(get_the_ID(), 'crb_keywords_page') ) . '" />';
        }
    }
}

// Добавить descpiption для 404 страницы
add_action ('wp_head','add_description_for_404', 1);
function add_description_for_404 () {
    if(is_404()) {
        echo '<meta name="description" content="К сожалению, запрашиваемая Вами страница не найдена. Пожалуйста, перейдите в существующий раздел" />';
    }
}