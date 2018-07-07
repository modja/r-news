<?php
/**
 * r-news functions and definitions
 *
 * @link https://developer.wordpress.org/themes/basics/theme-functions/
 *
 * @package r-news
 */

if ( ! function_exists( 'r_news_setup' ) ) :
	/**
	 * Sets up theme defaults and registers support for various WordPress features.
	 *
	 * Note that this function is hooked into the after_setup_theme hook, which
	 * runs before the init hook. The init hook is too late for some features, such
	 * as indicating support for post thumbnails.
	 */
	function r_news_setup() {
		/*
		 * Make theme available for translation.
		 * Translations can be filed in the /languages/ directory.
		 * If you're building a theme based on r-news, use a find and replace
		 * to change 'r-news' to the name of your theme in all the template files.
		 */
		load_theme_textdomain( 'r-news', get_template_directory() . '/languages' );

		// Add default posts and comments RSS feed links to head.
		add_theme_support( 'automatic-feed-links' );

		/*
		 * Let WordPress manage the document title.
		 * By adding theme support, we declare that this theme does not use a
		 * hard-coded <title> tag in the document head, and expect WordPress to
		 * provide it for us.
		 */
		add_theme_support( 'title-tag' );

		/*
		 * Enable support for Post Thumbnails on posts and pages.
		 *
		 * @link https://developer.wordpress.org/themes/functionality/featured-images-post-thumbnails/
		 */
		add_theme_support( 'post-thumbnails' );

		// This theme uses wp_nav_menu() in one location.
		register_nav_menus( array(
			'menu-1' => esc_html__( 'Primary', 'r-news' ),
		) );

		/*
		 * Switch default core markup for search form, comment form, and comments
		 * to output valid HTML5.
		 */
		add_theme_support( 'html5', array(
			'search-form',
			'comment-form',
			'comment-list',
			'gallery',
			'caption',
		) );

		// Set up the WordPress core custom background feature.
		add_theme_support( 'custom-background', apply_filters( 'r_news_custom_background_args', array(
			'default-color' => 'ffffff',
			'default-image' => '',
		) ) );

		// Add theme support for selective refresh for widgets.
		add_theme_support( 'customize-selective-refresh-widgets' );

		/**
		 * Add support for core custom logo.
		 *
		 * @link https://codex.wordpress.org/Theme_Logo
		 */
		add_theme_support( 'custom-logo', array(
			'height'      => 250,
			'width'       => 250,
			'flex-width'  => true,
			'flex-height' => true,
		) );
	}
endif;
add_action( 'after_setup_theme', 'r_news_setup' );

/**
 * Set the content width in pixels, based on the theme's design and stylesheet.
 *
 * Priority 0 to make it available to lower priority callbacks.
 *
 * @global int $content_width
 */
function r_news_content_width() {
	// This variable is intended to be overruled from themes.
	// Open WPCS issue: {@link https://github.com/WordPress-Coding-Standards/WordPress-Coding-Standards/issues/1043}.
	// phpcs:ignore WordPress.NamingConventions.PrefixAllGlobals.NonPrefixedVariableFound
	$GLOBALS['content_width'] = apply_filters( 'r_news_content_width', 640 );
}
add_action( 'after_setup_theme', 'r_news_content_width', 0 );

/**
 * Register widget area.
 *
 * @link https://developer.wordpress.org/themes/functionality/sidebars/#registering-a-sidebar
 */
function r_news_widgets_init() {
	register_sidebar( array(
		'name'          => esc_html__( 'Sidebar', 'r-news' ),
		'id'            => 'sidebar-1',
		'description'   => esc_html__( 'Add widgets here.', 'r-news' ),
		'before_widget' => '<section id="%1$s" class="widget %2$s">',
		'after_widget'  => '</section>',
		'before_title'  => '<h2 class="widget-title">',
		'after_title'   => '</h2>',
	) );
}
add_action( 'widgets_init', 'r_news_widgets_init' );

/**
 * Enqueue scripts and styles.
 */
function r_news_scripts() {
        
        //wp_enqueue_style( 'r-news-style', get_template_directory_uri() . '/css/style.css' );
        wp_enqueue_style( 'r-news-style', get_stylesheet_uri() );
	wp_enqueue_style( 'r-news-style-normalize', get_template_directory_uri() . '/css/normalize.css' );
        wp_enqueue_style( 'r-news-font','https://fonts.googleapis.com/css?family=Raleway:300,400,500,600,700,800,900|Archivo+Black|Montserrat:300,400,500,600,700,800,900' );
        wp_enqueue_script( 'r-news-js-0', get_template_directory_uri() . '/js/vendor/modernizr-3.6.0.min.js', array(), '20180628', true );
        wp_enqueue_script( 'r-news-js-1', '//code.jquery.com/jquery-1.11.0.min.js', array(), '20180628', true );
        wp_enqueue_script( 'r-news-js-2', '//code.jquery.com/jquery-migrate-1.2.1.min.js', array(), '20180628', true );
        wp_enqueue_script( 'r-news-js-3', get_template_directory_uri() . '/js/plugins.js', array(), '20180628', true );
        wp_enqueue_script( 'r-news-js-4', get_template_directory_uri() . '/js/main.js', array(), '20180628', true );
        wp_enqueue_script( 'r-news-js-google-analytics',  'https://www.google-analytics.com/analytics.js', array(), '20180628', true );
           
	 
}
add_action( 'wp_enqueue_scripts', 'r_news_scripts' );

/**
 * Implement the Custom Header feature.
 */
//require get_template_directory() . '/inc/custom-header.php';

/**
 * Custom template tags for this theme.
 */
//require get_template_directory() . '/inc/template-tags.php';

/**
 * Functions which enhance the theme by hooking into WordPress.
 */
//require get_template_directory() . '/inc/template-functions.php';

/**
 * Customizer additions.
 */
//require get_template_directory() . '/inc/customizer.php';

/**
 * Load Jetpack compatibility file.
 */
if ( defined( 'JETPACK__VERSION' ) ) {
//	require get_template_directory() . '/inc/jetpack.php';
}









//Sandy : added script for js related on google
function add_async_attribute($tag, $handle) {
    if ( 'r-news-js-google-analytics' !== $handle )
        return $tag;
    return str_replace( ' src', ' async defer src', $tag );
}
add_filter('script_loader_tag', 'add_async_attribute', 10, 2);




//Sandy : Add input type for time
function layers_rnews_add_meta_box() {

  $screens = array('post');
  foreach ( $screens as $screen ) {

	  add_meta_box(
		'layers_rnews_sectionid',
		__( 'Read Time', 'layerswp' ),
		'layers_rnews_callback',
		$screen,
			'normal',
			'high'
	   );
  	}
}

add_action( 'add_meta_boxes', 'layers_rnews_add_meta_box' );


function layers_rnews_callback( $post ) {
 
// Add an nonce field so we can check for it later.
wp_nonce_field( 'layers_rnews_meta_box', 'layers_rnews_meta_box_nonce' );
$timeforread = get_post_meta( $post->ID, 'timeforread', true );
echo sprintf("<input type='text' name='timeforread' value='%s'>",$timeforread);
 
}


function layers_rnews_save_meta_box_data( $post_id ) {
	// Checks save status
	$is_autosave = wp_is_post_autosave( $post_id );
	$is_revision = wp_is_post_revision( $post_id );
	$is_valid_nonce = ( isset( $_POST[ 'layers_rnews_meta_box' ] ) && wp_verify_nonce( $_POST[ 'layers_rnews_meta_box' ], basename( __FILE__ ) ) ) ? 'true' : 'false';
	
	// Exits script depending on save status
	if ( $is_autosave || $is_revision || !$is_valid_nonce ) {
	return;
	}
	
	// Checks for input and sanitizes/saves if needed
	if( isset( $_POST[ 'timeforread' ] ) ) {
	update_post_meta( $post_id, 'timeforread', sanitize_text_field( $_POST[ 'timeforread' ] ) );
	}
}
add_action( 'save_post', 'layers_rnews_save_meta_box_data' );
















//---------------------------------------------
// SOCIAL MEDIA
//---------------------------------------------
/**
add_action('init', 'create_socialmedia');
function create_socialmedia() {
      $args = array(
      'singular_label' => __('Social Media'),
      'public' => true,
      'labels' => array(
             'name' => __( 'Social Media' ),
             'singular_name' => __( 'Social Media' ),
             'search_items' =>'Search ' . __('Social Media')),
      'show_ui' => true,
      'capability_type' => 'post',
      'hierarchical' => true,
      'rewrite' => array('slug' => 'socialmedia'),
      'supports' => array('title',
                          'editor',
                          'thumbnail',
                          'page-attributes')
      );
      register_post_type('socialmedia', $args);
}

add_action('init', 'init_remove_support',100);
function init_remove_support(){
    $post_type = 'socialmedia';
    remove_post_type_support( $post_type, 'editor');
}

function layers_social_media_add_meta_box() {

  $screens = array('socialmedia');
  foreach ( $screens as $screen ) {

	  add_meta_box(
		'layers_rnews_sectionid',
		__( 'Social URL', 'layerswp' ),
		function( $post ) {
 
 			wp_nonce_field( 'layers_socialmedia_meta_box', 'layers_socialmedia_meta_box_nonce' );
			$socialmediaurl = get_post_meta( $post->ID, 'socialmediaurl', true );
			echo sprintf("<input type='text' name='socialmediaurl' value='%s'>",$socialmediaurl);
			 
			}, $screen,
			'normal',
			'high'
	   );
  	}
}

add_action( 'add_meta_boxes', 'layers_social_media_add_meta_box' );

function layers_socialmedia_save_meta_box_data( $post_id ) {
 	$is_autosave = wp_is_post_autosave( $post_id );
	$is_revision = wp_is_post_revision( $post_id );
	$is_valid_nonce = ( isset( $_POST[ 'socialmediaurl' ] ) && wp_verify_nonce( $_POST[ 'socialmediaurl' ], basename( __FILE__ ) ) ) ? 'true' : 'false';
	
 	if ( $is_autosave || $is_revision || !$is_valid_nonce ) {
	return;
	}
	
 	if( isset( $_POST[ 'socialmediaurl' ] ) ) {
	update_post_meta( $post_id, 'socialmediaurl', sanitize_text_field( $_POST[ 'socialmediaurl' ] ) );
	}
}
add_action( 'save_post', 'layers_socialmedia_save_meta_box_data' );
**/


add_action('admin_menu', 'my_menu_pages');
function my_menu_pages(){
    add_menu_page('Social Media', 'Social Media', 'manage_options', 'social-media-url', function(){
		
			require(dirname(__FILE__).'/admin/socialmedia.php');
	});
}


?>
