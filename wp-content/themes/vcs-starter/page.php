<?php 

get_header();

get_template_part('elements/site-header');



			while ( have_posts() ) : the_post();

				
the_content();



			endwhile; 
			




get_template_part('elements/site-footer');

get_footer(); ?>