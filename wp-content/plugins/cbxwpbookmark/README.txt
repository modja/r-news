=== CBX WP Bookmark ===
Contributors: manchumahara,codeboxr
Donate link: https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=NWVPKSXP6TCDS
Tags: bookmark,favorite,youtube,collection,user collection, user bookmark
Requires at least: 3.5
Tested up to: 4.9.6
Stable tag: 1.4.4
License: GPLv2 or later
License URI: http://www.gnu.org/licenses/gpl-2.0.html

Youtube like bookmark plugin for wordpress

== Description ==

This plugin is inspired from youtube's bookmark or favorite feature. User can create their own bookmark category public or private and save articles inside different folders.


Three Widgets

* My Bookmarked Posts
* My Bookmark Categories
* Most Bookmarked Items

Plain Features list

* Add Bookmark button like youtube under post, page etc
* Bookmark categories are per user
* Private or Public Category
* Three possible widgets to show the bookmarks

Three Shortcodes

* [cbxwpbookmark] Shows logged or any user's bookmarks
* [cbxwpbookmark-mycat] Shows logged or any user's bookmark category
* [cbxwpbookmark-most] Shows most bookmarked posts/items


Learn more details here [CBX Bookmark for WordPress](http://codeboxr.com/product/cbx-wordpress-bookmark)
[Help us translate this plugin](https://codeboxr.com/contact-us/)

Pro Addon: Core feature enhancement:

1. Custom Post type supports
2. Special widget for Easy Digital downloads (Most Boomarked Downloads)
3. Special widget for Woocommerce (Most Boomarked Products)
3. Grid view shortcode [cbxwpbookmarkgrid]
4. Buddypress Integration to show bookmarks in user profile in grid manner.

Pro Addon: myCred Integration:

1. User gets point after bookmark (configurable)
1. Point cuts from user after remove bookmark (configurable)

Download [CBX Bookmark myCred Addon](https://codeboxr.com/product/cbx-bookmark-mycred-addon/)


== Installation ==
How to install the plugin and get it working.


1. Upload `cbxwpbookmark ` folder  to the `/wp-content/plugins/` directory
2. Activate the plugin through the 'Plugins' menu in WordPress
3. Go to Setting-> CBX Wp Bookmark Setting to edit settings
4. In any post or page you can write shortcode as described
5. Frontend shortcode to edit any bookmark and bookmark category with delete feature
6. More will come soon as per user demand and natural user experience

== Frequently Asked Questions ==


== Screenshots ==
1. Frontend bookmark button and bookmark panel
2. Frontend bookmark category create
3. Shortcode in frontend
4. Frontend category edit from shortcode page
5. Most bookmark posts widget backend form
6. My bookmark category widget backend form
7. My bookmark widget backend form
8. Backend setting
9. Frontend widget display


== Changelog ==
= 1.4.4 =
* [Bug fix] Fixed two translation string which was not translated properly

= 1.4.3 =
* [Bug fix] urgent bug fix for undefined php function for most bookmark widget dashboard view

= 1.4.2 =
* [New] New helper method to get all image sizes CBXWPBookmarkHelper::get_all_image_sizes()
* [Improvement] All setting js and css are moved to individual css and js file in admin asset folder of the plugin for better management
* [Improvement] Plugin setting improvement for default option store and other minor improvement
* [New] On post delete bookmarks created for that post are deleted
* [Bugfix] Most bookmark widget php warning fix

= 1.4.1 =
* [New] Skip post id(s) in auto integration and shortcode
* [New] Skip for user roles in auto integration and shortcode

= 1.3.10 =
* [Buf Fix] Category bookmark count method fixed
* [New] New shortcode param for show/hide category bookmark count with title catcount 0/1

= 1.3.9 =
* [New] Total Bookmark count for any category added

= 1.3.8 =
* [New] Norwegian (Bokmål) language translation added
* [Bug fix] Bookmark user page category dropdown link page not found issue solved.

= 1.3.7 =
* [New] Delete category feature from bookmark popup
* [Bug Fix] PHP warning fix

= 1.3.6 =
* [Bug Fix] Minor style fix

= 1.3.5 =
* [Bug Fix] Is Bookmarked by user functionality added and fixed
* [New] Better responsive bookmark popup for mobile windows
* [New] Bookmark button shown for guest user and ask for login - a must have missing feature
* [New] Global Setting for show bookmark count or not
* [New] Show Category title in User's Bookmark count for any category (https://wordpress.org/support/topic/category-title-in-cbxwpbookmark/)

= 1.3.4 =
* [New] French Translation. Thanks to "Jean-marie Capes"
* [New] New helper method isBookmarked() added to class 'CBXWPBookmarkHelper' to check if any post is bookmarked once or not

= 1.3.3 =
* [New] New formated Bookmark button class added with modified html structure for better style support from theme.

= 1.3.2 =
* [New] SQL script updated for table creation

= 1.3.1 =
* [New] New global setting for auto integration: Show in Archive -yes/no
* [New] New global setting for auto integration: Show in Home -yes/no
* [New] New method for bookmark count for any post, class 'CBXWPBookmarkHelper', static method 'getTotalBookmark', example $bookmark_total = CBXWPBookmarkHelper::getTotalBookmark($objectid);
* [New] New Icons for bookmark and no bookmark
* [New] Bookmark counts near bookmark icon
* [Update] JS code changed for dynamic count update

= 1.3.0 =
* [Bug Fix] Fix bookmark delete bug caused in  last js code change

= 1.2.9 =
* [Improvement] New hooks added for bookmark add, bookmark remove, category add, category edit, category deleted
* [New] New pro addon released for mycred support compatibility from 1.2.9

= 1.2.8  =
* [Bug Fix] While createing category privacy status was not set properly or all set default private. Now Fixed.
* [Improvement] If no category created by user now popup bookmark panel shows message and guides to create one

= 1.2.6  =
* [Improvement] On Category select or delete from bookmark panel/popup now shows action messages.
* [Improvement] Bookmark panel/popup style fix for bootstrap theme

= 1.2.6  =
* [Bug Fix]Bookmark Create window close issue for mobile devices[Added a close icon]
* [New] Added new search icon in bookmark popup category search
* [Improvement] From bookmark popup category creation error and success message
* [Improvement] Bookmark popup style and performance improvement


= 1.2.5  =
* Readme updated
* Documentaiton update
* Translation update
* Grid view shortcode [cbxwpbookmarkgrid]

= 1.2.4  =
* Minor Logic update in codebase

= 1.2.3  =
* Rebranded as Codeboxr.com from wpboxr.com
* CSS style tweaked

= 1.2.2  =
* Category selection bug for custom post type while loading on click + button

= 1.2.0  =
* Fixed typo for &nbsp  to  &nbsp;

= 1.2.0  =
* Category wigdet dropdown  now work on click to redirect to proper page
* Category permalink now works for non seo friendly mode


= 1.1.0  =
* Removed shortcode [cbxwpbookmark-mycat-edit]  and now use [cbxwpbookmark-mycat]
* Removed shortcode [cbxwpbookmark-edit]  and now use [cbxwpbookmark]
* lots of minor improvement, privacy check etc

= 1.0.10
* Immediate bug fix after first release, all shortcode, widget are refreshed
* js improved

= 1.0.8 =
* first release
