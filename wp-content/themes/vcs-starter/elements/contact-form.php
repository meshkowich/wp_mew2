<?php
$post_data = get_post( 91 );
global $post;
$post = $post_data;
setup_postdata($post);?>

<div class="contact-form" id="contact-form">
  <h2><?php the_title();?></h2>
  <?php the_content();?>
  <?php echo do_shortcode('[contact-form-7 id="57" title="Contact form 1"]');?>

</div>

<?php wp_reset_postdata();?>