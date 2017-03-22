<?php

/* Template Name: Checkout */

get_header();

get_template_part('elements/site-header');?>

<article>
  <div class="container">
    <?php
      while ( have_posts() ) : the_post();				
        the_content();
      endwhile;
    ?>
  </div>  
</article>        

<?php
get_template_part('elements/site-footer');

get_footer(); ?>