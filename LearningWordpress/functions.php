<?php
//单独一个文件用来调用css的style，这样如果项目大了的话想添加东西会比较容易

//这是方法
function learningWordPress_resource(){  //起一个明显的方法名
	wp_enqueue_style('style',get_stylesheet_uri()); //,之后添加我们的格式文件的uri
	//This is a default style of css
}

//保证方法是运行的
add_action('wp_enqueue_scripts','learningWordPress_resource');

//Navigation Menus
//We need to register these theme locations with WordPress
register_nav_menus(array(
	'primary' => __('Primary Menu'),
	'footer' => __('Foot Menu'),
	//这个语句可以让我们把刚才添加的两个menu放入WordPress,并能在WordPress的Appearance->menu中查看
));