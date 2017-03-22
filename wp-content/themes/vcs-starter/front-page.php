<?php 

get_header();

get_template_part('elements/site-header');

//get_template_part('elements/site-content');
//$section1 = get_field('t_hps_section1');
//$post_Data - get_post( 41 );
//global $post;
//setup_postdata($post);
?>
<article id="products">
  <div class="container">

    <?php  echo do_shortcode( "[all_products]" );
    get_template_part('elements/contact-form');?>

  </div>
</article>


<?php get_template_part('elements/site-footer');

get_footer(); ?>

