<?php

// Используем плагин Carbon Fields

use Carbon_Fields\Container;
use Carbon_Fields\Field  ;

add_action( 'carbon_fields_register_fields', 'create_page_slider' );

function create_page_slider() {
    $employees_labels = array(
                'plural_name' => __( 'Slides', DOMAIN_TEXT ),
                'singular_name' => __( 'Slide', DOMAIN_TEXT ),
        );
    Container::make( 'theme_options', __( 'Slider', DOMAIN_TEXT ) )
        ->set_icon('dashicons-format-image')
        ->add_fields( array(
                Field::make( 'complex', 'crb_slider_first', __( 'Add slide for main page', DOMAIN_TEXT ) )
                    ->setup_labels( $employees_labels )
                    ->set_layout('grid' ) 
                    ->add_fields( array(
                        Field::make("html", "crb_information_time_working", __( 'dayWorking', DOMAIN_TEXT ))
                            ->set_html('<p>'. __( 'Add slide and info for main page', DOMAIN_TEXT ).'</p>'),
                        Field::make( 'image', 'photo', __( 'Add slide', DOMAIN_TEXT ) )->set_width( 33 ),
			Field::make( 'text', 'title', __( 'Add description', DOMAIN_TEXT ) )->set_width( 33 ),
			Field::make( 'text', 'description', __( 'Add title', DOMAIN_TEXT ) )->set_width( 33 )
                    ))
        ));
}
