<?php

/* Template Name: Cart */

get_header();

get_template_part('elements/site-header');?>

<article>

    <?php
      while ( have_posts() ) : the_post();				
        the_content();
      endwhile;
    ?>
</article>        

<?php
get_template_part('elements/site-footer');

get_footer(); ?>