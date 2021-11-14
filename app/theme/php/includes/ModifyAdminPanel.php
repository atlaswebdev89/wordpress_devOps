<?php
# Используется две функции  
# remove_menu_page() - Удаляет пункты меню верхнего уровня (записи, медиафайлы, страницы) в админ-панели
# remove_submenu_page($menu_slug, $submenu_slug) - удалить подменю главного меню
#       $submenu_slug — ярлык вложенного элемента меню, который вы хотите удалить, 
#       $menu_slug — это ярлык его родительского элемента.

add_action( 'admin_menu', 'remove_admin_menu_items' );
function remove_admin_menu_items () {
    remove_menu_page('edit-comments.php');
    
    #  Убираем пункты меню для конкретного пользователя
    
    # Получаем текущего пользователя
    $current_user = wp_get_current_user();
    
    # получить текущую роль $current_user->roles[0];
    
    if ( $current_user && ($current_user->user_login == USER_EDIT_ADMIN )) {
            remove_menu_page('themes.php'); // Убираем комментарии
            remove_menu_page('tools.php'); // .. инструменты
            remove_menu_page('plugins.php'); // .. плагины
            remove_menu_page('users.php'); // .. пользователи
            
            remove_submenu_page('index.php', 'update-core.php'); // обновления
    }
}


# Переименновываем пункты меню в админке под заказчика
add_action( 'admin_menu', 'edit_rename_admin_menus' );

function edit_rename_admin_menus() {
    global $menu;
    global $submenu;
    $menu[5][0] = 'Статьи'; // Изменить запись на статьи
        $submenu['edit.php'][5][0] = 'Все статьи';
        $submenu['edit.php'][10][0] = 'Добавить статью';
}

# Изменение порядка пунктов меню в админке 
add_filter('custom_menu_order', 'custom_order_menu_order'); 
add_filter('menu_order', 'custom_order_menu_order');

function custom_order_menu_order ($menu_ord) {
    if (!$menu_ord) return true;
  
    return array(
        'index.php', // Консоль
        'options-general.php', // Параметры
        'edit.php', // Записи
        'edit.php?post_type=projects_type',
        'link-manager.php', // Ссылки
        'edit.php?post_type=page', // Страницы
        'edit-comments.php', // Комментарии
        'users.php', // Пользователи
        'upload.php', // Медиафайлы
        'themes.php', // Внешний вид
        'plugins.php', // Плагины
        'tools.php', // Инструменты
      
//====перед этой строкой  добавляем следующий пункт меню 
    );
}