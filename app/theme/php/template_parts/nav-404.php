<!-- Block menu  -->
<?php wp_nav_menu(array(
        'theme_location'  => 'not_found',     // (string) Расположение меню в шаблоне. (указывается ключ которым было зарегистрировано меню в функции
        'menu_class'      => 'rd-navbar-nav',          // (string) class самого меню (ul тега)
        'echo'            => true,            // (boolean) Выводить на экран или возвращать для обработки
        'fallback_cb'     => 'wp_page_menu',  // (string) Используемая (резервная) функция, если меню не существует (не удалось получить)
        'before'          => '',              // (string) Текст перед <a> каждой ссылки
        'after'           => '',              // (string) Текст после </a> каждой ссылки
        'link_before'     => '',              // (string) Текст перед анкором (текстом) ссылки
        'link_after'      => '',              // (string) Текст после анкора (текста) ссылки
        'items_wrap'      => '<ul class="%2$s">%3$s</ul>',
        'depth'           => 0,               // (integer) Глубина вложенности (0 - неограничена, 2 - двухуровневое меню)
    )
);
?>
<!-- End Block Menu -->