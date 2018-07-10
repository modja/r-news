<?php

/**
 * The public-facing functionality of the plugin.
 *
 * @link       codeboxr.com
 * @since      1.0.0
 * Defines the plugin name, version, and two examples hooks for how to
 * enqueue the admin-specific stylesheet and JavaScript.
 *
 * @package    Cbxwpbookmark
 * @subpackage Cbxwpbookmark/public
 * @author     CBX Team  <info@codeboxr.com>
 */
class Cbxwpbookmark_Public
{

	/**
	 * The ID of this plugin.
	 *
	 * @since    1.0.0
	 * @access   private
	 * @var      string $plugin_name The ID of this plugin.
	 */
	private $plugin_name;

	/**
	 * The version of this plugin.
	 *
	 * @since    1.0.0
	 * @access   private
	 * @var      string $version The current version of this plugin.
	 */
	private $version;

	private $settings_api;

	private $userid;

	/**
	 * Initialize the class and set its properties.
	 *
	 * @since    1.0.0
	 *
	 * @param      string $plugin_name The name of the plugin.
	 * @param      string $version     The version of this plugin.
	 */
	public function __construct($plugin_name, $version)
	{

		$this->plugin_name = $plugin_name;
		$this->version     = $version;

		$this->settings_api = new Cbxwpbookmark_Settings_API($plugin_name, $version);

		//bookmark button using shortcode
		add_shortcode('cbxwpbookmarkbtn', array($this, 'cbxwpbookmarkbtn_shortcode'));

		//show bookmark list using shortcode
		add_shortcode('cbxwpbookmark', array(
			$this,
			'cbxbookmarkmypost_shortcode'
		)); //my bookmarks   synced with widget code

		//show boomark categories using shortcode
		add_shortcode('cbxwpbookmark-mycat', array($this, 'cbxbookmarkmypost_shortcode_mycat'));

		//show most bookmarked posts using shortcode
		add_shortcode('cbxwpbookmark-most', array($this, 'cbxbookmarkmypost_shortcode_most'));

	}







	/** End Front Panel * */

	/**
	 * Register Widget
	 */
	public function register_widget()
	{

		register_widget("Cbxwpbookmark_Cagetory"); //my bookmark category
		register_widget("Cbxbookmark_Widget"); //my bookmarks
		register_widget("Cbxbookmarkedmost_Widget"); //most bookmarked items
	}

	/**
	 *
	 * @global type $wpdb
	 */
	public function find_category()
	{
		global $wpdb;

		check_ajax_referer('cbxbookmarknonce', 'security');

		$category_table = $wpdb->prefix . 'cbxwpbookmarkcat';
		$bookmark_table = $wpdb->prefix . 'cbxwpbookmark';
		$user_id        = get_current_user_id(); //get the current logged in user id
		$object_id      = intval($_POST['object_id']);
		$object_type    = isset($_POST['object_type']) ? esc_attr($_POST['object_type']) : 'post'; //post, page, user, product, any thing custom

		$cats_by_user   = $wpdb->get_results($wpdb->prepare("SELECT * FROM $category_table WHERE user_id = %d", array($user_id)), ARRAY_A);
		$post_in_cats_t = $wpdb->get_results($wpdb->prepare("SELECT DISTINCT cat_id FROM $bookmark_table WHERE object_type = %s AND user_id = %d AND object_id = %d", array(
			$object_type,
			$user_id,
			$object_id
		)), ARRAY_A
		);

		//
		$post_in_cats = array();
		foreach ($post_in_cats_t as $cat)
		{
			$post_in_cats[] = $cat['cat_id'];
		}

		foreach ($cats_by_user as &$row)
		{
			if (in_array($row['id'], $post_in_cats))
			{
				$row['incat'] = 1;
			}
			else
			{
				$row['incat'] = 0;
			}
		}


		$bookmark_total     = CBXWPBookmarkHelper::getTotalBookmark($object_id);
		$bookmark_by_user   = CBXWPBookmarkHelper::isBookmarkedUser($object_id);

		$message = array();
		//code 1 = category found
		//code 0 = category not found

		$cats_by_user = apply_filters('cbxwpbookmark_user_cats_found', $cats_by_user, $user_id, $object_id, $object_type);

		if ($cats_by_user != null)
		{

			$message['code'] = 1;

			$message['msg'] = esc_html__('Categories loaded', 'cbxwpbookmark');
			if ($cats_by_user !== false)
			{
				$message['cats'] = json_encode($cats_by_user);
			}
		}
		else
		{
			$message['code'] = 0;
			$message['msg']  = esc_html__('Category not found, create one.', 'cbxwpbookmark');
		}

		$message['bookmark_count'] = $bookmark_total;
		$message['bookmark_byuser'] = ($bookmark_by_user)? 1: 0;

		echo json_encode($message);

		wp_die();
	}


	/**
	 * Show Bookmark button before or after the content
	 *
	 * @param $content
	 */
	public function cbx_bookmark_content_filter($content)
	{
		$user_id = get_current_user_id();
		global $post;

		$post_types_to_show_bookmark = $this->settings_api->get_option('cbxbookmarkposttypes', 'cbxwpbookmark_basics', array(
			'post',
			'page'
		));

		$position        = $this->settings_api->get_option( 'cbxbookmarkpostion', 'cbxwpbookmark_basics', 'after_content' );
		$skip_ids        = $this->settings_api->get_option( 'skip_ids', 'cbxwpbookmark_basics', '' );
		$skip_roles      = $this->settings_api->get_option( 'skip_roles', 'cbxwpbookmark_basics', '' );
		$show_in_archive = intval( $this->settings_api->get_option( 'showinarchive', 'cbxwpbookmark_basics', 0 ) );
		$show_in_home    = intval( $this->settings_api->get_option( 'showinhome', 'cbxwpbookmark_basics', 0 ) );
		$showcount       = intval( $this->settings_api->get_option( 'showcount', 'cbxwpbookmark_basics', 0 ) );


		//if disabled return content
		if ($position == 'disable')
		{
			return $content;
		}

		//if not logged in user then return content
		/*if ($user_id == 0)
		{
			return $content;
		}*/

		//check if the bookmark button is allowed
		if (!in_array($post->post_type, $post_types_to_show_bookmark))
		{
			return $content;
		}

		//if archive and show archive false then return content
		if(!$show_in_archive && is_archive()) return $content;

		//if home and show in home false then return content
		if(!$show_in_home && (is_home() && is_front_page() )) return $content;

		$post_id   = $post->ID;
		$post_type = $post->post_type;

		//grab bookmark button html
		if(is_array($skip_roles)){
			$skip_roles = implode(',', $skip_roles);
		}
		$bookmark_html = show_cbxbookmark_btn($post_id, $post_type, $showcount, '', $skip_ids, $skip_roles);

		//attach the bookmark button html before or after the content
		if ($position == 'after_content')
		{
			return $content . $bookmark_html;
		}
		elseif ($position == 'before_content')
		{
			return $bookmark_html . $content;
		}
	}

	public function cbxwpbookmarkbtn_shortcode($attr)
	{
		// Checking Available Parameter
		global $post;

		$attr = shortcode_atts(
			array(
				'object_id'        => $post->ID,
				'object_type'      => $post->post_type,
				'show_count'       => 1,
				'extra_wrap_class' => '',
				'skip_ids'         => '',
				'skip_roles'       => '' //example 'administrator, editor, author, contributor, subscriber'
			), $attr
		);

		extract($attr);

		return show_cbxbookmark_btn($object_id, $object_type, $show_count, $extra_wrap_class, $skip_ids , $skip_roles);
	}



	/**
	 * Bookmarked Posts attributes used for user edit panel
	 *
	 * @param $attr
	 */
	public function cbxbookmarkmypost_shortcode($attr)
	{

		// Checking Available Parameter
		global $wpdb;
		$cbxwpbookmrak_table = $wpdb->prefix . 'cbxwpbookmark';
		$attr                = shortcode_atts(
			array(
				'userid'      => get_current_user_id(),
				'order'       => 'desc',
				'orderby'     => 'id', // id, object_type
				'limit'       => 10,
				'offset'      => 0,
				'type'        => '',
				'loadmore'    => 1, //this is shortcode only params
				'catid'       => 0, //category id
				'cattitle'    => 1, //show category title,
				'catcount'    => 1, //show item count per category
				'allowdelete' => 0
			), $attr
		);

		//if the url has cat id (cbxbmcatid get param) thenm use it or try it from shortcode
		$attr['catid'] = (isset($_GET['cbxbmcatid']) && $_GET['cbxbmcatid'] != null) ? intval($_GET['cbxbmcatid']) : intval($attr['catid']);




		extract($attr);


		$show_loadmore_html = '';
		$loadmore_busy_icon = '';

		$wpbm_ajax_icon = plugins_url('cbxwpbookmark/public/img/busy.gif');

		$cat_sql = '';
		if ($catid != 0)
		{
			$cat_sql = $wpdb->prepare(' AND cat_id = %d ', $catid);
		}

		if ($type == '')
		{
			$param = array($userid);
			$sql   = "select count(*) as totalobject FROM $cbxwpbookmrak_table  WHERE user_id = %d $cat_sql group by object_id  ORDER BY $orderby $order";
		}
		else
		{
			$param = array($userid, $type);
			$sql   = "select count(*) as totalobject FROM $cbxwpbookmrak_table  WHERE user_id = %d $cat_sql AND object_type=%s group by object_id   ORDER BY $orderby $order";
		}

		$num        = $wpdb->get_results($wpdb->prepare($sql, $param));
		$total_page = ceil((int) count($num) / $limit);

		$extra_css_class = '';
		if ($attr['loadmore'] == 1 && $total_page > 1)
		{
			$extra_css_class = 'cbxwpbookmark-mylist-sc-more';
			$offset += $limit;
			$loadmore_busy_icon = '<span data-busy="0" class="cbxwpbm_ajax_icon">' . esc_html__('Loading ...', 'cbxwpbookmark') . '<img src = "' . $wpbm_ajax_icon . '"/></span>';
			$show_loadmore_html = '<p class="cbxbookmark-more-wrap"><a href="#" class="cbxbookmark-more" data-cattitle="'.$cattitle.'" data-order="' . $order . '" data-orderby="' . $orderby . '"  data-userid="' . $userid . '" data-limit="' . $limit . '" data-offset="' . $offset . '" data-catid="' . $catid . '" data-totalpage="' . $total_page . '" data-currpage="1" data-allowdelete="' . intval($allowdelete) . '">' . esc_html__('Load More', 'cbxwpbookmark') . '</a>' . $loadmore_busy_icon . '</p>';
		}

		$category_title = '';



		if(intval($cattitle)){

			if($catid == 0) {
				$category_title = '<h4 class="cbxwpbookmark-mylist-cattitle">'.esc_html__('All Bookmarks', 'cbxwpbookmark').'</h4>';
			}
			else{

				$cat_info = CBXWPBookmarkHelper::getBookmarkCategoryById(intval($catid));

				$catcount_html = '';
				if($catcount){
					$cat_bookmark_count = CBXWPBookmarkHelper::getTotalBookmarkByCategory($catid);
					$catcount_html      = '<i>(' . number_format_i18n($cat_bookmark_count) . ')</i>';
				}



				if(is_array($cat_info) && sizeof($cat_info) > 0 ){
					$category_title = '<h4 class="cbxwpbookmark-mylist-cattitle">'.$cat_info['cat_name'].$catcount_html.'</h4>';
				}
			}
		}

		return '<div class="cbxwpbookmark-mylist-wrap">'.$category_title.'<ul class="cbxwpbookmark-mylist cbxwpbookmark-mylist-sc ' . $extra_css_class . '" >' . cbxbookmarkmypost_html($attr) . '</ul>' . $show_loadmore_html . '</div>';
	}

	/**
	 * Bookmark Loadmore ajax hook
	 */

	public function bookmark_loadmore()
	{
		check_ajax_referer('cbxbookmarknonce', 'security');
		$instance = array();
		$message  = array();

		if (isset($_POST['limit']) && $_POST['limit'] != null)
		{
			$instance['limit'] = intval($_POST['limit']);
		}

		if (isset($_POST['offset']) && $_POST['offset'] != null)
		{
			$instance['offset'] = intval($_POST['offset']);
		}

		if (isset($_POST['catid']) && $_POST['catid'] != 0)
		{
			$instance['catid'] = intval($_POST['catid']);
		}

		if (isset($_POST['userid']) && $_POST['userid'] != 0)
		{
			$instance['userid'] = intval($_POST['userid']);
		}

		if (isset($_POST['order']) && $_POST['order'] != null)
		{
			$instance['order'] = esc_attr($_POST['order']);
		}

		if (isset($_POST['orderby']) && $_POST['orderby'] != null)
		{
			$instance['orderby'] = esc_attr($_POST['orderby']);
		}

		$instance['allowdelete'] = intval($_POST['allowdelete']);

		if (function_exists('cbxbookmarkmypost_html') && cbxbookmarkmypost_html($instance, false))
		{
			$message['code'] = 1;
			$message['data'] = cbxbookmarkmypost_html($instance, false);

		}
		else
		{
			$message['code'] = 0;
		}

		echo json_encode($message);
		wp_die();
	}

	/**
	 * Shows any user's bookmarked categories using shortcode
	 *
	 * @param $attr
	 *
	 * @return string
	 */
	public function cbxbookmarkmypost_shortcode_mycat($attr)
	{

		$attr = shortcode_atts(
			array(
				'userid'     => get_current_user_id(),
				'order'      => "asc", //possible values  title, id
				'orderby'    => "cat_name",
				'privacy'    => 2,
				'show_count' => 0,
				'display'    => 0,  //0 = list  1= dropdown,
				'allowedit'  => 0
			), $attr
		);

		$output = (intval($attr['display']) == 0) ? '<ul class="cbxbookmark-category-list cbxbookmark-category-list-sc">' : '';
		$output .= cbxbookmarkmycat_html($attr);
		$output .= (intval($attr['display']) == 0) ? '</ul>' : '';

		return $output;

	}

	public function cbxbookmarkmypost_shortcode_most($attr)
	{
		$attr = shortcode_atts(
			array(
				'limit' => 10,

				'daytime'    => 0, // 0 means all time,  any numeric values as days
				'orderby'    => 'object_id',
				'order'      => 'desc',
				'type'       => '', //db col name object_type,  post types eg, post, page, any custom post type
				'show_count' => 0,
				'show_thumb' => 0,
				'ul_class'   => 'product_list_widget',
				'li_class'   => ''
			), $attr
		);

		$style_attr = array(
			'ul_class' => $attr['ul_class'],
			'li_class' => $attr['li_class']
		);

		return '<div class="cbxbmmostlisting cbxbmmostlisting-sc">' . cbxbookmarkmost_html($attr, $style_attr) . '</div>';
	}

	/**
	 *  Add new category
	 *
	 */
	public function add_category()
	{
		check_ajax_referer('cbxbookmarknonce', 'security');
		global $wpdb;

		$category_table = $wpdb->prefix . 'cbxwpbookmarkcat';
		$bookmark_table = $wpdb->prefix . 'cbxwpbookmark';

		$cat_name    = sanitize_text_field($_POST['cat_name']);
		$cat_privacy = intval($_POST['privacy']);
		$object_id   = intval($_POST['object_id']);
		$object_type = isset($_POST['object_type']) ? esc_attr($_POST['object_type']) : 'post'; //post, page, user, product, any thing custom

		$cat_id = 0;

		$user_id = get_current_user_id(); //get the current logged in user id

		$message = array();



		$sql       = $wpdb->prepare("SELECT id FROM $category_table WHERE cat_name = %s and user_id = %d", $cat_name, $user_id);
		$duplicate = $wpdb->get_var($sql);


		if (intval($duplicate) > 0)
		{
			$message['code'] = 0;
			$message['msg']  = esc_html__('Category with same name already exists!', 'cbxwpbookmark');
		}
		else
		{

			$return = $wpdb->query($wpdb->prepare("INSERT INTO $category_table ( cat_name, user_id, privacy ) VALUES ( %s, %d, %d )", array(
				$cat_name,
				$user_id,
				$cat_privacy
			)));



			if ($return !== false)
			{

				$cat_id = $wpdb->insert_id; //get the newly created category id

				$cats_by_user = $wpdb->get_results($wpdb->prepare("SELECT * FROM $category_table WHERE user_id = %d", array($user_id)), ARRAY_A);

				$post_in_cats_t = $wpdb->get_results($wpdb->prepare("SELECT DISTINCT cat_id FROM $bookmark_table WHERE object_type = %s AND  user_id = %d AND object_id = %d", array(
					$object_type,
					$user_id,
					$object_id
				)), ARRAY_A);


				$post_in_cats = array();
				foreach ($post_in_cats_t as $cat)
				{
					$post_in_cats[] = $cat['cat_id'];
				}

				foreach ($cats_by_user as &$row)
				{
					if (in_array($row['id'], $post_in_cats))
					{
						$row['incat'] = 1;
					}
					else
					{
						$row['incat'] = 0;
					}
				}

				$message['code'] = 1;
				$message['msg']  = esc_html__('Category created successfully!', 'cbxwpbookmark');
				if ($cats_by_user !== false)
				{
					$message['cats'] = json_encode($cats_by_user);
				}
				else
				{
					$message['cats'] = 0;
				}

				do_action('cbxbookmark_category_added', $cat_id,  $user_id);
			}
			else
			{
				$message['code'] = 0;
				$message['msg']  = esc_html__('Category creation failed or database query failed!', 'cbxwpbookmark');
			}

		}

		echo json_encode($message);

		wp_die();
	}

	/**
	 *  Edit a Category (From bookmark popup panel)
	 *
	 */
	public function edit_category()
	{
		check_ajax_referer('cbxbookmarknonce', 'security');
		global $wpdb;
		$message           = array();

		$category_table = $wpdb->prefix . 'cbxwpbookmarkcat';
		$bookmark_table = $wpdb->prefix . 'cbxwpbookmark';

		$cat_name       = sanitize_text_field($_POST['cat_name']);
		$cat_id         = intval($_POST['cat_id']);
		$cat_privacy    = intval($_POST['privacy']);
		$object_id      = intval($_POST['object_id']);
		$object_type    = isset($_POST['object_type']) ? esc_attr($_POST['object_type']) : 'post'; //post, page, user, product, any thing custom

		$user_id = get_current_user_id(); //get the current logged in user id

		$sql       = $wpdb->prepare("SELECT id FROM $category_table WHERE cat_name = %s AND id != %d AND user_id = %d", $cat_name, $cat_id, $user_id);
		$duplicate = $wpdb->get_var($sql);


		if($cat_name == ''){
			$message['code'] = 0;
			$message['msg']  = esc_html__('Category name can not be empty', 'cbxwpbookmark');
		}
		else if($cat_id == 0){
			$message['code'] = 0;
			$message['msg']  = esc_html__('Category id missing, are you cheating?', 'cbxwpbookmark');
		}
		else if (intval($duplicate) > 0)
		{
			$message['code'] = 0;
			$message['msg']  = esc_html__('Another Category with same name already exists!', 'cbxwpbookmark');
		}
		else
		{
			// Update Query
			$update = $wpdb->update(
				$category_table, array(
				'cat_name' => $cat_name, // string
				'privacy'  => $cat_privacy // integer (number)
			), array(
				'id'    => $cat_id,
				'user_id'  => $user_id
			), array(
				'%s', // value1
				'%d' // value2
			), array(
					'%d',
					'%d'
				)
			);


			if ($update !== false)
			{

				$cats_by_user = $wpdb->get_results($wpdb->prepare("SELECT * FROM $category_table WHERE user_id = %d", array($user_id)), ARRAY_A);

				$post_in_cats_t = $wpdb->get_results($wpdb->prepare("SELECT DISTINCT cat_id FROM $bookmark_table WHERE object_type = %s AND  user_id = %d AND object_id = %d", array(
					$object_type,
					$user_id,
					$object_id
				)), ARRAY_A);


				$post_in_cats = array();
				foreach ($post_in_cats_t as $cat)
				{
					$post_in_cats[] = $cat['cat_id'];
				}

				foreach ($cats_by_user as &$row)
				{
					if (in_array($row['id'], $post_in_cats))
					{
						$row['incat'] = 1;
					}
					else
					{
						$row['incat'] = 0;
					}
				}

				$message['code'] = 1;
				$message['msg']  = esc_html__('Category update successfully!', 'cbxwpbookmark');
				if ($cats_by_user !== false)
				{
					$message['cats'] = json_encode($cats_by_user);
				}
				else
				{
					$message['cats'] = 0;
				}

				do_action('cbxbookmark_category_edit', $cat_id, $user_id, $cat_name);
			}
			else
			{
				$message['code'] = 0;
				$message['msg']  = esc_html__('Category edit failed or database query failed!', 'cbxwpbookmark');
			}

		}

		echo json_encode($message);

		wp_die();
	}


	/**
	 * Update Category(fromt user edit panel)
	 *
	 */
	public function update_bookmark_category()
	{

		check_ajax_referer('cbxbookmarknonce', 'security');
		if (isset($_POST))
		{
			global $wpdb;

			$data   = array();

			$cat_name = esc_attr($_POST['catname']);
			$cat_id   = intval($_POST['id']);
			$privacy = intval($_POST['privacy']);
			$user_id = get_current_user_id();

			// Category Table with database Prefix
			$bookmarkcategory_table = $wpdb->prefix . 'cbxwpbookmarkcat';

			// Update Query
			$update = $wpdb->update(
				$bookmarkcategory_table, array(
				'cat_name' => $cat_name, // string
				'privacy'  => $privacy // integer (number)
			), array(
				'id'        => $cat_id,
				'user_id'  => $user_id
			), array(
				'%s', // value1
				'%d' // value2
			), array(
					'%d',
					'%d'
				)
			);

			if ($update !== false)
			{

				do_action('cbxbookmark_category_edit', $cat_id, $user_id, $cat_name);

				$data['msg']     = esc_html__("Data Updated Successfully", "cbxwpbookmark");
				$data['flag']    = 1;
				$data['catname'] = $cat_name;
				$data['privacy'] = $privacy;
			}
			else
			{

				$data['msg']  = esc_html__("Update Failed", "cbxwpbookmark");
				$data['flag'] = 0;
			}

			echo $data = json_encode($data);
		}
		wp_die();
	}

	/**
	 *
	 * Delete Category
	 */
	public function delete_bookmark_category()
	{

		check_ajax_referer('cbxbookmarknonce', 'security');
		$message = array();

		global $wpdb;



		if (isset($_POST))
		{
			$cat_id      = intval( $_POST['id'] );



			$bookmarkcategory_table = $wpdb->prefix . 'cbxwpbookmarkcat';
			$bookmark_table = $wpdb->prefix . 'cbxwpbookmark';

			$user_id         = get_current_user_id();
			$delete_category = $wpdb->delete($bookmarkcategory_table, array('id' => $cat_id, 'user_id' => $user_id), array('%d', '%d'));

			if ($delete_category !== false)
			{
				//deleted successfully
				$message['msg'] = 0;

				do_action('cbxbookmark_category_deleted', $cat_id,  $user_id);
				//now delete any bookmark entry for that category
				$delete_bookmark = $wpdb->delete($bookmark_table, array('cat_id' => $cat_id, 'user_id' => $user_id), array('%d', '%d'));



				if(isset($_POST['object_id'])){
					$object_id   = intval( $_POST['object_id'] );
					$object_type = isset( $_POST['object_type'] ) ? esc_attr( $_POST['object_type'] ) : 'post'; //post, page, user, product, any thing custom

					$cats_by_user = $wpdb->get_results($wpdb->prepare("SELECT * FROM $bookmarkcategory_table WHERE user_id = %d", array($user_id)), ARRAY_A);

					$post_in_cats_t = $wpdb->get_results($wpdb->prepare("SELECT DISTINCT cat_id FROM $bookmark_table WHERE object_type = %s AND  user_id = %d AND object_id = %d", array(
						$object_type,
						$user_id,
						$object_id
					)), ARRAY_A);


					$post_in_cats = array();
					foreach ($post_in_cats_t as $cat)
					{
						$post_in_cats[] = $cat['cat_id'];
					}

					foreach ($cats_by_user as &$row)
					{
						if (in_array($row['id'], $post_in_cats))
						{
							$row['incat'] = 1;
						}
						else
						{
							$row['incat'] = 0;
						}
					}

					$message['cats'] = json_encode($cats_by_user);

				}


			}
			else
			{

				$message['msg'] = 1;
			}
		}
		else
		{

			$message['msg'] = esc_html__("No data available", "cbxwpbookmark");
		}
		echo json_encode($message);
		wp_die();
	}

	/**
	 * Add Bookmark to database     *
	 *
	 */
	public function add_bookmark()
	{
		global $wpdb;

		check_ajax_referer('cbxbookmarknonce', 'security');

		$user_id   = get_current_user_id();
		$cat_id    = intval($_POST['cat_id']);
		$object_id = intval($_POST['object_id']);

		$object_type = isset($_POST['object_type']) ? esc_attr($_POST['object_type']) : 'post'; //post, page or any custom post and later any object type

		$bookmark_table = $wpdb->prefix . 'cbxwpbookmark';
		$duplicate      = $wpdb->get_var($wpdb->prepare("SELECT id FROM $bookmark_table WHERE object_type = %s AND object_id = %d AND cat_id = %d AND user_id = %d", array(
			$object_type,
			$object_id,
			$cat_id,
			$user_id
		)));

		$message = array();



		if (intval($duplicate) > 0)
		{

			//already exists, so remove
			$return = $wpdb->query($wpdb->prepare("DELETE FROM $bookmark_table WHERE object_type = %s AND object_id = %d AND cat_id = %d AND user_id = %d", array(
				$object_type,
				$object_id,
				$cat_id,
				$user_id
			)));
			if ($return !== false)
			{
				$message['code']      = 1; //operation success
				$message['msg']       = esc_html__('Bookmark removed!', 'cbxwpbookmark');
				$message['operation'] = 0;
				$bookmark_id          = $duplicate;

				do_action('cbxbookmark_bookmark_removed', $bookmark_id, $user_id, $object_id, $object_type);
			}
			else
			{
				$message['code'] = 0; //operation failed
				$message['msg']  = esc_html__('Bookmark remove failed!', 'cbxwpbookmark');
			}
		}
		else
		{
			//doesn't exists, so add
			$return = $wpdb->query($wpdb->prepare("INSERT INTO $bookmark_table ( object_id, object_type, cat_id, user_id ) VALUES ( %d,%s, %d, %d )", array(
				$object_id,
				$object_type,
				$cat_id,
				$user_id
			)));
			if ($return !== false)
			{
				$message['code']      = 1; //db operation success
				$message['msg']       = esc_html__('Bookmark added!', 'cbxwpbookmark');
				$message['operation'] = 1;

				$bookmark_id = $wpdb->insert_id;

				do_action('cbxbookmark_bookmark_added', $bookmark_id, $user_id, $object_id, $object_type);

			}
			else
			{
				$message['code'] = 0; //db operation failed
				$message['msg']  = esc_html__('Bookmark add failed', 'cbxwpbookmark');
			}
		}

		$bookmark_total             = CBXWPBookmarkHelper::getTotalBookmark($object_id);
		$bookmark_by_user           = CBXWPBookmarkHelper::isBookmarkedUser($object_id);
		$message['bookmark_count']  = $bookmark_total;
		$message['bookmark_byuser'] = ($bookmark_by_user)? 1: 0;

		echo json_encode($message);
		wp_die();
	}

	/**
	 * Delete bookmarked Post
	 */
	public function delete_bookmark_post()
	{

		global $wpdb;
		$data = array();

		check_ajax_referer('cbxbookmarknonce', 'security');

		if (isset($_POST))
		{


			$bookmark_id    = intval($_POST['bookmark_id']);
			$object_id      = intval($_POST['object_id']);
			$object_type    = isset($_POST['object_type']) ? esc_attr($_POST['object_type']) : 'post'; //post, page or any custom post and later any object type


			$bookmark_table = $wpdb->prefix . 'cbxwpbookmark';

			$user_id         = get_current_user_id();
			$delete_bookmark = $wpdb->delete($bookmark_table, array(
				'object_id' => $object_id,
				'user_id'   => $user_id
			), array('%d', '%d'));

			if ($delete_bookmark !== false)
			{
				$data['msg'] = 0;

				do_action('cbxbookmark_bookmark_removed', $bookmark_id, $user_id, $object_id, $object_type);
			}
			else
			{

				$data['msg'] = 1;
			}
		}
		else
		{

			$data['msg'] = esc_html__("No data available", "cbxwpbookmark");
		}
		echo json_encode($data);
		wp_die();
	}

	/**
	 * Register the stylesheets for the public-facing side of the site.
	 *
	 * @since    1.0.0
	 * This function is provided for demonstration purposes only.
	 *
	 * An instance of this class should be passed to the run() function
	 * defined in Cbxwpbookmark_Loader as all of the hooks are defined
	 * in that particular class.
	 *
	 * The Cbxwpbookmark_Loader will then create the relationship
	 * between the defined hooks and the functions defined in this
	 * class.
	 */
	public function enqueue_styles()
	{

		do_action('cbxwpbookmark_css_start');

		wp_register_style($this->plugin_name . 'public-css', plugin_dir_url(__FILE__) . 'css/cbxwpbookmark-public.css', array(), '2.0', 'all');
		wp_enqueue_style($this->plugin_name . 'public-css');

		do_action('cbxwpbookmark_css_end');
	}

	/**
	 * Register the stylesheets for the public-facing side of the site.
	 *
	 * @since    1.0.0
	 *
	 * This function is provided for demonstration purposes only.
	 *
	 * An instance of this class should be passed to the run() function
	 * defined in Cbxwpbookmark_Loader as all of the hooks are defined
	 * in that particular class.
	 *
	 * The Cbxwpbookmark_Loader will then create the relationship
	 * between the defined hooks and the functions defined in this
	 * class.
	 */
	public function enqueue_scripts()
	{
		do_action('cbxwpbookmark_js_start');

		wp_enqueue_script('jquery');



		$category_template = '
            <div class="cbxbookmark-mycat-editbox">
                <input class="cbxbmedit-catname" name="catname" value="##catname##" />                
                <select class="cbxbmedit-privacy input-catprivacy" name="catprivacy">
                  <option value="1" title="' . esc_html__('Public Category', 'cbxwpbookmark') . '">' . esc_html__('Public', 'cbxwpbookmark') . '</option>
                  <option value="0" title="' . esc_html__('Private Category', 'cbxwpbookmark') . '">' . esc_html__('Private', 'cbxwpbookmark') . '</option>
                </select>
                <a href="#" class="cbxbookmark-btn cbxbookmark-cat-save">' . esc_html__('Update', 'cbxwpbookmark') . ' <span class="cbxbm_busy" style="display:none;"></span></a>
                <a href="#" class="cbxbookmark-btn cbxbookmark-cat-close">' . esc_html__('Close', 'cbxwpbookmark') . '</a>
            </div>';

		wp_register_script($this->plugin_name . 'publicjs', plugin_dir_url(__FILE__) . 'js/cbxwpbookmark-public.js', array('jquery'), '2.0', false);

		$cbxwpbookmark_translation = array(
			'ajaxurl'                    => admin_url('admin-ajax.php'),
			'nonce'                      => wp_create_nonce("cbxbookmarknonce"),
			'cat_template'               => json_encode($category_template),
			'category_delete_success'    => esc_html__('Category deleted successfully', 'cbxwpbookmark'),
			'category_delete_error'      => esc_html__('Unable to delete the category', 'cbxwpbookmark'),
			'areyousuretodeletecat'      => esc_html__('Are you sure you want to delete this Bookmark Category?', 'cbxwpbookmark'),
			'areyousuretodeletebookmark' => esc_html__('Are you sure you want to delete this Bookmark?', 'cbxwpbookmark'),
			'bookmark_failed'            => esc_html__('Faild to Bookmark', 'cbxwpbookmark'),
			'bookmark_removed'           => esc_html__('Bookmark Removed', 'cbxwpbookmark'),
			'bookmark_removed_empty'     => esc_html__('All Bookmarks Removed', 'cbxwpbookmark'),
			'bookmark_removed_failed'    => esc_html__('Bookmark Removed Failed', 'cbxwpbookmark'),
			'error_msg'                  => esc_html__('Error loading data. Response code = ', 'cbxwpbookmark'),
			'category_name_empty'        => esc_html__('Category name can not be empty', 'cbxwpbookmark'),
			'add_to_head_defult'         => esc_html__('Click Category to Bookmark', 'cbxwpbookmark'),
			'category_loaded_edit'       => esc_html__('Click to Edit Category', 'cbxwpbookmark'),
			//'category_loaded_add'        => esc_html__('Click Category to Bookmark', 'cbxwpbookmark'),
			'max_cat_limit'              => 0,
			'max_cat_limit_error'        => esc_html__('Sorry, you reached the maximum category limit and to create one one, please delete unnecessary categories first','cbxwpbookmark'),
			'user_current_cat_count'     => 0,
			'user_current_cats'          => '',
			'user_can_create_cat'        => 1
			//'guest_warning'               => esc_html__('Please login to bookmark','cbxwpbookmark')
		);

		$cbxwpbookmark_translation = apply_filters('cbxwpbookmark_public_jsvar', $cbxwpbookmark_translation);

		wp_localize_script($this->plugin_name . 'publicjs', 'cbxwpbookmark', $cbxwpbookmark_translation);
		wp_enqueue_script($this->plugin_name . 'publicjs');

		do_action('cbxwpbookmark_js_end');
	}

}
