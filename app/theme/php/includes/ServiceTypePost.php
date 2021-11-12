<?php

// Если для типов записей устанавливается таксономия 
// то СНАЧАЛА НАДО РЕГИСТРИРОВАТЬ ТАКСОНОМИЮ А ПОТОМ ТИП ЗАПИСИ С КОТОРЫМИ ЭТО ТАКСОНОМИЯ СВЯЗАНА

// Создаем новую таксономию для projects
add_action( 'init', 'create_projects_taxonomies', 0 );
function create_projects_taxonomies(){
    register_taxonomy('TypesProject', array('projects_type'),
        array(
            'labels' => [
                                        'name' => __('Types projects',DOMAIN_TEXT), // Название 
				        'singular_name' =>__('Type project',DOMAIN_TEXT), //Название ждя оного элемента таксономии  
				        'menu_name' =>__('Types Project',DOMAIN_TEXT),// Название в меню
				        'search_items' =>__('Search types',DOMAIN_TEXT), //
				        'all_items' =>__('All types',DOMAIN_TEXT),
				        'parent_item' =>__('Parent type',DOMAIN_TEXT),
				        'parent_item_colon' => __('Parent type',DOMAIN_TEXT),
				        'edit_item' => __('Parent type',DOMAIN_TEXT),
				        'update_item' =>__('Update type',DOMAIN_TEXT),
				        'add_new_item' =>__('Add new type',DOMAIN_TEXT),
				        'new_item_name' => __('Name new type',DOMAIN_TEXT),
            			],
            'public' => true, // Таксономия в админ панели
            'hierarchical' => true, // Иерархия
            'show_ui' => true, //Блок управления в админке для таксономии
            'show_in_menu' =>true,// Возможность добавдять в меню
            'show_in_quick_edit' =>  true, //панель быстрого редактирования записи
            'show_admin_column' => true,
            //'hierarchical'=>true и 'query_var' => true для иерархии терминов кастомной таксономии и формирования красивого url
            'query_var' => true,
            'rewrite' => array('slug' => false, 'with_front'=>false, 'hierarchical'=>true),
        )
    );
}

/*Добаляем произвольный тип записи project*/
add_action('init', 'projects_type');
function projects_type(){
    $args = array(
        'labels' => 
			        [
				        'name' => __('Projects',DOMAIN_TEXT), // Основное название
				        'menu_name' => __('Projects',DOMAIN_TEXT), // Название в меню
				        'singular_name' => __('Project Mebel',DOMAIN_TEXT), // Название для одичной записи
				        'add_new' => __('Add Project',DOMAIN_TEXT),
				        'add_new_item' => __('Add new project',DOMAIN_TEXT),
				        'edit_item' => __('Edit project',DOMAIN_TEXT),
				        'new_item' => __('New project',DOMAIN_TEXT),
				        'view_item' => __('View project',DOMAIN_TEXT),
				        'search_items' => __('Search projects',DOMAIN_TEXT),
				        'not_found' =>  __('Projects not found',DOMAIN_TEXT),
				        'not_found_in_trash' => __('Projects not found',DOMAIN_TEXT),
				        'parent_item_colon' => ''
        			],
            'public' => true, // Включение
            'publicly_queryable' => true, // Тип записей будет работать в шаблоне
            'show_ui' => true, // Включает тип записей 
            'show_in_menu' => true, // Включение в меню админки
            'show_in_nav_menus' => true, // Включает возможность добавлять в меню
            'menu_icon' => 'dashicons-admin-links', // Иконка в админке
            'query_var' => false, //Отключает параметры запросов для этого типа (query_string)
            'rewrite' => array('slug' =>'projects', 'with_front' => true ), //url будет включать slug (projects/$types)
            'capability_type' => 'post',
            'has_archive' => true,//страница архивов
            'hierarchical' => false,// древовидная структура
             //'menu_icon' => ANBLOG_TEST_URL .'assets/img/plugins-icon.png', // иконка в меню
            'menu_position' => 3, //позиция в меню
            'supports' => array('title','editor','thumbnail','page-attributes', 'custom-fields'), //page-attributes - это шаблоны и иерархия сбоку при создании и редактировании
            //'taxonomies' => array('TypesProject','category','post_tag'), // Типы таксаномии
            'taxonomies' => array('TypesProject'), // Типы таксаномии
        );
    register_post_type('projects_type', $args);
}

// Сообщения при работе с типом постов. Добавлением свои сообщения и уведомления 
add_filter( 'post_updated_messages', 'true_post_type_messages' );
function true_post_type_messages( $messages ) {
	global $post, $post_ID;
            $messages['projects_type'] = array( //  название созданного нами типа записей
                    0 => '', // Данный индекс не используется.
                    1 => sprintf( __('Project update',DOMAIN_TEXT).' <a href="%s">Просмотр</a>', esc_url( get_permalink($post_ID) ) ),
                    2 => __('Project update',DOMAIN_TEXT),
                    3 => __('Project delete',DOMAIN_TEXT),
                    4 => __('Project update',DOMAIN_TEXT),
                    5 => isset($_GET['revision']) ? sprintf( 'Функция восстановлена из редакции: %s', wp_post_revision_title( (int) $_GET['revision'], false ) ) : false,
                    6 => sprintf( __('Project published in site',DOMAIN_TEXT).' <a href="%s">'.__('View project in site',DOMAIN_TEXT).'</a>', esc_url( get_permalink($post_ID) ) ),
                    7 => __('Project saved',DOMAIN_TEXT),
                    8 => sprintf( __('Send for verification',DOMAIN_TEXT). '<a target="_blank" href="%s">'.__('View',DOMAIN_TEXT).'</a>', esc_url( add_query_arg( 'preview', 'true', get_permalink($post_ID) ) ) ),
                    9 => sprintf( __('Schuduled for publication',DOMAIN_TEXT). ': <strong>%1$s</strong>. <a target="_blank" href="%2$s">'.__('View',DOMAIN_TEXT).'</a>', date_i18n( __( 'M j, Y @ G:i' ), strtotime( $post->post_date ) ), esc_url( get_permalink($post_ID) ) ),
                    10 => sprintf( __('Draft updated',DOMAIN_TEXT). ' <a target="_blank" href="%s">Просмотр</a>', esc_url( add_query_arg( 'preview', 'true', get_permalink($post_ID) ) ) ),
            );
	return $messages;
}


