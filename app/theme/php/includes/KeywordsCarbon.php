<?php

// Используем плагин Carbon Fields

use Carbon_Fields\Container;
use Carbon_Fields\Field  ;

add_action( 'carbon_fields_register_fields', 'create_keywords_page' );

function create_keywords_page() {
    
    Container::make( 'post_meta', __( 'Keywords', DOMAIN_TEXT ) )
        ->where( 'post_type', '=', 'page' )
        ->add_fields( array(
                Field::make( 'text', 'crb_keywords_page', __( 'Keywords', DOMAIN_TEXT) )
                        ->help_text('<p>'. __( 'Keywords', DOMAIN_TEXT ).'</p>')
                        ->set_attribute( 'placeholder', __('set keywords',DOMAIN_TEXT ) ),
        ));
}