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






//disable boxes via javascript
add_action( "admin_footer", function(){
    global $pagenow;
    $isPrintDisplayJSScript = false;
    
	if ( 'post.php' === $pagenow && !empty($_GET['post']) ){
    
		if('leadmagnet' 	=== get_post_type( $_GET['post'] ) ||
		   'relatedpromo' 	=== get_post_type( $_GET['post'] )){
			$isPrintDisplayJSScript = true;		      
	     	}
	
	}else if('post-new.php' === $pagenow && !empty($_GET['post_type'])){
	
		if('leadmagnet'	=== $_GET['post_type'] || 'relatedpromo' === $_GET['post_type'] ){
			$isPrintDisplayJSScript = true;
			      
		}
	}


	if($isPrintDisplayJSScript){
 		echo '<script type="text/javascript">
			var $ = jQuery;
			jQuery(function($) {
		     		$("#heateor_ffc_meta").hide();
				$("#heateor_sss_meta").hide();
				$("#simpletags-settings").hide();
			 });
			</script>';  
	}

});






//Sandy : added script for js related on google
function add_async_attribute($tag, $handle) {
    if ( 'r-news-js-google-analytics' !== $handle )
        return $tag;
    return str_replace( ' src', ' async defer src', $tag );
}
add_filter('script_loader_tag', 'add_async_attribute', 10, 2);




//Sandy : Add input type for time
function layers_rnews_add_meta_box() {
  //global $wp;
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
 



 

add_action('admin_menu', 'my_menu_pages');
function my_menu_pages(){
    add_menu_page('Social Media', 'Social Media', 'manage_options', 'social-media-url', function(){
		
			require(dirname(__FILE__).'/admin/socialmedia.php');
	});

	
}





//custom HTML editor related on Leads magnet
add_action( 'admin_head', 'tinymce_lead_magnet_button' );
function tinymce_lead_magnet_button() {
	global $pagenow;
    
     $isPrintDisplayJSScript 		= false;
     $isDisplayButtonForLeadMagnet 	= false;
     $isDisplayButtonLeadMagnetForPost  = false;
	

     if ( 'post.php' === $pagenow && isset($_GET['post']))
    {    

	
	if('leadmagnet' !== get_post_type( $_GET['post'] ) ){
	 	$isDisplayButtonLeadMagnetForPost = true;
	}
	else if('leadmagnet' === get_post_type( $_GET['post'] ) || 'relatedpromo' === get_post_type($_GET['post'])){
 		$isPrintDisplayJSScript = true;
		$isDisplayButtonForLeadMagnet = true;
	}    
     }else if ( 'post-new.php' === $pagenow && !empty($_GET['post_type']) && $_GET['post_type']=='leadmagnet'){
	 	$isDisplayButtonForLeadMagnet = true;	  
     
    }else if ( 'post-new.php' === $pagenow && empty($_GET['post_type'])){
	 $isDisplayButtonLeadMagnetForPost = true;	  
    }


    if($isDisplayButtonLeadMagnetForPost){
	if ( current_user_can( 'edit_posts' ) && current_user_can( 'edit_pages' ) ) {
		   	  add_filter( 'mce_buttons', 'register_tinymce_lead_magnet_button' );
			  add_filter( 'mce_external_plugins', 'add_tinymce_lead_magnet_button' );
			}
    }

    if($isDisplayButtonForLeadMagnet){
		if ( current_user_can( 'edit_posts' ) && current_user_can( 'edit_pages' ) ) {
	   	  add_filter( 'mce_buttons', 'register_tinymce_modal_button' );
		  add_filter( 'mce_external_plugins', 'add_tinymce_modal_button' );
		}
	
    }

    if($isPrintDisplayJSScript)
 	  wp_enqueue_script( 'r-news-js-11', '//code.jquery.com/jquery-1.11.0.min.js', array(), '20180628', true );
    
}

//button for modal
function register_tinymce_modal_button( $buttons ) {
      array_push( $buttons, 'modal_button' );
     return $buttons;
}

function add_tinymce_modal_button( $plugin_array ) {
     $plugin_array['modal_button'] = sprintf("%s/admin/include/editor_plugin.js.2.php",get_template_directory_uri()) ;
     return $plugin_array;
}


//lead magnet combobox
function register_tinymce_lead_magnet_button( $buttons ) {
      array_push( $buttons, 'lead_magnet_button' );
     return $buttons;
}

function add_tinymce_lead_magnet_button( $plugin_array ) {
     $plugin_array['lead_magnet_button'] = sprintf("%s/admin/include/editor_plugin.js.php",get_template_directory_uri()) ;
     return $plugin_array;
}


 
//---------------------------------------------
// Lead Magnet
//---------------------------------------------

add_action('init', 'create_leadmagnet');
function create_leadmagnet() {
      $args = array(
      'singular_label' => __('Lead Magnet'),
      'public' => true,
      'labels' => array(
             'name' => __( 'Lead Magnet' ),
             'singular_name' => __( 'Lead Magnet' ),
             'search_items' =>'Search ' . __('Lead Magnet')),
      'show_ui' => true,
      //'capability_type' => 'post',
      'taxonomies'  => array( 'category' ),
      'hierarchical' => true,
      'rewrite' => array('slug' => 'leadmagnet'),
      'supports' => array('title',
			  'editor',
			  'thumbnail'
  			  )
      );
	
       register_post_type('leadmagnet', $args);
}



//Sandy : Add input modal for related promo
function layers_leadmagnet_add_meta_box() {
  //global $wp;
  $screens = array('leadmagnet');
  foreach ( $screens as $screen ) {

	  add_meta_box(
		'layers_leadmagnet_sectionid',
		__( 'Modal', 'layerswp' ),
		'layers_leadmagnet_callback',
		$screen,
			'normal',
			'high'
	   );
  	}

}

add_action( 'add_meta_boxes', 'layers_leadmagnet_add_meta_box' );

function layers_leadmagnet_callback( $post ) {

// Add an nonce field so we can check for it later.
wp_nonce_field( 'layers_leadmagnet_meta_box', 'layers_leadmagnet_meta_box_nonce' );
$modal = get_post_meta( $post->ID, 'modal', true );
echo sprintf("<textarea name='modal' rows='10' cols='95'>%s</textarea>",$modal);
 
}


function layers_leadmagnet_save_meta_box_data( $post_id ) {
	// Checks save status
	$is_autosave = wp_is_post_autosave( $post_id );
	$is_revision = wp_is_post_revision( $post_id );
	$is_valid_nonce = ( isset( $_POST[ 'modal' ] ) && wp_verify_nonce( $_POST[ 'modal' ], basename( __FILE__ ) ) ) ? 'true' : 'false';
	
	// Exits script depending on save status
	if ( $is_autosave || $is_revision || !$is_valid_nonce ) {
	return;
	}
	
	// Checks for input and sanitizes/saves if needed
	if( isset( $_POST[ 'modal' ] ) ) {
		update_post_meta( $post_id, 'modal',  $_POST[ 'modal' ]  );
	}
}
add_action( 'save_post', 'layers_leadmagnet_save_meta_box_data' );
 











//replacing the content for leadmagnet
function new_content($content) {
    
   	if(strstr($content,"leadmagnet id=")){
		$content = str_replace('[','', $content);
		$content = str_replace(']','', $content);
	
		$content_arr = explode("leadmagnet id=",$content);
		$the_id 	 = (int)$content_arr[1];
		$post   	 = get_post($the_id);
		$content = str_replace('leadmagnet id=' . $the_id,$post->post_content, $content);
		
		if(strstr($content,"[modal]") && strstr($content,"[/modal]")){
			$content = replaceTagModal($the_id,$content);
			
		}

    	}
    	return $content;
}

add_filter('the_content','new_content');



function replaceTagModal($post_id,$content){
	//add wrapper
	$modal = sprintf("<div class='modal' id='modal-%d'>%s</div>",$post_id,get_post_meta( $post_id, 'modal', true ));
	$content = str_replace('[modal]',sprintf('<a href="#" class="modal-button" id="a-%d">',$post_id), $content);	
	$content = str_replace('[/modal]',sprintf("</a>%s",$modal), $content);	
 	
	$image = wp_get_attachment_image_src( get_post_thumbnail_id( $post_id ), 'single-post-thumbnail' ); 
 
	if($image) 
        	$content = sprintf('<article class="tile is-child box is-green post-card image-leads-magnet" style="background-image: url(%s)">%s</article>',$image[0],$content);
	else
		$content = sprintf('<article class="tile is-child box is-green post-card image-leads-magnet" style="">%s</article>',$content);
	
	return $content;
}

 









//---------------------------------------------
// Related Promo
//---------------------------------------------

add_action('init', 'create_relatedpromo');
function create_relatedpromo() {
      $args = array(
      'singular_label' => __('Promo Banner / ads'),
      'public' => true,
      'labels' => array(
             'name' => __( 'Promo Banner / ads' ),
             'singular_name' => __( 'Promo Banner / ads' ),
             'search_items' =>'Search ' . __('Promo Banner / ads')),
      'show_ui' => true,
      //'capability_type' => 'post',
      'taxonomies'  => array( 'category' ),
      'hierarchical' => true,
      'rewrite' => array('slug' => 'relatedpromo'),
      'supports' => array('title',
			  'thumbnail'
  			  )
      );
	
       register_post_type('relatedpromo', $args);
}

// rearrange featured image
add_action('do_meta_boxes', 'rearrange_featuredimage_relatedpromo');
function rearrange_featuredimage_relatedpromo(){
  remove_meta_box( 'postimagediv', 'relatedpromo', 'side' );
  add_meta_box('postimagediv', __('Featured Image'), 'post_thumbnail_meta_box', 'relatedpromo', 'normal', 'high');
  add_meta_box( 'layers_relatedpromo_sectionid', __( 'URL' ), 'layers_relatedpromo_callback', "relatedpromo", 'normal', 'high' );
             
}

 
function layers_relatedpromo_callback( $post ) {

// Add an nonce field so we can check for it later.
wp_nonce_field( 'layers_relatedpromo_meta_box', 'layers_relatedpromo_meta_box_nonce' );
$relatedpromourl = get_post_meta( $post->ID, 'relatedpromourl', true );
echo sprintf("<input type='text' name='relatedpromourl' value='%s' size='40'>",$relatedpromourl);
 
}


function layers_relatedpromo_save_meta_box_data( $post_id ) {
	// Checks save status
	$is_autosave = wp_is_post_autosave( $post_id );
	$is_revision = wp_is_post_revision( $post_id );
	$is_valid_nonce = ( isset( $_POST[ 'relatedpromourl' ] ) && wp_verify_nonce( $_POST[ 'relatedpromourl' ], basename( __FILE__ ) ) ) ? 'true' : 'false';
	
	// Exits script depending on save status
	if ( $is_autosave || $is_revision || !$is_valid_nonce ) {
	return;
	}
	
	// Checks for input and sanitizes/saves if needed
	if( isset( $_POST[ 'relatedpromourl' ] ) ) {
	
		if (!preg_match("/\b(?:(?:https?|ftp):\/\/|www\.)[-a-z0-9+&@#\/%?=~_|!:,.;]*[-a-z0-9+&@#\/%=~_|]/i",$_POST[ 'relatedpromourl' ]))
  			wp_die( 'Invalid related promo URL!' );
		
 		update_post_meta( $post_id, 'relatedpromourl', sanitize_text_field( $_POST[ 'relatedpromourl' ] ) );
			
	}
}
add_action( 'save_post', 'layers_relatedpromo_save_meta_box_data' );
 

   




//modified search
add_action('pre_get_posts', 'modified_search');
function modified_search($query){
    global $wp_query;
    if($query->is_search){
        global $wpdb;
        $original_query = get_search_query();
        //$modified_query = preg_replace("/(s|S)/", "$", $original_query);
        $new_query = "
            SELECT $wpdb->posts.ID FROM $wpdb->posts
            WHERE $wpdb->posts.post_status = 'publish'
	    AND $wpdb->posts.post_type != 'leadmagnet'
	    AND $wpdb->posts.post_type != 'relatedpromo'
            AND (($wpdb->posts.post_title LIKE '%$original_query%') OR ($wpdb->posts.post_content LIKE '%$original_query%'))

            ORDER BY $wpdb->posts.post_date DESC
            LIMIT 0, 10
        ";
	$results = $wpdb->get_results($new_query);
        $post_ids = array();
        foreach ($results as $post_id){
            $post_ids[] = $post_id->ID;
        }
        $query->set('post__in', $post_ids);
    }
}

//FB count comment
 function full_comment_count() {
        global $post;
        $url = get_permalink($post->ID);
	$access_token = "EAAAARg7pTloBANWh7MAFNTnQwRHHGw6iZCuLmcKjBEJabynL7Pyb6NeZCFo3C9gF2qxYT0Q36bW74MDlFTSgJ1xOsbGdisQcLDWV9bE1fbU9J4ZBXz2va8mVPahGIu6rvUJeE4JHPCVI57oz7QWZBiwMAQt2hkGKpFYRvurd3tBS685ogi95eF3MYoE28kQZD";

	$completeURL = sprintf('https://graph.facebook.com/?ids=%s&access_token=%s', rawurlencode($url),$access_token);
 #echo $completeURL;
	$ch = curl_init();
	curl_setopt($ch, CURLOPT_URL, $completeURL);
	curl_setopt($ch, CURLOPT_HTTPGET, TRUE);
	curl_setopt($ch, CURLOPT_RETURNTRANSFER, TRUE);
	$result = curl_exec($ch);
	curl_close($ch);

  
        $json = json_decode($result);
	if(!empty($json->error))
		return 0;

	$count = $json->$url->share->comment_count;
	return $count;
	/*
	$wpCount = get_comments_number();
	$realCount = $count + $wpCount;
	if ($realCount == 0 || !isset($realCount)) {
		    $realCount = 0;
	}
        return $realCount;*/
}



 

?>
