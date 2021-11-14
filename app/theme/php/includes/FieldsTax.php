<?php

use Carbon_Fields\Container;
use Carbon_Fields\Field;

// Для пользовательской таксономии
add_action( 'carbon_fields_register_fields', 'create_fields_tax' );
function create_fields_tax () {
    Container::make( 'term_meta', 'ImageTaxProjects' )
        ->where('term_taxonomy', '=', 'TypesProject')
        ->add_fields(array(
            Field::make( 'image', 'crb_thumb_tax_typesproject', __( 'ThumbTaxonomy', DOMAIN_TEXT ) )
        ));
}

//Для таксономии категории (рубрики)
add_action( 'carbon_fields_register_fields', 'create_fields_tax_category' );
function create_fields_tax_category () {
    Container::make( 'term_meta', 'ImageTaxProjects' )
        ->where('term_taxonomy', '=', 'category')
        ->add_fields(array(
            Field::make( 'image', 'crb_thumb_category', __( 'ThumbTaxonomy', DOMAIN_TEXT ) )
        ));
}
