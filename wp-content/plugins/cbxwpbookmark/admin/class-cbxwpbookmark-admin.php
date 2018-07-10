<?php
	// If this file is called directly, abort.
	if ( ! defined( 'WPINC' ) ) {
		die;
	}
?>
<?php

	/**
	 * The admin-specific functionality of the plugin.
	 *
	 * @link       codeboxr.com
	 * @since      1.0.0
	 *
	 * @package    Cbxwpbookmark
	 * @subpackage Cbxwpbookmark/admin
	 */


	/**
	 * The admin-specific functionality of the plugin.
	 *
	 * Defines the plugin name, version, and two examples hooks for how to
	 * enqueue the admin-specific stylesheet and JavaScript.
	 *
	 * @package    Cbxwpbookmark
	 * @subpackage Cbxwpbookmark/admin
	 * @author     CBX Team  <info@codeboxr.com>
	 */
	class Cbxwpbookmark_Admin {

		/**
		 * The ID of this plugin.
		 *
		 * @since    1.0.0
		 * @access   private
		 * @var      string $plugin_name The ID of this plugin.
		 */
		private $plugin_name;

		/**
		 * The loader that's responsible for maintaining and registering all hooks that power
		 * the plugin.
		 *
		 * @since    1.0.0
		 * @access   protected
		 * @var      Cbxwpbookmark_Loader $loader Maintains and registers all hooks for the plugin.
		 */
		protected $loader;

		/**
		 * Slug of the plugin screen.
		 *
		 * @since    1.0.0
		 *
		 * @var      string
		 */
		protected $plugin_screen_hook_suffix = null;

		/**
		 * The version of this plugin.
		 *
		 * @since    1.0.0
		 * @access   private
		 * @var      string $version The current version of this plugin.
		 */
		private $version;

		/**
		 * The settings api of this plugin.
		 *
		 * @since    1.0.0
		 * @access   private
		 * @var      string $settings_api settings api of this plugin.
		 */
		private $settings_api;

		/**
		 * The plugin basename of the plugin.
		 *
		 * @since    1.0.0
		 * @access   protected
		 * @var      string $plugin_basename The plugin basename of the plugin.
		 */
		protected $plugin_basename;

		/**
		 * The ID of this plugin.
		 *
		 * @since    1.0.0
		 * @access   private
		 * @var      string $cbxwpbookmark The ID of this plugin.
		 */
		private $cbxwpbookmark;

		/**
		 * Initialize the class and set its properties.
		 *
		 * @since    1.0.0
		 *
		 * @param      string $plugin_name The name of this plugin.
		 * @param      string $version     The version of this plugin.
		 */
		public function __construct( $plugin_name, $version ) {

			$this->cbxwpbookmark = $plugin_name;
			$this->plugin_name   = $plugin_name;
			$this->version       = $version;

			$this->plugin_basename = plugin_basename( plugin_dir_path( __DIR__ ) . $this->cbxwpbookmark . '.php' );

			$this->settings_api = new CBXWPBookmark_Settings_API( $plugin_name, $version );
		}

		public function setting_init() {
			//set the settings
			$this->settings_api->set_sections( $this->get_settings_sections() );
			$this->settings_api->set_fields( $this->get_settings_fields() );

			//initialize settings
			$this->settings_api->admin_init();
		}

		/**
		 * Adds hook for post delete - delete bookmark for those post
		 */
		public function on_bookmarkpost_delete() {

			add_action( 'delete_post', array( $this, 'delete_bookmark' ), 10 );
		}

		/**
		 * Delete bookmark on post delete
		 *
		 * @param type $postid
		 */
		public function delete_bookmark( $post_id ) {
			global $wpdb;

			$bookmark_table = $wpdb->prefix . 'cbxwpbookmark';
			$wpdb->query( $wpdb->prepare( "DELETE FROM $bookmark_table WHERE object_id = %d", $post_id ) );
		}

		/**
		 * Full plugin reset and redirect
		 */
		public function plugin_fullreset(){
			global $wpdb;

			$option_prefix = 'cbxwpbookmark_';

			$option_values = CBXWPBookmarkHelper::getAllOptionNames();

			foreach ($option_values as $key => $accounting_option_value ){
				delete_option($accounting_option_value['option_name']);
			}

			do_action('cbxwpbookmark_plugin_option_delete');


			//delete tables

			$table_names = CBXWPBookmarkHelper::getAllDBTablesList();
			$sql = "DROP TABLE IF EXISTS " . implode(', ', array_values($table_names));
			$query_result = $wpdb->query($sql);

			do_action('cbxwpbookmark_plugin_table_delete');

			// create plugin's core table tables
			activate_cbxwpbookmark();

			//please note that, the default otpions will be created by default

			//3rd party plugin's table creation
			do_action('cbxwpbookmark_plugin_reset', $table_names, $option_prefix);



			$this->settings_api->set_sections($this->get_settings_sections());
			$this->settings_api->set_fields($this->get_settings_fields());
			$this->settings_api->admin_init();

			wp_safe_redirect(admin_url('options-general.php?page=cbxwpbookmark_settings#cbxwpbookmark_tools'));
			exit();
		}



		/**
		 * Register the stylesheets for the admin area.
		 *
		 * @since    1.0.0
		 */
		public function enqueue_styles( $hook ) {
			if ( $hook != 'settings_page_cbxwpbookmark_settings' ) {
				return;
			}

			wp_enqueue_style( 'wp-color-picker' );

			wp_register_style( 'cbxbookmarkchoosen', plugin_dir_url( __FILE__ ) . 'css/chosen.min.css', array(), $this->version, 'all' );
			wp_register_style( 'cbxwpbookmark-admin', plugin_dir_url( __FILE__ ) . 'css/cbxwpbookmark-admin.css', array(
				'cbxbookmarkchoosen',
				'wp-color-picker'
			), $this->version, 'all' );

			wp_enqueue_style( 'cbxbookmarkchoosen' );
			wp_enqueue_style( 'cbxwpbookmark-admin' );
		}

		/**
		 * Register the JavaScript for the admin area.
		 *
		 * @since    1.0.0
		 */
		public function enqueue_scripts( $hook ) {



			if ( $hook != 'settings_page_cbxwpbookmark_settings' ) {
				return;
			}

			wp_enqueue_script( 'jquery' );


			wp_enqueue_media();
			wp_enqueue_script( 'wp-color-picker' );


			wp_register_script( 'cbxbookmarkchoosen', plugin_dir_url( __FILE__ ) . 'js/chosen.jquery.min.js', array( 'jquery' ), $this->version, true );
			wp_register_script( 'cbxwpbookmark-admin', plugin_dir_url( __FILE__ ) . 'js/cbxwpbookmark-admin.js', array(
				'jquery',
				'cbxbookmarkchoosen',
				'wp-color-picker'
			), $this->version, true );

			wp_enqueue_script( 'cbxbookmarkchoosen' );
			wp_enqueue_script( 'cbxwpbookmark-admin' );
		}

		/**
		 * To access all loader class property
		 *
		 * @param Loader class object $loader
		 *
		 * @since 1.0.0
		 */
		public function set_loader( $loader ) {
			$this->loader = $loader;
		}

		/**
		 * Run all administrator program from here
		 *
		 * @since   1.0.0
		 */
		public function run() {

			//Add admin menu action hook
			$this->loader->add_action( 'admin_menu', $this, 'add_plugin_admin_menu' );

		}

		/**
		 * Tab Defination
		 *
		 * @return array
		 */
		public function get_settings_sections() {

			return apply_filters( 'cbxwpbookmark_setting_sections', array(

				array(
					'id'    => 'cbxwpbookmark_basics',
					'title' => esc_html__( 'Default Settings', 'cbxwpbookmark' )
				),
				array(
					'id'    => 'cbxwpbookmark_tools',
					'title' => esc_html__( 'Tools', 'cbxwpbookmark' )
				)
			) );
		}


		/**
		 * Returns post types as array
		 *
		 * @return array
		 */
		public function post_types() {
			$post_type_args = array(
				'builtin' => array(
					'options' => array(
						'public'   => true,
						'_builtin' => true,
						'show_ui'  => true,
					),
					'label'   => esc_html__( 'Built in post types', 'cbxwpbookmark' ),
				)

			);

			$post_type_args = apply_filters( 'cbxwpbookmark_post_types', $post_type_args );

			$output    = 'objects'; // names or objects, note names is the default
			$operator  = 'and'; // 'and' or 'or'
			$postTypes = array();

			foreach ( $post_type_args as $postArgType => $postArgTypeArr ) {
				$types = get_post_types( $postArgTypeArr['options'], $output, $operator );

				if ( ! empty( $types ) ) {
					foreach ( $types as $type ) {
						$postTypes[ $postArgType ]['label']                = $postArgTypeArr['label'];
						$postTypes[ $postArgType ]['types'][ $type->name ] = $type->labels->name;
					}
				}
			}

			return $postTypes;
		}

		/**
		 * Return the key value pair of posttypes
		 *
		 * @param $all_post_types array
		 */

		public function get_formatted_posttype_multicheckbox( $all_post_types ) {

			$posts_defination = array();

			foreach ( $all_post_types as $key => $post_type_defination ) {
				foreach ( $post_type_defination as $post_type_type => $data ) {
					if ( $post_type_type == 'label' ) {
						$opt_grouplabel = $data;
					}

					if ( $post_type_type == 'types' ) {
						foreach ( $data as $opt_key => $opt_val ) {
							$posts_defination[ $opt_grouplabel ][ $opt_key ] = __( $opt_val, 'cbxwpbookmark' );
						}
					}
				}
			}

			return $posts_defination;
		}

		/**
		 * Returns all the settings fields
		 *
		 * @return array settings fields
		 */
		public function get_settings_fields() {
			global $wp_roles;
			// now this is for meta box
			$roles = CBXWPBookmarkHelper::user_roles( false, true );


			$posts_defination = $this->get_formatted_posttype_multicheckbox( $this->post_types() );

			$reset_data_link = add_query_arg('cbxwpbookmark_fullreset', 1, admin_url('options-general.php?page=cbxwpbookmark_settings'));

			$table_names = CBXWPBookmarkHelper::getAllDBTablesList();
			$table_html = '<p id="cbxwpbookmark_plg_gfig_info"><strong>'.esc_html__('Following database tables will be reset/deleted.', 'cbxlatesttweets').'</strong></p>';

			$table_counter = 1;
			foreach($table_names as $key => $value){
				$table_html .= '<p>'.str_pad($table_counter, 2, '0', STR_PAD_LEFT).'. '.$key.' - (<code>'.$value.'</code>)</p>';
				$table_counter++;
			}

			$table_html .= '<p><strong>'.esc_html__('Following option values created by this plugin(including addon) from wordpress core option table','cbxlatesttweets').'</strong></p>';


			$option_values = CBXWPBookmarkHelper::getAllOptionNames();
			$table_counter = 1;
			foreach($option_values as $key => $value){
				$table_html .= '<p>'.str_pad($table_counter, 2, '0', STR_PAD_LEFT).'. '.$value['option_name'].' - '.$value['option_id'].' - (<code style="overflow-wrap: break-word; word-break: break-all;">'.$value['option_value'].'</code>)</p>';

				$table_counter++;
			}


			$pages         = get_pages();
			$pages_options = array();
			if ( $pages ) {
				foreach ( $pages as $page ) {
					$pages_options[ $page->ID ] = $page->post_title;
				}
			}

			$mybookmark_pageid_link = '#';
			$cbxwpbookmark_basics   = get_option( 'cbxwpbookmark_basics' );
			if ( $cbxwpbookmark_basics !== false && isset( $cbxwpbookmark_basics['mybookmark_pageid'] ) && intval( $cbxwpbookmark_basics['mybookmark_pageid'] ) > 0 ) {
				$mybookmark_pageid_link = get_permalink( $cbxwpbookmark_basics['mybookmark_pageid'] );
			}

			$settings_builtin_fields =
				array(
					'cbxwpbookmark_basics'      => array(
						'cbxbookmarkpostion' => array(
							'name'    => 'cbxbookmarkpostion',
							'label'   => esc_html__( 'Position', 'cbxwpbookmark' ),
							'desc'    => esc_html__( 'Adding position', 'cbxwpbookmark' ),
							'type'    => 'select',
							'default' => 'after_content',
							'options' => array(
								'before_content' => esc_html__( 'Before Content', 'cbxwpbookmark' ),
								'after_content'  => esc_html__( 'After Content', 'cbxwpbookmark' ),
								'disable'        => esc_html__( 'Disable Auto Integration', 'cbxwpbookmark' ),
							)
						),
						'skip_ids'           => array(
							'name'     => 'skip_ids',
							'label'    => esc_html__( 'Skip Post Id(s)', 'cbxwpbookmark' ),
							'desc'     => esc_html__( 'Skip to show bookmark button for post id, put post id as comma separated for multiple', 'cbxwpbookmarkaddon' ),
							'type'     => 'text',
							'default'  => '',
							'desc_tip' => true,
						),
						'skip_roles'         => array(
							'name'     => 'skip_roles',
							'label'    => esc_html__( 'Skip for User Role', 'cbxwpbookmark' ),
							'desc'     => esc_html__( 'Skip to show bookmark button for user roles', 'cbxwpbookmark' ),
							'type'     => 'multiselect',
							'optgroup' => 1,
							'options'  => $roles,
							'default'  => array(),
							'desc_tip' => true,
						),
						'showinarchive'      => array(
							'name'    => 'showinarchive',
							'label'   => esc_html__( 'Show in Archive', 'cbxwpbookmark' ),
							'desc'    => esc_html__( 'Show in Archive', 'cbxwpbookmark' ),
							'type'    => 'select',
							'default' => '0',
							'options' => array(
								'1' => esc_html__( 'Yes', 'cbxwpbookmark' ),
								'0' => esc_html__( 'No', 'cbxwpbookmark' ),
							)
						),
						'showinhome'         => array(
							'name'    => 'showinhome',
							'label'   => esc_html__( 'Show in Home', 'cbxwpbookmark' ),
							'desc'    => esc_html__( 'Show in Home', 'cbxwpbookmark' ),
							'type'    => 'select',
							'default' => '0',
							'options' => array(
								'1' => esc_html__( 'Yes', 'cbxwpbookmark' ),
								'0' => esc_html__( 'No', 'cbxwpbookmark' ),
							)
						),

						'cbxbookmarkposttypes' => array(
							'name'     => 'cbxbookmarkposttypes',
							'label'    => esc_html__( 'Post Type Selection', 'cbxwpbookmark' ),
							'desc'     => esc_html__( 'Post Type Selection', 'cbxwpbookmark' ),
							'type'     => 'multiselect',
							'optgroup' => 1,
							'default'  => array( 'post', 'page' ),
							'options'  => $posts_defination
						),
						'showcount'            => array(
							'name'    => 'showcount',
							'label'   => esc_html__( 'Show count', 'cbxwpbookmark' ),
							'desc'    => esc_html__( 'Show bookmark count', 'cbxwpbookmark' ),
							'type'    => 'radio',
							'default' => '1',
							'options' => array(
								'1' => esc_html__( 'Yes', 'cbxwpbookmark' ),
								'0' => esc_html__( 'No', 'cbxwpbookmark' ),
							)
						),
						'mybookmark_pageid'    => array(
							'name'    => 'mybookmark_pageid',
							'label'   => esc_html__( 'My Bookmark Page', 'cbxwpbookmark' ),
							'desc'    => sprintf( __( 'User\'s private bookmark page. <a href="%s" target="_blank">Visit</a>', 'cbxwpbookmark' ), $mybookmark_pageid_link ),
							'type'    => 'select',
							'default' => 0,
							'options' => $pages_options
						)
					),
					'cbxwpbookmark_tools'       => array(
						'delete_global_config' => array(
							'name'     => 'delete_global_config',
							'label'    => esc_html__( 'On Uninstall delete plugin data', 'cbxwpbookmark' ),
							'desc'     => '<p>' . __( 'Delete Global Config data and custom table created by this plugin on uninstall.', 'cbxwpbookmark' ) . ' ' . __( 'Details table information is <a href="#cbxwpbookmark_plg_gfig_info">here</a>', 'cbxwpbookmark' ) . '</p>' . '<p>' . __( '<strong>Please note that this process can not be undone and it is recommended to keep full database backup before doing this.</strong>', 'cbxwpbookmark' ) . '</p>',
							'type'     => 'radio',
							'options'  => array(
								'yes' => esc_html__( 'Yes', 'cbxwpbookmark' ),
								'no'  => esc_html__( 'No', 'cbxwpbookmark' ),
							),
							'default'  => 'no',
							'desc_tip' => true,
						),
						'reset_data'           => array(
							'name'     => 'reset_data',
							'label'    => esc_html__( 'Reset all data', 'cbxwpbookmark' ),
							'desc'     => sprintf( __( 'Reset option values and all tables created by this plugin. 
<a class="button button-primary" onclick="return confirm(\'%s\')" href="%s">Reset Data</a>', 'cbxwpbookmark' ), esc_html__( 'Are you sure to reset all data, this process can not be undone?', 'cbxwpbookmark' ), $reset_data_link ) . $table_html,
							'type'     => 'html',
							'default'  => 'off',
							'desc_tip' => true,
						)

					)
				);

			$settings_fields = array(); //final setting array that will be passed to different filters

			$sections = $this->get_settings_sections();

			foreach ( $sections as $section ) {
				if ( ! isset( $settings_builtin_fields[ $section['id'] ] ) ) {
					$settings_builtin_fields[ $section['id'] ] = array();
				}
			}

			foreach ( $sections as $section ) {

				$settings_fields[ $section['id'] ] = apply_filters( 'cbxwpbookmark_global_' . $section['id'] . '_fields', $settings_builtin_fields[ $section['id'] ] );
			}

			$settings_fields = apply_filters( 'cbxwpbookmark_global_fields', $settings_fields ); //final filter if need

			return $settings_fields;
		}

		/**
		 * Register the administration menu for this plugin into the WordPress Dashboard menu.
		 *
		 * @since    1.0.0
		 */
		public function add_plugin_admin_menu() {
			//overview
			$this->plugin_screen_hook_suffix = add_options_page( 'CBX WP Bookmark', 'CBX WP Bookmark', 'manage_options', 'cbxwpbookmark_settings', array(
				$this,
				'display_plugin_admin_settings'
			) );
		}

		/**
		 * Admin page for settings of this plugin
		 *
		 * @since    1.0.0
		 */
		public function display_plugin_admin_settings() {
			global $wpdb;

			$plugin_data = get_plugin_data( plugin_dir_path( __DIR__ ) . '/../' . $this->plugin_basename );

			include( 'partials/cbxwpbookmark-admin-display.php' );
		}

	}
