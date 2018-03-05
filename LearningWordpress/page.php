<!--This is the page that controls each page of our site-->
<?php
get_header();

if(have_posts()) :  
	//do this
	while(have_posts()) : the_post();
		?>
		<article class="post page">
			<h2><?php the_title();?></h2>
		</article>

		<?php the_content(); ?>


	<?php endwhile;
else :
	echo '<p>No content found</p>';
endif;
get_footer();
?>
