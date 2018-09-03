<?php
/*
Plugin Name: WP Category Sort
Plugin URI: http://kyel.co
Description: The WP Category Sort plugin allows you to easily reorder your categories the way you want via drag and drop. 
Version: 1.0
Author: Lovin Nagi
Author URI: https://profiles.wordpress.org/lovinnagi
Author Email: lovinnagi23@gmail.com
Text Domain: wpCatSort
Domain Path: /languages/ 
License:      GPL v2 or later
License URI: https://www.gnu.org/licenses/gpl-2.0.html
*/


// disable direct file access
if ( ! defined( 'ABSPATH' ) ) {
	
	exit;
	
}


// Define PATH and URL.
define('wpCatSortPath',    plugin_dir_path(__FILE__));
define('wpCatSortUrl',     plugins_url('', __FILE__));

// Activation hook
register_activation_hook(__FILE__, 'wpCatSort_activated');

// Actions 
add_action( 'plugins_loaded', 'wpCatSort_load_textdomain' );
add_action( 'admin_enqueue_scripts', 'wpCatSort_admin_scripts');
add_action( 'admin_print_styles', 'wpCatSort_admin_styles');
add_action( 'wp_ajax_update_wpCatSort', 'wpCatSort_saveAjax' );


// Filters
add_filter('get_terms_orderby', 'wpCatSortFilterApply', 10, 2);


function wpCatSort_activated() {

            global $wpdb;
            
            //check if the menu_order column exists;
            $query = "SHOW COLUMNS FROM $wpdb->terms LIKE 'term_order'";
            $result = $wpdb->query($query);
            
            if ($result == 0)
                {
                    $query = "ALTER TABLE $wpdb->terms ADD `term_order` INT( 4 ) NULL DEFAULT '0'";
                    $result = $wpdb->query($query); 
                }

}



// load text domain
function wpCatSort_load_textdomain() {
	
	load_plugin_textdomain( 'wpCatSort', false, plugin_dir_path( __FILE__ ) . 'languages/' );
	
}



// include plugin dependencies: admin only
if ( is_admin() ) {
	
	require_once wpCatSortPath . 'admin/admin-menu.php';
	require_once wpCatSortPath . 'admin/admin-interface.php';
	require_once wpCatSortPath . 'admin/wpCat_walker.php';
	require_once wpCatSortPath . 'admin/wpCat-ajax.php';
	
}


// Include JS
function wpCatSort_admin_scripts() {
            
            wp_enqueue_script('jquery');
            
            wp_enqueue_script('jquery-ui-sortable');
            
            $serializeJsFile = wpCatSortUrl . '/admin/js/serialize.js';
            $myJsFile = wpCatSortUrl . '/admin/js/wpCatSort-script.js';

            wp_register_script('serialize.js', $serializeJsFile);
            wp_enqueue_script( 'serialize.js');

            wp_register_script('wpCatSort-script.js', $myJsFile);
            wp_enqueue_script( 'wpCatSort-script.js');

               
}
        
// Include Styles
function wpCatSort_admin_styles() {

           $myCssFile = wpCatSortUrl . '/admin/css/wpCatSort-style.css';
           wp_register_style('wpCatSort-style.css', $myCssFile);
           wp_enqueue_style( 'wpCatSort-style.css');
} 

// @return term_order               
function wpCatSortFilterApply($orderby, $args) {

    return 't.term_order';

 }