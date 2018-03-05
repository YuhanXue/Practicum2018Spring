<!DOCTYPE html>
<html <?php language_attributes(); ?>> <!--if we open our html file here, we're gonna use footer.php to close this-->
	<head>
		<!--let the wordpress do the work for us, instead of including a value here-->
		<meta charset="<?php bloginfo('charset');?>"
		      <meta name="viewport" content="width=device-wideth">
		<!--output the name of the site-->
		<title><?php bloginfo('name');?></title>
		<?php wp_head();?>
		<!--之后如果要在这个网站插入插件的话，wordpress会在这个位置加入我们想加入的东西
		wp_head() 是wordpress的一个非常重要的函数，基本上所有的主题在header.php这个文件里都会使用到这个函数，而且很多插件为了在header上加点东西也会用到wp_head()，比如SEO的相关插件-->

	</head>

	<body <?php body_class(); ?><!--在此处加入body class方便之后css文件定位到此处-->
		<div class="container">
			<!--site header-->
			<header class="site-header">
				<h1><a href="<?php echo home_url(); ?>" ><?php bloginfo('name'); ?></a></h1>
				<h5><?php bloginfo('description'); ?></h5>

				<!--site navigation导航栏-->
				<nav class="site-nav">
					<!--<ul>
						<li><a href="">About US</a></li>  用调用方法来解决繁琐的复制粘贴
					</ul>-->
					<?php
					//定义数组
						$args=array(
							//menu的name和location
							'theme_location' => 'primary'
							//给这个location一个名字叫primary
						);
					?>
					<?php wp_nav_menu($args);?> <!--WordPress自己的方法--><!--We added these theme locations with this php function, but now we need to add these to WordPress-->
					<!--wp_nav_menu($args)里面的$args是一个array的变量(自定义名称)，用来选择我们需要哪些posts-->
				</nav>
				<!--site navigation导航栏-->
			</header>


			<!--/site header-->
