<!--Copy Page.php then modify, customize-->
<?php
get_header();
//Loop through what's in the "Post" in WordPress
if(have_posts()) :  //if we have a post
	//do this
	while(have_posts()) : the_post();
		?>

		<article class="post page">

			<!--Column container-->
			<div class="column-container clearfix">
				<!--title column-->
				<div class="title-column">
					<h2><?php the_title();?></h2>
				</div>
				<!--text column-->
				<div class="text-column">
					<?php the_content(); ?>
				</div><!--/text column-->
			</div><!--/Column container-->

		</article>

	<?php endwhile;
	else :
		echo '<p>No content found</p>';
	endif;
get_footer();
?>