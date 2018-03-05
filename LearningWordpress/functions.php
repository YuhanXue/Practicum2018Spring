<?php



function learningWordPress_resource(){  
	wp_enqueue_style('style',get_stylesheet_uri()); 
	//This is a default style of css
}


add_action('wp_enqueue_scripts','learningWordPress_resource');

//Navigation Menus
//We need to register these theme locations with WordPress
register_nav_menus(array(
	'primary' => __('Primary Menu'),
	'footer' => __('Foot Menu'),
	
