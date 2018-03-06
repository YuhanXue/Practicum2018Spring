<!--Copy from page.php create a multiple template-->
<!--We want some sort of info box on the right side of the screen-->
<!--easy to update-->
<?php
/* Template Name: Special Layout
*/
get_header();
//Loop through what's in the "Post" in WordPress
if(have_posts()) :  //if we have a post
	//do this
	while(have_posts()) : the_post();
		?>

		<article class="post page">
			<h2><?php the_title();?></h2>

			<!--info-box-->
			<div class="info-box">
				<h4>Disclaimer Title</h4>
				<p>This is an info box This is an info box This is an info box This is an info box This is an info box This is an info box This is an info box </p>
			</div>

			<?php the_content(); ?>
		</article>

	<?php endwhile;
else :
	echo '<p>No content found</p>';
endif;
get_footer();
?>