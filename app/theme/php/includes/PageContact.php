<?php

// Используем плагин Carbon Fields

// ВНИМАНИЕ !!! ВНИМАНИЕ !!!
// Все значения полей сохраняются в таблице wp_options, 
// Значения из этой таблицы лучше получать wordpress функцией get_option()
// т.к. она использует объектный кеш..
// Функция плагина Carbon Fields carbon_get_theme_option не использует object cache

use Carbon_Fields\Container;
use Carbon_Fields\Field;

add_action( 'carbon_fields_register_fields', 'create_page_contacts' );

function create_page_contacts() {
    
    Container::make( 'theme_options', __( 'PageContact', DOMAIN_TEXT ) )
        ->set_icon('dashicons-editor-paragraph')
       //     ->set_page_parent('options-general.php')
        ->add_tab( __( 'Phone', DOMAIN_TEXT ), array(
                                Field::make( 'text', 'crb_phone_1', __( 'Phone-1', DOMAIN_TEXT ) )
                                    ->help_text('<p>'. __( 'Set Phone', DOMAIN_TEXT ).'</p>'),
                                Field::make( 'text', 'crb_phone_2', __( 'Phone-2', DOMAIN_TEXT ) )
                                     ->help_text('<p>'. __( 'Set Phone', DOMAIN_TEXT ).'</p>'),
                                Field::make( 'text', 'crb_phone_3', __( 'Phone-3', DOMAIN_TEXT ) )
                                       ->help_text('<p>'. __( 'Set Phone', DOMAIN_TEXT ).'</p>'),
                                Field::make( 'text', 'crb_phone_4', __( 'Phone-4', DOMAIN_TEXT ) )
                                    ->help_text('<p>'. __( 'Set Phone', DOMAIN_TEXT ).'</p>'),
                    )
                )
        ->add_tab( __( 'Email', DOMAIN_TEXT ), array(
                                Field::make( 'text', 'crb_email_1', __( 'Email', DOMAIN_TEXT ) )
                                    ->set_width(50),
                                Field::make( 'text', 'crb_email_2', __( 'Email', DOMAIN_TEXT ) )
                                    ->set_width(50),
                    )
                )
        ->add_tab( __( 'Address', DOMAIN_TEXT ), array(
                                Field::make( 'textarea', 'crb_address_comp', __( 'Address', DOMAIN_TEXT ) )
                                    ->set_rows(2)->help_text('<p>'. __( 'Set Address Company', DOMAIN_TEXT ).'</p>'),
                                Field::make( 'textarea', 'crb_address_next', __( 'Second Address', DOMAIN_TEXT ) )
                                    ->set_rows(2)->help_text('<p>'. __( 'Set Secondary Address Company', DOMAIN_TEXT ).'</p>'),
                    )
                )
        ->add_tab( __( 'WorkTime', DOMAIN_TEXT ), array(
                                Field::make( 'text', 'cbr_time_work', __( 'Time Working', DOMAIN_TEXT ) )
                                    ->help_text('<p>'. __( 'Set time working', DOMAIN_TEXT ).'</p>')->set_width(50)
                                    ->set_attribute( 'placeholder', __( 'Time Working', DOMAIN_TEXT ) ),
                                Field::make("html", "crb_information_time_working", __( 'dayWorking', DOMAIN_TEXT ))
                                    ->set_html('<h3>'. __( 'Set working day', DOMAIN_TEXT ).'</h3>'),
            
                                Field::make( 'checkbox', 'crb_monday_check', __( 'Monday', DOMAIN_TEXT )),
                                Field::make( 'checkbox', 'crb_tuesday_check', __( 'Tuesday', DOMAIN_TEXT )),
                                Field::make( 'checkbox', 'crb_wednesday_check', __( 'Wednesday', DOMAIN_TEXT )  ),
                                Field::make( 'checkbox', 'crb_thursday_check', __( 'Thursday', DOMAIN_TEXT )  ),
                                Field::make( 'checkbox', 'crb_friday_check', __( 'Friday', DOMAIN_TEXT )  ),
                                Field::make( 'checkbox', 'crb_saturday_check', __( 'Saturday', DOMAIN_TEXT )  ),
                                    Field::make( 'text', 'crb_start_time', __( 'Time Working in Saturday', DOMAIN_TEXT )  )
                                                            ->set_conditional_logic( array(
                                                                array(
                                                                          'field' => 'crb_saturday_check',
                                                                          'value' => true,
                                                                )
                            ) ),
                                    
                                Field::make( 'checkbox', 'crb_sunday_check', __( 'Sunday', DOMAIN_TEXT )  ),
                                Field::make( 'text', 'crb_sunday_start_time', __( 'Time Working in Sunday', DOMAIN_TEXT )  )
                                            ->set_conditional_logic( array(
                                                array(
                                                        'field' => 'crb_sunday_check',
                                                        'value' => true,
                                                     )) )
                                            ->set_width(50),
                    )
              )  
            ->add_tab( __( 'Links', DOMAIN_TEXT ), array(
                                Field::make( 'text', 'crb_instagram_link', __( 'Instagram', DOMAIN_TEXT ) )
                                   ->help_text('<p>'. __( 'link in profile Instagram', DOMAIN_TEXT ).'</p>')
                                     ->set_attribute( 'placeholder', 'Instagram' ) ,
                                Field::make( 'text', 'crb_telegram_link', __( 'Telegram', DOMAIN_TEXT ) )
                                    ->help_text('<p>'. __( 'link in profile Telegram', DOMAIN_TEXT ).'</p>')
                                     ->set_attribute( 'placeholder', 'Telegram' ),
                                Field::make( 'text', 'crb_vk_link', __( 'VK', DOMAIN_TEXT) )
                                   ->help_text('<p>'. __( 'link in profile VK', DOMAIN_TEXT ).'</p>')
                                     ->set_attribute( 'placeholder', 'Vk' ),
                    )
                )
            ->add_tab( __( 'Info', 'atlas-domain' ), array(
                          Field::make( 'textarea', 'crb_about_comp', __( 'About Company', DOMAIN_TEXT ) )
                                    ->set_rows(5)->help_text('<p>'. __( 'Info about company', DOMAIN_TEXT ).'</p>'),      
                    )
                );
}

