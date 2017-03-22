
<div class="main-wrapper">
  <div class="content-wrapper">
    
    <header>
    <div class="container">
      <a href=<?php echo home_url();?>> <div class="logo-container">
        <img src="<?php 
  $custom_logo_id = get_theme_mod( 'custom_logo' );
  $logo = wp_get_attachment_image_src( $custom_logo_id , 'full' );
  if ( has_custom_logo() ) {
      echo esc_url( $logo[0] );
  } else {
      echo '<h1>'. esc_attr( get_bloginfo( 'name' ) ) .'</h1>';
  }?>" class="logo">
        <div class="shadow">
        </div>
      </div></a>
    </div>
    </header>
    <div class ="burger-container-space">
    </div>
    <div class="burger-container">
      <div class="burger">
        <div class="bar1"></div>
        <div class="bar2"></div>
        <div class="bar3"></div>
      </div>
      <div class="menu closed">
        <?php wp_nav_menu(array(
        'menu' => 'primary_navigation',
        'theme_location' => 'primary-navigation',
        'menu_class' => ''));?>
      </div>      
      </div>

