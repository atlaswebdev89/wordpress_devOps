<?php

// Используем плагин Carbon Fields

use Carbon_Fields\Container;
use Carbon_Fields\Field  ;

add_action( 'carbon_fields_register_fields', 'create_section_price' );

function create_section_price() {
    $employees_labels = array(
                'plural_name' => __( 'Projects', DOMAIN_TEXT ),
                'singular_name' => __( 'Project', DOMAIN_TEXT ),
        );
    Container::make( 'theme_options', __( 'Price&Service', DOMAIN_TEXT ) )
        ->set_icon('dashicons-money-alt')
        ->add_tab( __( 'MainService', DOMAIN_TEXT ), array(
                Field::make( 'text', 'crb_name_service', __( 'Service', DOMAIN_TEXT ) )
                     ->help_text('<p>'. __( 'Set name furniture', DOMAIN_TEXT ).'</p>'),
                Field::make( 'text', 'crb_cash_service', __( 'Cash', DOMAIN_TEXT ) )
                    ->help_text('<p>'. __( 'Set cash Service', DOMAIN_TEXT ).'</p>'),
                Field::make( 'text', 'crb_service_description', __( 'Description service', DOMAIN_TEXT ) )
                    ->help_text('<p>'. __( 'Set description', DOMAIN_TEXT ).'</p>'),
                Field::make( 'complex', 'crb_service_furniture', __( 'Add new furniture', DOMAIN_TEXT ) )
                    ->setup_labels( $employees_labels )
                    ->set_layout('tabbed-vertical' ) 
                    ->add_fields(array(
                        Field::make("html", "crb_information_for_price", __( 'caption_price', DOMAIN_TEXT ))
                            ->set_html('<p>'. __( 'Add price for page service', DOMAIN_TEXT ).'</p>'),
                        Field::make( 'text', 'name', __( 'Add name  price', DOMAIN_TEXT ) ),
                        Field::make( 'text', 'cash', __( 'Add cash for price', DOMAIN_TEXT ) ),
                    ))
                    )
                )
        ->add_tab( __( 'OtherService', DOMAIN_TEXT ), array(
                Field::make( 'text', 'crb_name_other_service', __( 'Other Service', DOMAIN_TEXT ) )
                     ->help_text('<p>'. __( 'Set name other service', DOMAIN_TEXT ).'</p>'),
                Field::make( 'text', 'crb_cash_other_service', __( 'OtherCash', DOMAIN_TEXT ) )
                    ->help_text('<p>'. __( 'Set cash other Service', DOMAIN_TEXT ).'</p>'),
                Field::make( 'text', 'crb_other_service_description', __( 'Description other service', DOMAIN_TEXT ) )
                    ->help_text('<p>'. __( 'Set other description', DOMAIN_TEXT ).'</p>'),
                Field::make( 'complex', 'crb_other_service_furniture', __( 'Add other service', DOMAIN_TEXT ) )
                    ->setup_labels( $employees_labels )
                    ->set_layout('tabbed-vertical' ) 
                    ->add_fields(array(
                        Field::make("html", "crb_information_for_price", __( 'caption_price', DOMAIN_TEXT ))
                            ->set_html('<p>'. __( 'Add service and price for page service', DOMAIN_TEXT ).'</p>'),
                        Field::make( 'text', 'name', __( 'Add name  price', DOMAIN_TEXT ) ),
                        Field::make( 'text', 'cash', __( 'Add cash for price', DOMAIN_TEXT ) ),
                    ))
                    )
                );
}