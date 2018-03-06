<!--This is the page that controls each page of our site-->
<?php
get_header();
//Loop through what's in the "Post" in WordPress
if(have_posts()) :  //if we have a post
	//do this
	while(have_posts()) : the_post();
		?>

    <article class="post page">
        <h2><?php the_title();?></h2>
        <?php the_content(); ?>
    </article>

	<?php endwhile;
    else :
        echo '<p>No content found</p>';
    endif;
get_footer();
?>