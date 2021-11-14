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

//add new colums for custom type post "projects_type"
add_filter( 'manage_projects_type_posts_columns', function ( $columns ) {
	$my_columns = [
		'id'    => __('ID',DOMAIN_TEXT),
		'thumb' => __('ThumbnailPost',DOMAIN_TEXT),
	];
        
        $sort = [
        	'cash'	=> __('Cash, USD',DOMAIN_TEXT),
        ];
    return array_slice( $columns, 0, 1 ) + $my_columns + array_slice( $columns, 1, 2 ) +$sort + array_slice( $columns, 3 );
} );

// Добавляем колонку миниатюры для таксономии TypesProject
add_filter( 'manage_edit-TypesProject_columns', 'true_add_columns');
function true_add_columns($my_columns) {
            // наша новая колонка в виде отдельного массива
            $preview = [
                            'id' => __('ID',DOMAIN_TEXT), 
                            'previews' => __('Preview',DOMAIN_TEXT), 
                        ];
            // разделяем массив колонок и вставляем новую в нужное место
            $my_columns = array_slice( $my_columns, 0, 1) + $preview + array_slice( $my_columns, 1);
        return $my_columns;
}

// Заполняем колонки для произвольного типа записей данными
add_action('manage_projects_type_posts_custom_column', 'add_columns_type_post');
function add_columns_type_post ($column_name) {
    switch ( $column_name ) {
        case 'id':
		echo get_the_ID();
		break;
	
	case 'thumb':
		if(has_post_thumbnail(get_the_ID())) { ?>
			<a href="<?php echo get_edit_post_link(); ?>">
				<?php echo get_the_post_thumbnail(get_the_ID(), array(50,50)); ?>
			</a>
		<?php }
		break;
	
	case 'cash':
            if(get_post_meta(get_the_ID(),'_crb_cash_projects', true)) {
				echo get_post_meta(get_the_ID(),'_crb_cash_projects', true).' $';
			}else {
				echo __('Not set', DOMAIN_TEXT);
			}
		break;
	}
}

// Заполняем колонки для произвольной таксономии (10, 2 - ОБЯЗАТЕЛЬНО!!!)
add_action('manage_TypesProject_custom_column', 'add_columns_custom_tax', 10, 3);
function add_columns_custom_tax ($out, $column_name, $term_id) {
    switch ($column_name) {
        case 'id': 
                return $term_id;
            break;
        case 'previews': 
                    $img = get_term_meta( $term_id, '_crb_thumb_tax_typesproject', true);
                    if($img) {
                        // ссылка на  картинку по ID вложения
                        $term_thumbnail_url = wp_get_attachment_image_url( $img, "thumbnail");
                return "<a href =".get_edit_term_link($term_id)."><img width=50 src=".$term_thumbnail_url. " /></a>";
                    }
            break;
    }
}

// добавляем возможность сортировать колонку
add_filter( 'manage_'.'edit-projects_type'.'_sortable_columns', 'add_views_sortable_column' );
function add_views_sortable_column( $sortable_columns ){
	$sortable_columns['cash'] = [ 'cash_sort', true ];
            // false = asc (по умолчанию)
            // true  = desc
	return $sortable_columns;
}
//Переделываем основной запрос 
add_action( 'pre_get_posts', 'my_cash_orderby' );
function my_cash_orderby( $query ) {
        if( ! is_admin()) return;
            $orderby = $query->get( 'orderby');
                if('cash_sort' == $orderby ) {
                    $query->set('meta_key','_crb_cash_projects');
                    $query->set('orderby','meta_value_num');
                }
}