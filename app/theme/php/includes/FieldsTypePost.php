<?php

use Carbon_Fields\Container;
use Carbon_Fields\Field;

add_action( 'carbon_fields_register_fields', 'create_fields_post_type' );

function create_fields_post_type () {
    Container::make( 'post_meta', __( 'Gallery', DOMAIN_TEXT ) )
        ->where('post_type', '=', 'projects_type')
        ->add_fields(array(
            Field::make( 'media_gallery', 'gallery', __( 'ItemGallery', DOMAIN_TEXT ) )
        ));
    
    Container::make( 'post_meta', __( 'Cash', DOMAIN_TEXT ) )
        ->where('post_type', '=', 'projects_type')
        ->add_fields(array(
            Field::make( 'text', 'crb_cash_projects', __( 'Cash Project', DOMAIN_TEXT ) )
                ->help_text('<p>'. __( 'Set Cash, USD', DOMAIN_TEXT ).'</p>'),
        ));
}