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

//Получение миниатюры для каталога 
//Вывод миниатюры проектов
function the_post_thumbnail_custom ($size = 'medium-size') {
    if (  (function_exists('has_post_thumbnail')) && (has_post_thumbnail()))
         {
                the_post_thumbnail_url($size);
          } elseif($images_post = carbon_get_post_meta(get_the_ID(), "gallery")) {
                echo wp_get_attachment_image_url($images_post[0], "medium-size");
                            } else {
                                //Получаем картинки прикрепленные к посту
                                $attachment_image = get_children( array(
                                    'numberposts' => -1,
                                    'post_mime_type' => 'image',
                                    'post_parent' =>  get_the_ID(),
                                    'post_type' => 'attachment'
                                ));
                                        if(isset($attachment_image) && !empty($attachment_image)) {
                                            // вынимаем первую картинку из массива
                                            $attachment_image = array_shift($attachment_image);
                                            echo wp_get_attachment_image_url( $attachment_image->ID, $size);
                                        }else {
                                            echo URL_THEMES."/assets/images/image-not-found.jpg";
                                        }
                                    }
}

//Функция конвертирования в BYN (Беларуссские рубли) используя плагин Exchange rate Belarusbank by Atlas
//Для Бреста
function convert_currency ($value, $cyrrency = 'USD') {
    if(function_exists('wp_atl_getCurrency_city_by_atlas')) {
        return wp_atl_getCurrency_city_by_atlas($cyrrency, "Брест", $value);
    }else {
        if($value) {
            return ceil($value*3);
        } 
    }
}

//Получение других проектов на странице просмотра одного проекта (выводить 3 похожих проекта)
function get_random_project ($num = 0) {
    if(!$num) $num = 3;
        $args =[
                'post_type'=>TYPE_POST,
                'numberposts' => $num,
                'orderby'     => 'rand',
                'order'       => 'DESC',
                'exclude'   => get_the_ID(),
            ];
              $posts = get_posts($args);
    return $posts;
}


//Шорткод для формы Contact form 7
add_shortcode('get_title_project', 'get_title_project');
function get_title_project($tag){
	return  wp_get_document_title();
}
//Получение 4 последних проектов
function get_last_projects ($num = 4) {
    $args =[
        'tax_query' => array(
            array(
                'taxonomy' => TAX_MEBEL,
                'field'    => 'slug',
                'terms'    => CATALOG
            )
        ),
        'post_type'=>TYPE_POST,
        'numberposts' => $num,
        'orderby'     => 'date',
        'order'       => 'DESC',
    ];
    $posts = get_posts($args);
    return $posts;
}