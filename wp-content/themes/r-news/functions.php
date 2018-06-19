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
	wp_enqueue_style( 'r-news-style', get_stylesheet_uri() );

	wp_enqueue_script( 'r-news-navigation', get_template_directory_uri() . '/js/navigation.js', array(), '20151215', true );

	wp_enqueue_script( 'r-news-skip-link-focus-fix', get_template_directory_uri() . '/js/skip-link-focus-fix.js', array(), '20151215', true );

	if ( is_singular() && comments_open() && get_option( 'thread_comments' ) ) {
		wp_enqueue_script( 'comment-reply' );
	}
}
add_action( 'wp_enqueue_scripts', 'r_news_scripts' );

/**
 * Implement the Custom Header feature.
 */
require get_template_directory() . '/inc/custom-header.php';

/**
 * Custom template tags for this theme.
 */
require get_template_directory() . '/inc/template-tags.php';

/**
 * Functions which enhance the theme by hooking into WordPress.
 */
require get_template_directory() . '/inc/template-functions.php';

/**
 * Customizer additions.
 */
require get_template_directory() . '/inc/customizer.php';

/**
 * Load Jetpack compatibility file.
 */
if ( defined( 'JETPACK__VERSION' ) ) {
	require get_template_directory() . '/inc/jetpack.php';
}


//SANDY START EDIT HERE


//---------------------------------------------
// BUSINESS MENU
//---------------------------------------------
add_action('init', 'create_business');
function create_business() {
      $args = array(
      'singular_label' => __('Business'),
      'public' => true,
      'labels' => array(
             'name' => __( 'Business' ),
             'singular_name' => __( 'Business' ),
             'search_items' =>'Search ' . __('Business')),
      'show_ui' => true,
      'capability_type' => 'post',
      'hierarchical' => true,
      'rewrite' => array('slug' => 'business'),
      'supports' => array('title',
                          'editor',
                          'thumbnail',
                          'page-attributes')
      );

      register_post_type('business', $args);
}




//---------------------------------------------
// ENTERPRENEUR MENU
//---------------------------------------------
add_action('init', 'create_enterpreneur');
function create_enterpreneur() {
      $args = array(
      'singular_label' => __('Enterpreneur'),
      'public' => true,
      'labels' => array(
             'name' => __( 'Enterpreneur' ),
             'singular_name' => __( 'Enterpreneur' ),
             'search_items' =>'Search ' . __('Enterpreneur')),
      'show_ui' => true,
      'capability_type' => 'post',
      'hierarchical' => true,
      'rewrite' => array('slug' => 'enterpreneur'),
      'supports' => array('title',
                          'editor',
                          'thumbnail',
                          'page-attributes')
      );

      register_post_type('enterpreneur', $args);
}


//---------------------------------------------
// MINDSET MENU
//---------------------------------------------
add_action('init', 'create_mindset');
function create_mindset() {
      $args = array(
      'singular_label' => __('Mindset'),
      'public' => true,
      'labels' => array(
             'name' => __( 'Mindset' ),
             'singular_name' => __( 'Mindset' ),
             'search_items' =>'Search ' . __('Mindset')),
      'show_ui' => true,
      'capability_type' => 'post',
      'hierarchical' => true,
      'rewrite' => array('slug' => 'mindset'),
      'supports' => array('title',
                          'editor',
                          'thumbnail',
                          'page-attributes')
      );

      register_post_type('mindset', $args);
}




//---------------------------------------------
// BUSINESS STORY MENU
//---------------------------------------------
add_action('init', 'create_businessstory');
function create_businessstory() {
      $args = array(
      'singular_label' => __('Business Story'),
      'public' => true,
      'labels' => array(
             'name' => __( 'Business Story' ),
             'singular_name' => __( 'Business Story' ),
             'search_items' =>'Search ' . __('Business Story')),
      'show_ui' => true,
      'capability_type' => 'post',
      'hierarchical' => true,
      'rewrite' => array('slug' => 'businessstory'),
      'supports' => array('title',
                          'editor',
                          'thumbnail',
                          'page-attributes')
      );

      register_post_type('businessstory', $args);
}



//---------------------------------------------
// INSPIRATION MENU
//---------------------------------------------
add_action('init', 'create_inspiration');
function create_inspiration() {
      $args = array(
      'singular_label' => __('Inspiration'),
      'public' => true,
      'labels' => array(
             'name' => __( 'Inspiration' ),
             'singular_name' => __( 'Inspiration' ),
             'search_items' =>'Search ' . __('Inspiration')),
      'show_ui' => true,
      'capability_type' => 'post',
      'hierarchical' => true,
      'rewrite' => array('slug' => 'inspiration'),
      'supports' => array('title',
                          'editor',
                          'thumbnail',
                          'page-attributes')
      );

      register_post_type('inspiration', $args);
}



//---------------------------------------------
// TECHNOLOGY MENU
//---------------------------------------------
add_action('init', 'create_technology');
function create_technology() {
      $args = array(
      'singular_label' => __('Technology'),
      'public' => true,
      'labels' => array(
             'name' => __( 'Technology' ),
             'singular_name' => __( 'Technology' ),
             'search_items' =>'Search ' . __('Technology')),
      'show_ui' => true,
      'capability_type' => 'post',
      'hierarchical' => true,
      'rewrite' => array('slug' => 'technology'),
      'supports' => array('title',
                          'editor',
                          'thumbnail',
                          'page-attributes')
      );

      register_post_type('technology', $args);
}



//---------------------------------------------
// INFO MENU
//---------------------------------------------
add_action('init', 'create_info');
function create_info() {
      $args = array(
      'singular_label' => __('Info'),
      'public' => true,
      'labels' => array(
             'name' => __( 'Info' ),
             'singular_name' => __( 'Info' ),
             'search_items' =>'Search ' . __('Info')),
      'show_ui' => true,
      'capability_type' => 'post',
      'hierarchical' => true,
      'rewrite' => array('slug' => 'info'),
      'supports' => array('title',
                          'editor',
                          'thumbnail',
                          'page-attributes')
      );

      register_post_type('info', $args);
}




//---------------------------------------------
// TIPS & TRICK MENU
//---------------------------------------------
add_action('init', 'create_tipsandtrick');
function create_tipsandtrick() {
      $args = array(
      'singular_label' => __('Tips & Trick'),
      'public' => true,
      'labels' => array(
             'name' => __( 'Tips & Trick' ),
             'singular_name' => __( 'Tips & Trick' ),
             'search_items' =>'Search ' . __('Tips & Trick')),
      'show_ui' => true,
      'capability_type' => 'post',
      'hierarchical' => true,
      'rewrite' => array('slug' => 'tipsandtrick'),
      'supports' => array('title',
                          'editor',
                          'thumbnail',
                          'page-attributes')
      );

      register_post_type('tipsandtrick', $args);
}




//---------------------------------------------
// VIDEO MENU
//---------------------------------------------
add_action('init', 'create_video');
function create_video() {
      $args = array(
      'singular_label' => __('Video'),
      'public' => true,
      'labels' => array(
             'name' => __( 'Video' ),
             'singular_name' => __( 'Video' ),
             'search_items' =>'Search ' . __('Video')),
      'show_ui' => true,
      'capability_type' => 'post',
      'hierarchical' => true,
      'rewrite' => array('slug' => 'video'),
      'supports' => array('title',
                          'editor',
                          'thumbnail',
                          'page-attributes')
      );

      register_post_type('video', $args);
}



//---------------------------------------------
// VIDEO MENU
//---------------------------------------------
add_action('init', 'create_infographic');
function create_infographic() {
      $args = array(
      'singular_label' => __('Info Graphic'),
      'public' => true,
      'labels' => array(
             'name' => __( 'Info Graphic' ),
             'singular_name' => __( 'Info Graphic' ),
             'search_items' =>'Search ' . __('Info Graphic')),
      'show_ui' => true,
      'capability_type' => 'post',
      'hierarchical' => true,
      'rewrite' => array('slug' => 'infographic'),
      'supports' => array('title',
                          'editor',
                          'thumbnail',
                          'page-attributes'),
		//'show_in_menu' => 'edit.php'
      );

      register_post_type('infographic', $args);
}


/*
add_action('admin_menu', 'my_admin_menu'); 
function my_admin_menu() { 
    add_submenu_page('edit.php', 'Genre', 'Satu', 'manage_options', 'edit.php?post_type=infographic'); 
}
*/

