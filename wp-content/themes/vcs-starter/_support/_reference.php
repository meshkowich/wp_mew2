<?php

// Header
language_attributes(); // Išveda html kalbą
bloginfo('charset'); // Išveda teksto koduotę
wp_title( '|', true, 'right' ); // Išveda dinamišką title
echo get_template_directory_uri(); // Išveda template path
wp_head(); // Skriptam, deklaracijom išvesti

// Footer
wp_footer(); // Skriptam, deklaracijom išvesti

// ACF
$logo = get_field('vcs_h_logo'); // Get ACF field data

// Statements
if($logo): else: endif;

// Other
home_url(); // Home page url
$logo['url']; // Data from array

// Translations
_e('Menu','vcs'); // Without echo
echo __('Menu','vcs'); // With echo

// Elements
get_template_part('elements/site-header'); // Get element part

// Debug
var_dump($logo);exit;

// Funkcija išsikviesti apibrėžtą menu
wp_nav_menu();

// Funkcija išsikviesti widgets juostą
if (function_exists('dynamic_sidebar') && dynamic_sidebar('Footer Widgets'))

?>