<?php
// woocommerce empty cart link redirect

function wc_empty_cart_redirect_url() {
	return '/wp_mew2';
}
add_filter( 'woocommerce_return_to_shop_redirect', 'wc_empty_cart_redirect_url' );

// woocommerce remove breadcrumb

add_action( 'init', 'jk_remove_wc_breadcrumbs' );
function jk_remove_wc_breadcrumbs() {
    remove_action( 'woocommerce_before_main_content', 'woocommerce_breadcrumb', 20, 0 );
}

// woocommerce hooking
remove_action( 'woocommerce_before_main_content', 'woocommerce_output_content_wrapper', 10);
remove_action( 'woocommerce_after_main_content', 'woocommerce_output_content_wrapper_end', 10);

//add_action('woocommerce_before_main_content', 'my_theme_wrapper_start', 10);
//add_action('woocommerce_after_main_content', 'my_theme_wrapper_end', 10);
//
//function my_theme_wrapper_start() {
//  echo '<div class="content-wrapper">';
//}
//
//function my_theme_wrapper_end() {
//  echo '</div>';
//}

// logo support

add_theme_support( 'custom-logo' );

// Įjungiame post thumbnail

add_theme_support( 'post-thumbnails' );

// Apsibrėžiame stiliaus failus ir skriptus

if( !defined('ASSETS_URL') ) {
	define('ASSETS_URL', get_bloginfo('template_url'));
}

function theme_scripts(){

    if ( !is_admin() ) {

        wp_deregister_script('jquery');
				wp_register_script('jquery', ASSETS_URL . '/assets/scripts/jquery-1.12.4.min.js', false, '1.12.4', true);
                wp_register_script('angular', 'https://ajax.googleapis.com/ajax/libs/angularjs/1.5.7/angular.min.js', false, false, true);
                wp_register_script('root', ASSETS_URL . '/assets/scripts/root.js', false, false, true);

        wp_register_script('js_main', ASSETS_URL . '/assets/scripts/script.js', array('jquery'), '1.0', true);
        wp_enqueue_script('js_main');
    }
}
add_action('wp_enqueue_scripts', 'theme_scripts');


function theme_stylesheets(){

	$styles_path = ASSETS_URL . '/assets/css/less.css';

	if( $styles_path ) {
        wp_register_style('source-sans-pro', 'https://fonts.googleapis.com/css?family=Source+Sans+Pro', false, false, 'all');
        wp_register_style('reem-kufi', 'https://fonts.googleapis.com/css?family=Reem+Kufi', false, false, 'all');
        wp_register_style('lesser', ASSETS_URL . '/assets/css/even-lesser.css', false, false, 'all');
        wp_register_style('font-awesome', ASSETS_URL . '/assets/css/font-awesome.min.css', false, false, 'all');
		wp_register_style('main-css', ASSETS_URL . '/assets/css/less.css', array('lesser', 'source-sans-pro', 'reem-kufi', 'font-awesome'), false, 'all');
		wp_enqueue_style('main-css');
	}
}
add_action('wp_enqueue_scripts', 'theme_stylesheets');

// Apibrėžiame navigacijas


function register_theme_menus() {
   
	register_nav_menus(array( 
        'primary-navigation' => __( 'Primary Navigation' ),
        'secondary-navigation' => __( 'Secondary Navigation' ) 
    ));
}

add_action( 'init', 'register_theme_menus' );

// Apibrėžiame widgets juostas

$sidebars = array( 'Footer Widgets' );

if( isset($sidebars) && !empty($sidebars) ) {

	foreach( $sidebars as $sidebar ) {

		if( empty($sidebar) ) continue;

		$id = sanitize_title($sidebar);

		register_sidebar(array(
			'name' => $sidebar,
			'id' => $id,
			'description' => $sidebar,
			'before_widget' => '<div id="%1$s" class="widget %2$s">',
			'after_widget' => '</div>',
			'before_title' => '<h3 class="widget-title">',
			'after_title' => '</h3>'
		));
	}
}

// Custom posts

$themePostTypes = array(
//'Testimonials' => 'Testimonial'

);

function createPostTypes() {

	global $themePostTypes;
 
	$defaultArgs = array(
		'taxonomies' => array('category'), // uncomment this line to enable custom post type categories
		'public' => true,
		'publicly_queryable' => true,
		'show_ui' => true,
		'query_var' => true,
		#'menu_icon' => '',
		'rewrite' => true,
		'capability_type' => 'post',
		'hierarchical' => true,
		'has_archive' => true, // to enable archive page, disabled to avoid conflicts with page permalinks
		'menu_position' => null,
		'can_export' => true,
		'supports' => array( 'title', 'editor', 'thumbnail', /*'custom-fields', 'author', 'excerpt', 'comments'*/ ),
	);

	foreach( $themePostTypes as $postType => $postTypeSingular ) {

		$myArgs = $defaultArgs;
		$slug = 'vcs-starter' . '-' . sanitize_title( $postType );
		$labels = makePostTypeLabels( $postType, $postTypeSingular );
		$myArgs['labels'] = $labels;
		$myArgs['rewrite'] = array( 'slug' => $slug, 'with_front' => true );
		$functionName = 'postType' . $postType . 'Vars';

		if( function_exists($functionName) ) {
			
			$customVars = call_user_func($functionName);

			if( is_array($customVars) && !empty($customVars) ) {
				$myArgs = array_merge($myArgs, $customVars);
			}
		}

		register_post_type( $postType, $myArgs );

	}
}

if( isset( $themePostTypes ) && !empty( $themePostTypes ) && is_array( $themePostTypes ) ) {
	add_action('init', 'createPostTypes', 0 );
}


function makePostTypeLabels( $name, $nameSingular ) {

	return array(
		'name' => _x($name, 'post type general name'),
		'singular_name' => _x($nameSingular, 'post type singular name'),
		'add_new' => _x('Add New', 'Example item'),
		'add_new_item' => __('Add New '.$nameSingular),
		'edit_item' => __('Edit '.$nameSingular),
		'new_item' => __('New '.$nameSingular),
		'view_item' => __('View '.$nameSingular),
		'search_items' => __('Search '.$name),
		'not_found' => __('Nothing found'),
		'not_found_in_trash' => __('Nothing found in Bin'),
		'parent_item_colon' => ''
	);
}

?>