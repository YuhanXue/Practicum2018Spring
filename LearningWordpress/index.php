<!--This is the page that controls our homepage, the output-->
    <?php
        get_header();
        //Loop through what's in the "Post" in WordPress
        if(have_posts()) :  //if we have a post
            //do this
            while(have_posts()) : the_post();
    ?>
    <article class="post">
        <h2><a href="<?php the_permalink();?>"><?php the_title();?></a></h2>
    </article>

    <?php the_content(); ?>


    <?php endwhile;
        else :
            echo '<p>No content found</p>';
        endif;
            get_footer();
    ?>