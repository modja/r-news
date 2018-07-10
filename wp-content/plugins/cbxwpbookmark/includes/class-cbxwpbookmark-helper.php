<?php

/**
 * The file that defines the core plugin class
 *
 * A class definition that includes attributes and functions used across both the
 * public-facing side of the site and the admin area.
 *
 * @link       codeboxr.com
 * @since      1.0.0
 *
 * @package    Cbxwpbookmark
 * @subpackage Cbxwpbookmark/includes
 */

/**
 * The core plugin helper class.
 *
 * This is used to define static methods
 *
 * Also maintains the unique identifier of this plugin as well as the current
 * version of the plugin.
 *
 * @since      1.0.0
 * @package    Cbxwpbookmark
 * @subpackage Cbxwpbookmark/includes
 * @author     CBX Team  <info@codeboxr.com>
 */
class CBXWPBookmarkHelper{
	/**
	 * Get total bookmark for any post id
	 *
	 * @param $object_id
	 *
	 * @return integer
	 */
	public static function getTotalBookmark($object_id = 0){

		global $wpdb;
		$cbxwpbookmrak_table = $wpdb->prefix . 'cbxwpbookmark';

		if($object_id == 0){
			global $post;
			$object_id = $post->ID;
		}

		$query = "SELECT count(DISTINCT user_id) as count FROM $cbxwpbookmrak_table WHERE object_id= %d GROUP BY object_id ";

		$count = $wpdb->get_var($wpdb->prepare($query, $object_id));
		return ($count === null)? 0:  intval($count);

	}


	/**
	 * Get total bookmark count for any category id
	 *
	 * @param $object_id
	 *
	 * @return integer
	 */
	public static function getTotalBookmarkByCategory($cat_id){

		global $wpdb;
		$cbxwpbookmrak_table = $wpdb->prefix . 'cbxwpbookmark';

		if($cat_id == 0){
			return 0;
		}

		//$query = "SELECT count(DISTINCT user_id) as count FROM $cbxwpbookmrak_table WHERE cat_id= %d GROUP BY object_id ";
		//$count = $wpdb->get_var($wpdb->prepare($query, $cat_id));

		$query     = "SELECT count(*) as count from $cbxwpbookmrak_table where cat_id = %d";
		$count     = $wpdb->get_var($wpdb->prepare($query, $cat_id));


		return ($count === null)? 0:  intval($count);

	}




	/**
	 * Is a post bookmarked at least once
	 *
	 * @param int $object_id
	 *
	 * @return book
	 */
	public static function isBookmarked($object_id = 0){
		if($object_id == 0){
			global $post;
			$object_id = $post->ID;
		}

		$total_count = intval(CBXWPBookmarkHelper::getTotalBookmark($object_id));

		return ($total_count > 0)? true: false;
	}

	/**
	 * Is Bookmarked by User
	 *
	 * @param int    $object_id
	 * @param string $user_id
	 *
	 * @return bool
	 */
	public static function isBookmarkedUser($object_id = 0, $user_id = ''){

		if($object_id == 0){
			global $post;
			$object_id = $post->ID;
		}

		//if still object id
		if(intval($object_id) == 0) return false;

		if($user_id == ''){
			$current_user = wp_get_current_user();
			$user_id = $current_user->ID ;
		}

		//if user id not found or guest user
		if(intval($user_id) == 0) return false;

		global $wpdb;
		$cbxwpbookmrak_table = $wpdb->prefix . 'cbxwpbookmark';

		$query = "SELECT count(DISTINCT user_id) as count FROM $cbxwpbookmrak_table WHERE object_id= %d AND user_id = %d GROUP BY object_id ";

		$count = $wpdb->get_var($wpdb->prepare($query, $object_id, $user_id));
		if($count !== null && intval($count) > 0) return true;
		else return false;
	}

	/**
	 * Get bookmark category  information by id
	 *
	 * @param $catid
	 *
	 * @return array|null|object|void
	 */
	public static function getBookmarkCategoryById($catid){

		if(intval($catid) == 0) return array();



		global $wpdb;
		$cbxwpbookmak_category_table = $wpdb->prefix . 'cbxwpbookmarkcat';
		$cbxwpbookmrak_table         = $wpdb->prefix . 'cbxwpbookmark';

		$category = $wpdb->get_row(
			$wpdb->prepare("SELECT *  FROM  $cbxwpbookmak_category_table WHERE id = %d", $catid),
			ARRAY_A
		);

		return ($category === null)? array(): $category;
	}

	/**
	 * Get the user roles for voting purpose
	 *
	 * @param string $useCase
	 *
	 * @return array
	 */
	public static function user_roles($plain = true, $include_guest = false)
	{
		global $wp_roles;

		if (!function_exists('get_editable_roles')) {
			require_once(ABSPATH . '/wp-admin/includes/user.php');

		}

		$userRoles = array();
		if($plain){
			foreach (get_editable_roles() as $role => $roleInfo) {
				$userRoles[$role] = $roleInfo['name'];
			}
			if($include_guest){
				$userRoles['guest'] = esc_html__("Guest", 'cbxwpbookmark');
			}
		}
		else{
			$userRoles_r = array();
			foreach (get_editable_roles() as $role => $roleInfo) {
				$userRoles_r[$role] = $roleInfo['name'];
			}

			$userRoles = array(
				'Registered' => $userRoles_r,
			);

			if($include_guest){
				$userRoles['Anonymous'] =  array(
					'guest' => esc_html__("Guest", 'cbxwpbookmark')
				);
			}
		}

		return apply_filters('cbxwpbookmark_userroles', $userRoles, $plain, $include_guest);
	}

	/**
	 * Get all the registered image sizes along with their dimensions
	 *
	 * @global array $_wp_additional_image_sizes
	 *
	 * @link http://core.trac.wordpress.org/ticket/18947 Reference ticket
	 *
	 * @return array $image_sizes The image sizes
	 */
	public static function get_all_image_sizes() {
		global $_wp_additional_image_sizes;

		$default_image_sizes = get_intermediate_image_sizes();

		foreach ( $default_image_sizes as $size ) {
			$image_sizes[ $size ][ 'width' ] = intval( get_option( "{$size}_size_w" ) );
			$image_sizes[ $size ][ 'height' ] = intval( get_option( "{$size}_size_h" ) );
			$image_sizes[ $size ][ 'crop' ] = get_option( "{$size}_crop" ) ? get_option( "{$size}_crop" ) : false;
		}

		if ( isset( $_wp_additional_image_sizes ) && count( $_wp_additional_image_sizes ) ) {
			$image_sizes = array_merge( $image_sizes, $_wp_additional_image_sizes );
		}

		return $image_sizes;
	}



	/**
	 * Well textual format for available image sizes
	 *
	 * @return array
	 */
	public static function get_all_image_sizes_formatted() {
		$image_sizes  = CBXWPBookmarkHelper::get_all_image_sizes();
		$image_sizes_arr  = array();

		foreach($image_sizes  as $key => $image_size){
			$width 		= (isset($image_size['width']) && intval($image_size['width']) > 0)? intval($image_size['width']): esc_html__('Unknown', 'cbxwpbookmark');
			$height		= (isset($image_size['height']) && intval($image_size['height']) > 0)? intval($image_size['height']): esc_html__('Unknown', 'cbxwpbookmark');
			$proportion = (isset($image_size['crop']) && intval($image_size['crop']) == 1)? esc_html__('Proportional', 'cbxwpbookmark'): '';
			if($proportion != '') $proportion = ' - '.$proportion;
			$image_sizes_arr[$key] = $key.'('.$width.'x'.$height.')'.$proportion;
		}

		return $image_sizes_arr;
	}

	/**
	 * Get all  core tables list
	 */
	public static function getAllDBTablesList(){
		global $wpdb;

		$bookmark = $wpdb->prefix . 'cbxwpbookmark';
		$cattable = $wpdb->prefix . 'cbxwpbookmarkcat';

		$table_names = array();
		$table_names['Bookmark List Table']     = $bookmark;
		$table_names['Bookmark Category Table'] = $cattable;


		return apply_filters('cbxwpbookmark_table_list', $table_names);
	}

	/**
	 * List all global option name with prefix cbxwpbookmark_
	 */
	public static function getAllOptionNames(){
		global  $wpdb;

		$prefix = 'cbxwpbookmark_';
		$option_names = $wpdb->get_results("SELECT * FROM {$wpdb->options} WHERE option_name LIKE '{$prefix}%'", ARRAY_A);

		return apply_filters('cbxwpbookmark_option_names', $option_names);
	}
}