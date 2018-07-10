<?php
	/**
	 * The plugin bootstrap file
	 *
	 * This file is read by WordPress to generate the plugin information in the plugin
	 * admin area. This file also includes all of the dependencies used by the plugin,
	 * registers the activation and deactivation functions, and defines a function
	 * that starts the plugin.
	 *
	 * @link              codeboxr.com
	 * @since             1.0.0
	 * @package           Cbxwpbookmark
	 *
	 * @wordpress-plugin
	 * Plugin Name:       CBX Bookmark
	 * Plugin URI:        http://codeboxr.com/product/cbx-wordpress-bookmark
	 * Description:       Youtube like bookmark for WordPress, create your own private or public list of favorite posts
	 * Version:           1.4.4
	 * Author:            Codeboxr Team
	 * Author URI:        http://codeboxr.com
	 * License:           GPL-2.0+
	 * License URI:       http://www.gnu.org/licenses/gpl-2.0.txt
	 * Text Domain:       cbxwpbookmark
	 * Domain Path:       /languages
	 */

// If this file is called directly, abort.
	if (!defined('WPINC')) {
		die;
	}


	defined('CBXWPBOOKMARK_PLUGIN_NAME') or define('CBXWPBOOKMARK_PLUGIN_NAME', 'cbxwpbookmark');
	defined('CBXWPBOOKMARK_PLUGIN_VERSION') or define('CBXWPBOOKMARK_PLUGIN_VERSION', '1.4.4');
	defined('CBXWPBOOKMARK_BASE_NAME') or define('CBXWPBOOKMARK_BASE_NAME', plugin_basename(__FILE__));
	defined('CBXWPBOOKMARK_ROOT_PATH') or define('CBXWPBOOKMARK_ROOT_PATH', plugin_dir_path(__FILE__));
	defined('CBXWPBOOKMARK_ROOT_URL') or define('CBXWPBOOKMARK_ROOT_URL', plugin_dir_url(__FILE__));


	/**
	 * The code that runs during plugin activation.
	 * This action is documented in includes/class-cbxwpbookmark-activator.php
	 */
	function activate_cbxwpbookmark(){

		require_once plugin_dir_path(__FILE__) . 'includes/class-cbxwpbookmark-activator.php';
		Cbxwpbookmark_Activator::activate(); //db table creates
		Cbxwpbookmark_Activator::cbxbookmark_create_pages(); //create the shortcode page

	}

	/**
	 * The code that runs during plugin deactivation.
	 * This action is documented in includes/class-cbxwpbookmark-deactivator.php
	 */
	function deactivate_cbxwpbookmark(){
		require_once plugin_dir_path(__FILE__) . 'includes/class-cbxwpbookmark-deactivator.php';
		Cbxwpbookmark_Deactivator::deactivate();
	}

	/**
	 * The code that runs during plugin uninstall.
	 * This action is documented in includes/class-cbxwpbookmark-uninstall.php
	 */
	function uninstall_cbxwpbookmark(){
		require_once plugin_dir_path(__FILE__) . 'includes/class-cbxwpbookmark-uninstall.php';
		CBXWPBookmark_Uninstall::uninstall();
	}

	register_activation_hook(__FILE__, 'activate_cbxwpbookmark');
	register_deactivation_hook(__FILE__, 'deactivate_cbxwpbookmark');
	register_uninstall_hook(__FILE__, 'uninstall_cbxwpbookmark');

	/**
	 * The core plugin class that is used to define internationalization,
	 * admin-specific hooks, and public-facing site hooks.
	 */


	require plugin_dir_path(__FILE__) . 'includes/class-cbxwpbookmark.php';
	require plugin_dir_path(__FILE__) . 'includes/class-cbxwpbookmark-helper.php';


	/**
	 * Begins execution of the plugin.
	 *
	 * Since everything within the plugin is registered via hooks,
	 * then kicking off the plugin from this point in the file does
	 * not affect the page life cycle.
	 *
	 * @since    1.0.0
	 */
	function run_cbxwpbookmark()
	{

		$plugin = new Cbxwpbookmark();
		$plugin->run();

	}

	run_cbxwpbookmark();


	if (!function_exists('cbxwpbookmark_object_types')) {

		/**
		 * Return post types list, if plain is true then send as plain array , else array as post type groups
		 *
		 * @param bool|false $plain
		 *
		 * @return array
		 */
		function cbxwpbookmark_object_types($plain = false)
		{
			$post_type_args = array(
				'builtin' => array(
					'options' => array(
						'public'   => true,
						'_builtin' => true,
						'show_ui'  => true,
					),
					'label'   => esc_html__('Built in post types', 'cbxwpbookmark'),
				)
			);

			$post_type_args = apply_filters('cbxwpbookmark_post_types', $post_type_args);

			$output    = 'objects'; // names or objects, note names is the default
			$operator  = 'and'; // 'and' or 'or'
			$postTypes = array();

			foreach ($post_type_args as $postArgType => $postArgTypeArr) {
				$types = get_post_types($postArgTypeArr['options'], $output, $operator);

				if (!empty($types)) {
					foreach ($types as $type) {
						$postTypes[$postArgType]['label']              = $postArgTypeArr['label'];
						$postTypes[$postArgType]['types'][$type->name] = $type->labels->name;
					}
				}
			}


			if ($plain) {
				$plain_list = array();
				if (isset($postTypes['builtin']['types'])) {

					foreach ($postTypes['builtin']['types'] as $key => $name) {
						$plain_list[] = $key;
					}
				}

				if (isset($postTypes['custom']['types'])) {

					foreach ($postTypes['custom']['types'] as $key => $name) {
						$plain_list[] = $key;
					}
				}

				return $plain_list;
			} else return $postTypes;
		}
	}


	if (!function_exists('show_cbxbookmark_btn')):


		/**
		 *
		 */
		function show_cbxbookmark_btn($object_id = 0, $object_type = null, $show_count = 1, $extra_wrap_class = '', $skip_ids = '', $skip_roles = ''){

			//format the post skip ids
			if($skip_ids == ''){
				$skip_ids = array();
			}
			else{
				$skip_ids = explode(',', $skip_ids);
			}

			//format user roles
			if($skip_roles == ''){
				$skip_roles = array();
			}
			else{
				$skip_roles = explode(',', $skip_roles);
			}

			$current_user = wp_get_current_user();
			$user_id = $current_user->ID ;
			$loggedin = (intval($user_id) > 0)? 1: 0;

			if ($object_id == 0 || $object_type === null) return '';

			//check if there is skip post id option
			if(sizeof($skip_ids) > 0){
				if(in_array($object_id, $skip_ids)) return '';
			}

			//check if there is skip role option
			if(sizeof($skip_roles) > 0){
				//if(in_array($object_id, $skip_ids)) return '';
				$current_user_roles = is_user_logged_in()? $current_user->roles: array('guest');
				if(sizeof(array_intersect($skip_roles, $current_user_roles))> 0){
					return '';
				}

			}



			do_action('show_cbxbookmark_btn');

			$bookmark_class = '';
			$bookmark_total = intval(CBXWPBookmarkHelper::getTotalBookmark($object_id));

			$bookmark_by_user = CBXWPBookmarkHelper::isBookmarkedUser($object_id, $user_id);





			if($bookmark_by_user) $bookmark_class = 'cbxwpbkmarktrig-marked';

			$show_count_html = '';
			if($show_count){
				$show_count_html = '(<i class="cbxwpbkmarktrig-count">'.$bookmark_total.'</i>)';
            }


			$cbxwpbkmark = '<a data-loggedin="'.intval($loggedin).'" data-type="' . $object_type . '" data-object_id="' . $object_id . '" class="cbxwpbkmarktrig '.$bookmark_class.' cbxwpbkmarktrig-button-addto" title="' . esc_html__('Bookmark This', 'cbxwpbookmark') . '" href="#">&nbsp;&nbsp;&nbsp;</a>';

			if($user_id == 0):

				$cbxwpbkmark .= ' <div  data-type="' . $object_type . '" data-object_id="' . $object_id . '" class="cbxwpbkmarkguestwrap" id="cbxwpbkmarkguestwrap-' . $object_id . '">';

				$login_url = wp_login_url();
			    if(is_singular()){
			        $login_url =  wp_login_url( get_permalink() );;
                }
                else{
	                global $wp;

	                //$login_url =  wp_login_url( home_url( $wp->request ) );;
	                $login_url =  wp_login_url( home_url( add_query_arg(array(),$wp->request) ) );;
                }

				$cbxwpbkmark .= '<div class="cbxwpbkmarkguest-message">';
				$cbxwpbkmark .= '<a href="#" class="cbxwpbkmarkguesttrig_close"></a>';
			    $cbxwpbkmark .= '<a class="cbxwpbkmarkguest-text" href="'.$login_url.'">'.esc_html__('Please login to bookmark','cbxwpbookmark').'</a>';
				$cbxwpbkmark .= '</div>';


				$cbxwpbkmark .= '</div>';


            

            else:
				$cbxwpbkmark .= ' <div data-type="' . $object_type . '" data-object_id="' . $object_id . '" class="cbxwpbkmarklistwrap" id="cbxwpbkmarklistwrap-' . $object_id . '">
                             <span class="addto-head"><i class="cbxwpbkmarktrig_label">'.esc_html__('Click Category to Bookmark', 'cbxwpbookmark').'</i><i title="'. esc_html__('Close', 'cbxwpbookmark') .'"  data-object_id="' . $object_id . '" class="cbxwpbkmarktrig_close"></i></span>
                            
                            <div class="cbxwpbkmarkselwrap">
                                <div class="cbxlbjs cbxwpbkmark-lbjs">
									<div class="cbxlbjs-searchbar-wrapper cbxlbjs-searchbar-wrapper-add">
										<input class="cbxlbjs-searchbar cbxlbjs-searchbar-add" placeholder="' . esc_html__('Search...', 'cbxwpbookmark') . '">
										<i class="cbxlbjs-searchbar-icon"></i>
									</div>
									<ul class="cbxlbjs-list cbxwpbkmarklist cbxwpbkmarklist-add" style="height: 205px;" data-type="' . $object_type . '" data-object_id="' . $object_id . '">
									</ul>
								</div>
                            </div>
                            <div class="cbxwpbkmarkmanageselwrap">
                                <div class="cbxlbjs-manage cbxwpbkmark-lbjs-manage">
									<div class="cbxlbjs-searchbar-wrapper-manage">
										<input class="cbxlbjs-searchbar-manage" placeholder="' . esc_html__('Search...', 'cbxwpbookmark') . '">
										<i class="cbxlbjs-searchbar-icon"></i>
									</div>
									<ul class="cbxlbjs-list-manage cbxwpbkmarklist-manage" style="height: 205px;" data-type="' . $object_type . '" data-object_id="' . $object_id . '">
									</ul>
								</div>
                            </div>

                            <div class="cbxwpbkmarkaddnewcat">
                                <a class="cbxwpbkmarkaddnewcattrig" href="#">' . esc_html__('Add New Category', 'cbxwpbookmark') . '</a>
                                <a class="cbxwpbkmarkmanagecattrig" data-type="' . $object_type . '" data-object_id="' . $object_id . '" href="#">' . esc_html__('Manage Category', 'cbxwpbookmark') . '</a>
                                <div class="cbxwpbkmarclearfix"></div>
                                <div class="cbxwpbkmarkaddnewwrap">
                                    <div class="cbxwpbkmarkaddnewinputwrap">
                                        <input required placeholder="' . esc_html__('Type Category Name', 'cbxwpbookmark') . '" type="text" name="cbxwpbkmarkaddnewcatinput" class="cbxwpbkmarkaddnewcatinput" />
                                    </div>

                                    <div class="cbxwpbkmarkaddnewactionwrap">
                                        <p class="cbxwpbkmarkaddnewaction_error"> </p>                                        
                                        <div class="cbxwpbkmarkaddnewcatselect cbxbookmark-switch-field">
                                          <input type="radio" id="cbxbookmarkswitch_left_' . $object_id . '" name="cbxbookmarkswitch_' . $object_id . '" value="1" checked/>
                                          <label for="cbxbookmarkswitch_left_' . $object_id . '" title="' . esc_html__('Public Category', 'cbxwpbookmark') . '"><span class="cbxwpbkmark-icon cbxwpbkmark-icon-public"></span></label>
                                          <input type="radio" id="cbxbookmarkswitch_right_' . $object_id . '" name="cbxbookmarkswitch_' . $object_id . '" value="0" />
                                          <label for="cbxbookmarkswitch_right_' . $object_id . '" title="' . esc_html__('Private Category', 'cbxwpbookmark') . '"><span class="cbxwpbkmark-icon cbxwpbkmark-icon-private"></span></label>
                                        </div>

                                        <a  class="cbxwpbkmarkaddnewcatclose" href="#" title="' . esc_html__('Close', 'cbxwpbookmark') . '"><span class="cbxwpbkmark-icon cbxwpbkmark-icon-close"></span></a>
                                        <a data-object_id="' . $object_id . '" class="cbxwpbkmarkaddnewcatcreate" href="#" title="' . esc_html__('Create Category', 'cbxwpbookmark') . '"><span class="cbxwpbkmark-icon cbxwpbkmark-icon-create"></span></a>
                                        
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                                <div class="cbxwpbkmarkmanagewrap">
                                    <div class="cbxwpbkmarkmanageinputwrap">
                                        <input required placeholder="' . esc_html__('Category Name', 'cbxwpbookmark') . '" type="text" name="cbxwpbkmarkmanagecatinput" class="cbxwpbkmarkmanagecatinput" />
                                        <input required type="hidden" name="cbxwpbkmarkmanagecatid" class="cbxwpbkmarkmanagecatid" value="" />
                                    </div>
                                    <div class="cbxwpbkmarkmanageactionwrap">
                                        <p class="cbxwpbkmarkmanageaction_error"> </p>
                                        <div class="cbxwpbkmarkmanagecatselect cbxbookmarkmanage-switch-field">
                                          <input type="radio" id="cbxbookmarkmanageswitch_left_' . $object_id . '" name="cbxbookmarkmanageswitch_' . $object_id . '" value="1" checked/>
                                          <label for="cbxbookmarkmanageswitch_left_' . $object_id . '" title="' . esc_html__('Public Category', 'cbxwpbookmark') . '"><span class="cbxwpbkmark-icon cbxwpbkmark-icon-public"></span></label>
                                          <input type="radio" id="cbxbookmarkmanageswitch_right_' . $object_id . '" name="cbxbookmarkmanageswitch_' . $object_id . '" value="0" />
                                          <label for="cbxbookmarkmanageswitch_right_' . $object_id . '" title="' . esc_html__('Private Category', 'cbxwpbookmark') . '"><span class="cbxwpbkmark-icon cbxwpbkmark-icon-private"></span></label>
                                        </div>

                                        <a  class="cbxwpbkmarkmanagecatclose" href="#" title="' . esc_html__('Close', 'cbxwpbookmark') . '"><span class="cbxwpbkmark-icon cbxwpbkmark-icon-close"></span></a>
                                        <a  class="cbxwpbkmarkmanagecatdelete" href="#" title="' . esc_html__('Delete', 'cbxwpbookmark') . '"><span class="cbxwpbkmark-icon cbxwpbkmark-icon-delete"></span></a>
                                        <a data-object_id="' . $object_id . '" class="cbxwpbkmarkmanagecatcreate" href="#" title="' . esc_html__('Edit Catgory', 'cbxwpbookmark') . '"><span class="cbxwpbkmark-icon cbxwpbkmark-icon-create"></span></a>

                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                            </div>
                            <p class="cbxwpbkmarkloading" style="text-align: center;"><img src="' . plugins_url('admin/img/ajax-loader.gif', __FILE__) . '" alt="loading" title="' . esc_html__('loading categories', 'cbxwpbookmark') . '" /> </p>

                          </div>
                        ';

            endif;

			$cbxwpbkmark = '<div data-object_id="' . $object_id . '" class="cbxwpbkmarkwrap cbxwpbkmarkwrap-' . $object_type . ' '.$extra_wrap_class.'">' . $cbxwpbkmark . '</div>';

			return $cbxwpbkmark;
		}
	endif;


	if (!function_exists('cbxbookmarkmypost_html')) {
		function cbxbookmarkmypost_html($instance, $echo = false)
		{

			$limit   = isset($instance['limit']) ? intval($instance['limit']) : 10;
			$orderby = isset($instance['orderby']) ? esc_attr($instance['orderby']) : 'id';
			$order   = isset($instance['order']) ? esc_attr($instance['order']) : 'desc';
			$type    = isset($instance['type']) ? esc_attr($instance['type']) : ''; //object type(post types)


			$offset      = isset($instance['offset']) ? intval($instance['offset']) : 0;
			$catid       = isset($instance['catid']) ? intval($instance['catid']) : 0;
			$cattitle    = isset($instance['cattitle']) ? intval($instance['cattitle']) : 0; //Show category title
			$allowdelete = isset($instance['allowdelete']) ? intval($instance['allowdelete']) : 0;


			$userid_attr = isset($instance['userid']) ? intval($instance['userid']) : 0;

			$userid = 0;

			if ($userid_attr == 0) {
				$userid = get_current_user_id(); //get current logged in user id
			} else {
				$userid = $userid_attr;
			}


			if ($userid == 0 || (is_user_logged_in() && $userid != get_current_user_id())) {
				$allowdelete = 0;
				$privacy     = 1;
			}


			ob_start();
			?>


			<?php
			if ($userid > 0) {

				global $wpdb;

				$object_types = cbxwpbookmark_object_types(true); //get plain post type as array

				$cbxwpbookmrak_table = $wpdb->prefix . 'cbxwpbookmark';

				$cat_sql = '';

				if ($catid != 0) {
					$cat_sql = $wpdb->prepare(' AND cat_id = %d ', $catid);
				}

				if ($type == '') {
					$param = array($userid, $offset, $limit);
					$sql   = "SELECT *  FROM $cbxwpbookmrak_table  WHERE user_id = %d $cat_sql group by object_id  ORDER BY $orderby $order LIMIT %d, %d";
				} else {
					$param = array($userid, $type, $offset, $limit);
					$sql   = "SELECT *  FROM $cbxwpbookmrak_table  WHERE user_id = %d $cat_sql AND object_type=%s group by object_id   ORDER BY $orderby $order LIMIT %d, %d";
				}

				$items = $wpdb->get_results($wpdb->prepare($sql, $param));


				// checking If results are available
				if ($items === null || sizeof($items) > 0) {

					$post_types = get_post_types();

					foreach ($items as $item) {

						if (in_array($item->object_type, $object_types)) {
							$action_html = ($allowdelete) ? '&nbsp; <a class="cbxbookmark-delete-btn cbxbookmark-post-delete" href="#" data-object_id="' . $item->object_id . '" data-object_type="' . $item->object_type . '" data-bookmark_id="' . $item->id . '"><span></span></a>' : '';
							echo '<li ><a href="' . get_permalink($item->object_id) . '">' . get_the_title($item->object_id) . '</a>' . $action_html . '</li>';

						} else {

						}

					}
				} else {

					echo '<li>' . esc_html__('No bookmark found', 'cbxwpbookmark') . '</li>';

				}
			} else {

				$cbxbookmark_login_link = sprintf(__('Please <a href="%s">login</a> to view bookmarks', 'cbxwpbookmark'),
					wp_login_url(get_permalink())
				);

				echo '<li>' . $cbxbookmark_login_link . '</li>';


			}

			?>
			<?php

			$output = ob_get_clean();


			if ($echo) echo '<ul class="cbxwpbookmark-mylist">' . $output . '</ul>';
			else return $output;
		}
	}


	if (!function_exists('cbxbookmarkmycat_html')) {
		function cbxbookmarkmycat_html($instance, $echo = false)
		{

			global $wpdb;

			$privacy    = isset($instance['privacy']) ? intval($instance['privacy']) : 1;
			$orderby    = isset($instance['orderby']) ? $instance['orderby'] : 'cat_name';
			$order      = isset($instance['order']) ? $instance['order'] : 'asc';
			$show_count = isset($instance['show_count']) ? intval($instance['show_count']) : 0;
			$display    = isset($instance['display']) ? intval($instance['display']) : 0;


			$allowedit = isset($instance['allowedit']) ? intval($instance['allowedit']) : 0;

			$userid  = 0;
			$user_id = isset($instance['userid']) ? intval($instance['userid']) : 0;

			$userid = $user_id;


			if ($userid == 0) {
				$userid = get_current_user_id(); //get current logged in user id
			}

			if (is_user_logged_in() && $userid == get_current_user_id() && $allowedit) {
				$allowedit = 1;
			} else {
				$allowedit = 0;
			}


			//either
			if ($userid == 0 || ($user_id > 0 && $user_id != get_current_user_id())) $privacy = 1;


			ob_start();
			?>

			<?php

			if ($userid > 0) {

				$cbxwpbookmak_category_table = $wpdb->prefix . 'cbxwpbookmarkcat';
				$cbxwpbookmrak_table         = $wpdb->prefix . 'cbxwpbookmark';


				// Getting Current User ID
				//$userid = get_current_user_id();

				// Checking the Type of privacy
				// 2 means -- ALL -- Public and private both options in widget area

				$privacy_sql = '';
				if ($privacy != 2) {
					$privacy_sql = $wpdb->prepare(' AND privacy = %d ', $privacy);
				}


				// Executing Query
				$items = $wpdb->get_results(
					$wpdb->prepare("SELECT *  FROM  $cbxwpbookmak_category_table WHERE user_id = %d  $privacy_sql   ORDER BY $orderby $order", $userid)
				);


				$cbxwpbookmark_basics = get_option('cbxwpbookmark_basics');
				$mybookmark_pageid    = isset($cbxwpbookmark_basics['mybookmark_pageid']) ? intval($cbxwpbookmark_basics['mybookmark_pageid']) : 0;

				$user_page = get_permalink($mybookmark_pageid);

				$list_data_attr = '';

				// Checking for available results
				if ($items != null || sizeof($items) > 0) {
					if ($display == 0) {
						foreach ($items as $item) {

							$cat_pernalink   = $user_page;
							$show_count_html = '';


							$action_html = ($allowedit) ? '<a href="#" class="cbxbookmark-edit-btn" ></a> <a class="cbxbookmark-delete-btn" href="#" data-id="' . $item->id . '"><span></span></a>' : '';

							if ($show_count == 1) {
								$count_query    = "SELECT count(*) as totalobject from $cbxwpbookmrak_table where cat_id = %d";
								$num 			= $wpdb->get_var($wpdb->prepare($count_query, $item->id));

								$show_count_html = '<i>(' . number_format_i18n($num) . ')</i>';
							}



							if ($allowedit) {
								$list_data_attr = ' class="cbxbookmark-mycat-item" data-privacy="' . $item->privacy . '"  data-id="' . $item->id . '" data-name="' . $item->cat_name . '" ';
							}

							$cat_pernalink = add_query_arg( array('cbxbmcatid' => $item->id),  $cat_pernalink);

							echo '<li ' . $list_data_attr . '> <a href="' . $cat_pernalink . '" class="cbxlbjs-item-widget" data-privacy="' . $item->privacy . '">' . $item->cat_name . '</a>' . $show_count_html . $action_html . '</li>';
						}
						echo '<li> <a href="' . get_permalink($mybookmark_pageid) . '" class="cbxlbjs-item-widget" >' . esc_html__('All', 'cbxwpbookmark') . '</a></li>';
					} elseif ($display == 1) {
						$selected_wpbmcatid = (isset($_REQUEST["cbxbmcatid"])) ? $_REQUEST["cbxbmcatid"] : "'all'";
						echo '<select id="cbxlbjs-item-widget_dropdown" class="cbxlbjs-item-widget_dropdown"><option value="-1">' . esc_html__('Select Category', 'cbxwpbookmark') . '</option>';
						foreach ($items as $item) {

							$cat_pernalink   = $user_page;
							if (strpos($cat_pernalink, '?') !== false) {
								$cat_pernalink = $cat_pernalink . '&';
                            } else {
								$cat_pernalink = $cat_pernalink . '?';
                            }

							$show_count_html = '';

							if ($show_count == 1) {
								//$count_query     = "select count(*) as totalobject from $cbxwpbookmrak_table where cat_id = $item->id";
								//$num             = $wpdb->get_var($count_query);

								$count_query    = "SELECT count(*) as totalobject from $cbxwpbookmrak_table where cat_id = %d";
								$num 			= $wpdb->get_var($wpdb->prepare($count_query, $item->id));

								$show_count_html = ' <i>(' . number_format_i18n($num) . ')</i>';
							}

							echo '<option  class="cbxlbjs-item-widget" value = ' . $item->id . ' data-privacy="' . $item->privacy . '"> ' . $item->cat_name . $show_count_html . '</option>';
						}
						echo '<option value=\'all\'>' . esc_html__('All', 'cbxwpbookmark') . '</option>';
						echo '</select>';
						echo '<script type=\'text/javascript\'>
                                    (function() {
                                        var dropdown = document.getElementById( "cbxlbjs-item-widget_dropdown" );
                                        var wpbmpage_url = "' . $cat_pernalink . '";
                                        var selected_cat = ' . $selected_wpbmcatid . ';
                                        
                                        function onwpbmCatChange() {
                                            if ( dropdown.options[ dropdown.selectedIndex ].value > 0 ) {
                                                location.href = wpbmpage_url + "cbxbmcatid=" + dropdown.options[ dropdown.selectedIndex ].value;
                                            }else if( dropdown.options[ dropdown.selectedIndex ].value == "all"){
                                                location.href = wpbmpage_url;
                                            }
                                        }
                                        
                                        if(selected_cat > 0){
                                            dropdown.value = selected_cat;
                                        }else{
                                            dropdown.options[0].value;
                                        }
                                        
                                        dropdown.onchange = onwpbmCatChange;
                                    })();
                             </script>';
					}

				} else {
					?>
                    <li><?php esc_html_e('No category found.', 'cbxwpbookmark'); ?> </li>
					<?php
				}
			} else {

				$cbxbookmark_login_link = sprintf(__('Please <a href="%s">login</a> to view Category', 'cbxwpbookmark'),
					wp_login_url(get_permalink())
				);

				echo '<li>' . $cbxbookmark_login_link . '</li>';


			} ?>

			<?php

			$output = ob_get_clean();


			if ($echo) echo '<ul class="cbxbookmark-category-list">' . $output . '</ul>';
			else return $output;
		}
	}

	if (!function_exists('cbxbookmarkmost_html')) {
		function cbxbookmarkmost_html($instance, $attr = array(), $echo = false)
		{

			global $wpdb;

			$limit      = isset($instance['limit']) ? intval($instance['limit']) : 10;
			$daytime    = isset($instance['daytime']) ? intval($instance['daytime']) : 0;
			$orderby    = isset($instance['orderby']) ? esc_attr($instance['orderby']) : 'object_id';
			$order      = isset($instance['order']) ? esc_attr($instance['order']) : 'desc';
			$type       = isset($instance['type']) ? esc_attr($instance['type']) : '';
			$show_count = isset($instance['show_count']) ? intval($instance['show_count']) : 1;
			$show_thumb = isset($instance['show_thumb']) ? intval($instance['show_count']) : 0;

			$ul_class = isset($attr['ul_class']) ? $attr['ul_class'] : '';
			$li_class = isset($attr['li_class']) ? $attr['li_class'] : '';


			$thumb_size = 'thumbnail';
			$thumb_attr = array();


			$daytime = (int)$daytime;
			ob_start();
			?>

            <ul class="cbxwpbookmark-mostlist <?php echo $ul_class; ?>">
				<?php

					global $wpdb;

					$cbxwpbookmrak_table = $wpdb->prefix . 'cbxwpbookmark';

					// Getting Current User ID
					$userid = get_current_user_id();
					$time   = "";

					$datetime = "";
					if ($daytime != '0' || !empty($daytime)) {
						$time     = date('Y-m-d H:i:s', strtotime('-' . $daytime . ' day'));
						$datetime = " created_date > '$time' ";
					}

					$sql = '';

					if ($type == '') {
						$param     = array($limit);
						$where_sql = ($datetime != '') ? ' WHERE ' : '';
						if ($orderby == 'object_type') {
							$sql = "SELECT count(object_id) as totalobject, object_id, object_type FROM  $cbxwpbookmrak_table $where_sql $datetime group by object_id order by $orderby $order,count(object_id) $order LIMIT %d";
						} elseif ($orderby == 'object_count') {
							$sql = "SELECT count(object_id) as totalobject, object_id, object_type FROM  $cbxwpbookmrak_table $where_sql $datetime group by object_id order by COUNT(object_id) $order LIMIT %d";
						} else {
							$sql = "SELECT count(object_id) as totalobject, object_id, object_type FROM  $cbxwpbookmrak_table $where_sql $datetime group by object_id order by $orderby $order LIMIT %d";
						}

					} else {
						$param   = array($type, $limit);
						$and_sql = ($datetime != '') ? ' AND ' : '';
						if ($orderby == 'object_type') {
							$sql = "SELECT count(object_id) as totalobject, object_id, object_type FROM  $cbxwpbookmrak_table WHERE object_type = %s $and_sql $datetime group by object_id order by $orderby $order,count(object_id) $order LIMIT %d";
						} elseif ($orderby == 'object_count') {
							$sql = "SELECT count(object_id) as totalobject, object_id, object_type FROM  $cbxwpbookmrak_table WHERE object_type = %s $and_sql $datetime group by object_id order by count(object_id) $order LIMIT %d";
						} else {
							$sql = "SELECT count(object_id) as totalobject, object_id, object_type FROM  $cbxwpbookmrak_table WHERE object_type = %s $and_sql $datetime group by object_id order by $orderby $order LIMIT %d";
						}
					}


					$items = $wpdb->get_results(
						$wpdb->prepare($sql, $param)
					);

					// Checking for available results
					if ($items != null || sizeof($items) > 0) {

						foreach ($items as $item) {

							$thumb_html = '';
							if ($show_thumb) {
								if (has_post_thumbnail($item->object_id)) {
									$thumb_html = get_the_post_thumbnail($item->object_id, $thumb_size, $thumb_attr);
								} elseif (($parent_id = wp_get_post_parent_id($item->object_id)) && has_post_thumbnail($parent_id)) {
									$thumb_html = get_the_post_thumbnail($parent_id, $thumb_size, $thumb_attr);
								}
							}


							$show_count_html = ($show_count == 1) ? '<i>(' . $item->totalobject . ')</i>' : "";
							echo '<li class="cbxwpbookmark-widget-list ' . $li_class . '" >';
							echo '<a href="' . get_permalink($item->object_id) . '">';
							echo ($show_thumb) ? $thumb_html : '';
							echo get_the_title($item->object_id) . $show_count_html;
							echo '</a>';

							echo '</li>';

						}
					} else {
						echo '<li class="cbxwpbookmark-widget-list ' . $li_class . '">' . esc_html__("No item found", "cbxwpbookmark") . '</li>';
					}
				?>
            </ul>
			<?php

			$output = ob_get_clean();

			if ($echo) echo $output;
			else return $output;
		}
	}
