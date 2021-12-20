<?php

//Подключаем переменные окружения
$fileDefine = 'Define.php';
require_once get_template_directory() . '/defines/' . $fileDefine;

//Подключение отдельных файлов для настройки темы
$svkupe_includes = array(
    'HeadModify',       // Файл для очистки раздела head от всего лишнего
    'AdminBarModify',   // Файл для удаление ненужных ссылок в админ баре (полоска сверху в админке)
    'DisableXmlRpc',    // Отключение xmlrps.php (а также блокировка в htaccess ) Или плагин  Disable XML-RPC - делает тоже самое
    'DesingLoginPage',  // Изменяем внешний вид страницы авторизации  
    'ModifyAdminPanel', // Убираем лишние пункты меню
    'PageContact',      // Страница контактов для всего сайта (через carbon fields)
    'SliderCarbon',     // Страница для создания слайдера и добавления элементов (carbon fields)
    'ServiceTypePost',  // Создаем произвольный тип записи услуги
    'ProjectTypePost',  // Создаем произвольный тип записи примеров выполненых работ
    'FieldsTax',        // Добавляем произвольные поля для такосномий (carbon fields)
    'FieldsTypePost'    // Добавляем произвольные поля для типов записей (carbon fields)
);

foreach ( $svkupe_includes as $file ) {
    require_once get_template_directory() . '/includes/' . $file .'.php';
}

//Добавляем необходимые элементы для темы
add_action('after_setup_theme', 'themes_setup');
function themes_setup() {
        //Включаем перевод
        load_theme_textdomain(DOMAIN_TEXT, get_template_directory() . '/languages/');
        //Регистрируем меню
        register_nav_menus(array( // Регистрируем 3 меню
            'main' =>__('Main Menu', DOMAIN_TEXT), // Верхнее
            'footer' =>__('Footer Menu',DOMAIN_TEXT), // Внизу
            'sidebar_menu' =>__('Sidebar Menu', DOMAIN_TEXT) // Меню Сайдбар
        ));
        //Поддержка кастомного логотипа
        add_theme_support('custom-logo');
        //Поддержка миниатюр
        add_theme_support('post-thumbnails');
        // Поддержка фонового изображения
        add_theme_support( 'custom-background' );
        /*
         * Let WordPress manage the document title.
         * By adding theme support, we declare that this theme does not use a
         * hard-coded <title> tag in the document head, and expect WordPress to
         * provide it for us.
        */
        // Поддержка возможности изменить title 
        add_theme_support( 'title-tag' );
        // Поддрержка html5 в стилях и скриптах
        add_theme_support( 'html5', array( 'script', 'style' ));
}

//Регистрируем сайдбар
add_action( 'widgets_init', 'true_register_wp_sidebars' );
function true_register_wp_sidebars() {
    /* В боковой колонке - первый сайдбар */
    register_sidebar(
        array(
            'id' => 'right_sidebar', // уникальный id
            'name' => __('Sidebar-right-at', DOMAIN_TEXT), // название сайдбара
            'description' => __('Sidebar for your boss widgets',DOMAIN_TEXT), // описание
            'before_widget' => '<div class="sidebar-box ftco-animate"><div>', // по умолчанию виджеты выводятся <li>-списком
            'after_widget' => '</div></div>',
            'before_title' => '<h3>', // по умолчанию заголовки виджетов в <h2>
            'after_title' => '</h3>'
        )
    );
}