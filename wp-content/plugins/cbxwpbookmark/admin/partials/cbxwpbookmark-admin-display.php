<?php

	/**
	 * Provide a admin area view for the plugin
	 *
	 * This file is used to markup the admin-facing aspects of the plugin.
	 *
	 * @link       codeboxr.com
	 * @since      1.0.0
	 *
	 * @package    Cbxwpbookmark
	 * @subpackage Cbxwpbookmark/admin/partials
	 */
?>
<?php
	// If this file is called directly, abort.
	if (!defined('WPINC')) {
		die;
	}
?>

<!-- This file should primarily consist of HTML with a little bit of PHP. -->
<div class="wrap">
    <div id="icon-options-general" class="icon32"></div>
    <h2><?php esc_html_e( 'CBX WP Bookmark Setting', 'cbxwpbookmark' ); ?></h2>

    <div id="poststuff">

        <div id="post-body" class="metabox-holder columns-2">

            <!-- main content -->
            <div id="post-body-content">
                <div class="meta-box-sortables ui-sortable">
                    <div class="postbox">
                        <!--<h3><span><?php esc_html_e( 'Settings', 'cbxwpbookmark' ); ?></span></h3>-->
                        <div class="inside">
							<?php
								$this->settings_api->show_navigation();
								$this->settings_api->show_forms();
							?>
                        </div> <!-- .inside -->
                    </div> <!-- .postbox -->
                </div> <!-- .meta-box-sortables .ui-sortable -->
                <div class="meta-box-sortables ui-sortable">
                    <div class="postbox">
                        <h3><span><?php esc_html_e( 'CBX Bookmark Addons', 'cbxwpbookmark' ); ?></span></h3>
                        <div class="inside">
                            <div id="cbxbookmark_addon_wrap">
                                <div class="cbxbookmark_addon cbxbookmark_addon_proaddon">
                                    <div class="addons-banner-block-item-icon">
                                        <a href="https://codeboxr.com/product/cbx-wordpress-bookmark/" target="_blank">
                                            <img src="https://codeboxr.com/wp-content/uploads/productshots/445-profile.png"
                                                 alt="CBX Bookmark for WordPress"/>
                                        </a>
                                    </div>
                                    <div class="addons-banner-block-item-content">
                                        <h3><a href="https://codeboxr.com/product/cbx-wordpress-bookmark/"
                                               target="_blank">CBX Bookmark Pro Addon</a></h3>
                                        <p>Pro features for CBX Bookmark plugin.</p>
                                        <a target="_blank" class="button button-primary"
                                           href="https://codeboxr.com/product/cbx-wordpress-bookmark/?utm_source=product&amp;utm_medium=upsell&amp;utm_campaign=cbxwpbookmark">
                                            From: $20 </a>
                                    </div>
                                </div>
                                <div class="cbxbookmark_addon cbxbookmark_addon_mycred">
                                    <div class="addons-banner-block-item-icon">
                                        <a href="https://codeboxr.com/product/cbx-bookmark-mycred-addon/"
                                           target="_blank">
                                            <img src="https://codeboxr.com/wp-content/uploads/productshots/11792-profile.png"
                                                 alt="CBX Bookmark myCred Addon"/>
                                        </a>
                                    </div>
                                    <div class="addons-banner-block-item-content">
                                        <h3><a href="https://codeboxr.com/product/cbx-bookmark-mycred-addon/"
                                               target="_blank">CBX Bookmark myCred Addon</a></h3>
                                        <p>This plugin integrates CBX Bookmark plugin with myCred plugin. Users gets
                                            point by bookmarking a post</p>
                                        <a target="_blank" class="button button-primary"
                                           href="https://codeboxr.com/product/cbx-bookmark-mycred-addon/?utm_source=product&amp;utm_medium=upsell&amp;utm_campaign=cbxwpbookmark">
                                            From: $12 </a>
                                    </div>
                                </div>
                            </div>
                        </div> <!-- .inside -->
                    </div> <!-- .postbox -->
                </div> <!-- .meta-box-sortables .ui-sortable -->
            </div> <!-- post-body-content -->
			<?php
				include( 'sidebar.php' );
			?>


        </div> <!-- #post-body .metabox-holder .columns-2 -->

        <br class="clear">
    </div> <!-- #poststuff -->

</div> <!-- .wrap -->


<script type="text/javascript">

    jQuery(document).ready(function ($) {
        //if need any js code here
        //$('.chosen-select').chosen();
        $('.chosen-select').chosen({});

    });

</script>