-- phpMyAdmin SQL Dump
-- version 4.4.7
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 11, 2018 at 06:22 AM
-- Server version: 5.7.22-0ubuntu18.04.1
-- PHP Version: 5.6.32-1+ubuntu17.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ralali`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_cbxwpbookmark`
--

CREATE TABLE IF NOT EXISTS `wp_cbxwpbookmark` (
  `id` mediumint(9) NOT NULL,
  `object_id` int(11) NOT NULL,
  `object_type` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `cat_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modyfied_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_cbxwpbookmark`
--

INSERT INTO `wp_cbxwpbookmark` (`id`, `object_id`, `object_type`, `cat_id`, `user_id`, `created_date`, `modyfied_date`) VALUES
(1, 121, 'post', 1, 1, '2018-07-10 00:39:33', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `wp_cbxwpbookmarkcat`
--

CREATE TABLE IF NOT EXISTS `wp_cbxwpbookmarkcat` (
  `id` mediumint(9) NOT NULL,
  `cat_name` varchar(55) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `privacy` tinyint(2) NOT NULL DEFAULT '1',
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modyfied_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_cbxwpbookmarkcat`
--

INSERT INTO `wp_cbxwpbookmarkcat` (`id`, `cat_name`, `user_id`, `privacy`, `created_date`, `modyfied_date`) VALUES
(1, 'test-book-mark', 1, 1, '2018-07-10 00:39:31', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE IF NOT EXISTS `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(2, 97, 'admin', 'sandyharyono@gmail.com', '', '::1', '2018-06-29 11:13:31', '2018-06-29 11:13:31', 'test', 0, '1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '', 0, 1),
(3, 97, 'Sandy H', 'sandy@onewaymail.com', '', '::1', '2018-07-02 01:24:29', '2018-07-02 01:24:29', 'tesssss', 0, '1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '', 0, 2),
(4, 73, 'Sandy H', 'sandy@onewaymail.com', '', '::1', '2018-07-02 01:28:53', '2018-07-02 01:28:53', 'oyayyayayaa', 0, '1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '', 0, 2),
(5, 100, 'admin', 'sandyharyono@gmail.com', '', '::1', '2018-07-04 14:48:42', '2018-07-04 14:48:42', 'ssssss', 0, '1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '', 0, 1),
(6, 100, 'admin', 'sandyharyono@gmail.com', '', '::1', '2018-07-04 14:49:12', '2018-07-04 14:49:12', 'dua', 0, '1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '', 0, 1),
(7, 108, 'admin', 'sandyharyono@gmail.com', '', '::1', '2018-07-04 23:24:16', '2018-07-04 23:24:16', 'cobaaaa', 0, '1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '', 0, 1),
(8, 105, 'admin', 'sandyharyono@gmail.com', '', '::1', '2018-07-04 23:27:08', '2018-07-04 23:27:08', 'test aja', 0, '1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE IF NOT EXISTS `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_mailtarget_forms`
--

CREATE TABLE IF NOT EXISTS `wp_mailtarget_forms` (
  `id` mediumint(9) NOT NULL,
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `form_id` tinytext COLLATE utf8mb4_bin NOT NULL,
  `name` tinytext COLLATE utf8mb4_bin NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT '1',
  `data` text COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `wp_mailtarget_forms`
--

INSERT INTO `wp_mailtarget_forms` (`id`, `time`, `form_id`, `name`, `type`, `data`) VALUES
(1, '2018-07-07 17:04:30', '5b40e6f76cb62a1b4190da33', 'test', 1, '{"widget_title":"test-title","widget_description":"ini descriptionnya","widget_submit_desc":"tesssttt","widget_redir":null}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB AUTO_INCREMENT=847 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/r-news', 'yes'),
(2, 'home', 'http://localhost/r-news', 'yes'),
(3, 'blogname', 'Ralali-Title', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'sandyharyono@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:89:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:58:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:68:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:88:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:64:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:53:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$";s:91:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:77:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:65:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:61:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:47:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:57:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:77:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:53:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:51:"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:38:"([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:3:{i:1;s:51:"fancy-facebook-comments/fancy-facebook-comments.php";i:2;s:41:"sassy-social-share/sassy-social-share.php";i:3;s:27:"simple-tags/simple-tags.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'r-news', 'yes'),
(41, 'stylesheet', 'r-news', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:3:{s:58:"ultimate-social-media-plus/ultimate_social_media_icons.php";a:2:{i:0;s:8:"Freemius";i:1;s:22:"_uninstall_plugin_hook";}s:43:"insert-html-snippet/insert-html-snippet.php";s:25:"xyz_ihs_network_uninstall";s:31:"cbxwpbookmark/cbxwpbookmark.php";s:23:"uninstall_cbxwpbookmark";}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'initial_db_version', '38590', 'yes'),
(93, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:63:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:11:"simple_tags";b:1;s:17:"admin_simple_tags";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:35:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:11:"simple_tags";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(94, 'fresh_site', '0', 'yes'),
(95, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_recent-posts', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:6:"number";i:5;s:9:"show_date";b:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(100, 'sidebars_widgets', 'a:3:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:7:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";i:6;s:12:"simpletags-2";}s:13:"array_version";i:3;}', 'yes'),
(101, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'widget_media_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(105, 'widget_media_gallery', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(106, 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(107, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(108, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(109, 'widget_custom_html', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(110, 'cron', 'a:6:{i:1531266872;a:1:{s:34:"wp_privacy_delete_old_export_files";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"hourly";s:4:"args";a:0:{}s:8:"interval";i:3600;}}}i:1531268996;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1531277672;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1531320975;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1531320976;a:1:{s:25:"delete_expired_transients";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(111, 'theme_mods_twentyseventeen', 'a:3:{s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1530743512;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:7:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";i:6;s:12:"simpletags-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}s:18:"nav_menu_locations";a:1:{s:3:"top";i:15;}}', 'yes'),
(115, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:2:{i:0;O:8:"stdClass":10:{s:8:"response";s:7:"upgrade";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.9.7.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.9.7.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.9.7-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.9.7-new-bundled.zip";s:7:"partial";s:69:"https://downloads.wordpress.org/release/wordpress-4.9.7-partial-6.zip";s:8:"rollback";b:0;}s:7:"current";s:5:"4.9.7";s:7:"version";s:5:"4.9.7";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:5:"4.9.6";}i:1;O:8:"stdClass":11:{s:8:"response";s:10:"autoupdate";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.9.7.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.9.7.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.9.7-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.9.7-new-bundled.zip";s:7:"partial";s:69:"https://downloads.wordpress.org/release/wordpress-4.9.7-partial-6.zip";s:8:"rollback";s:70:"https://downloads.wordpress.org/release/wordpress-4.9.7-rollback-6.zip";}s:7:"current";s:5:"4.9.7";s:7:"version";s:5:"4.9.7";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:5:"4.9.6";s:9:"new_files";s:0:"";}}s:12:"last_checked";i:1531262686;s:15:"version_checked";s:5:"4.9.6";s:12:"translations";a:0:{}}', 'no'),
(120, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1531262694;s:7:"checked";a:4:{s:6:"r-news";s:0:"";s:13:"twentyfifteen";s:3:"2.0";s:15:"twentyseventeen";s:3:"1.6";s:13:"twentysixteen";s:3:"1.5";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}', 'no'),
(124, 'can_compress_scripts', '0', 'no'),
(140, 'recently_activated', 'a:4:{s:31:"cbxwpbookmark/cbxwpbookmark.php";i:1531264846;s:43:"insert-html-snippet/insert-html-snippet.php";i:1531036862;s:40:"mailtarget-form/MailtargetFormPlugin.php";i:1530983100;s:58:"ultimate-social-media-plus/ultimate_social_media_icons.php";i:1530970251;}', 'yes'),
(176, 'current_theme', '', 'yes'),
(177, 'theme_mods_r-news', 'a:4:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:6:"menu-1";i:15;}s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1530743219;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:7:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";i:6;s:12:"simpletags-2";}}}}', 'yes'),
(178, 'theme_switched', '', 'yes'),
(268, 'category_children', 'a:0:{}', 'yes'),
(271, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:1:{i:0;i:15;}}', 'yes'),
(283, 'theme_mods_twentysixteen', 'a:4:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:7:"primary";i:15;}s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1530152463;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes'),
(295, '_transient_twentysixteen_categories', '2', 'yes'),
(297, 'theme_mods_twentyfifteen', 'a:4:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:7:"primary";i:15;}s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1530152853;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(298, '_transient_twentyfifteen_categories', '2', 'yes'),
(358, 'simpletags', 'a:68:{s:13:"use_tag_pages";i:1;s:16:"active_mass_edit";i:1;s:13:"active_manage";i:0;s:20:"active_related_posts";i:0;s:15:"active_autotags";i:1;s:18:"allow_embed_tcloud";i:0;s:14:"use_click_tags";i:1;s:18:"use_suggested_tags";s:1:"0";s:18:"use_autocompletion";i:1;s:14:"auto_link_tags";i:0;s:13:"auto_link_min";i:1;s:14:"auto_link_case";i:1;s:17:"auto_link_exclude";s:0:"";s:21:"auto_link_max_by_post";i:10;s:20:"auto_link_max_by_tag";i:1;s:18:"auto_link_priority";i:12;s:15:"auto_link_views";s:8:"singular";s:13:"auto_link_dom";i:0;s:15:"auto_link_title";s:20:"Posts tagged with %s";s:16:"order_click_tags";s:10:"count-desc";s:14:"opencalais_key";s:0:"";s:11:"datatxt_key";s:0:"";s:10:"datatxt_id";s:0:"";s:20:"datatxt_access_token";s:0:"";s:22:"datatxt_min_confidence";s:3:"0.6";s:11:"alchemy_api";s:0:"";s:11:"zemanta_key";s:0:"";s:12:"tag4site_key";s:0:"";s:10:"proxem_key";s:0:"";s:11:"proxem_lang";s:1:"0";s:17:"autocomplete_type";s:5:"input";s:16:"autocomplete_min";s:1:"3";s:17:"autocomplete_mode";s:1:"0";s:7:"tt_feed";i:0;s:11:"tt_embedded";s:2:"no";s:12:"tt_separator";s:1:" ";s:9:"tt_before";s:0:"";s:8:"tt_after";s:6:"<br />";s:13:"tt_notagstext";s:22:"No tags for this post.";s:9:"tt_number";i:0;s:11:"tt_inc_cats";i:0;s:10:"tt_xformat";s:99:" <a class="button is-rounded is-dark" href="%tag_link%" title="%tag_name%" %tag_rel%>%tag_name%</a>";s:12:"tt_adv_usage";s:0:"";s:11:"rp_taxonomy";s:8:"post_tag";s:7:"rp_feed";i:0;s:11:"rp_embedded";s:2:"no";s:8:"rp_order";s:10:"count-desc";s:12:"rp_limit_qty";i:5;s:13:"rp_notagstext";s:17:"No related posts.";s:8:"rp_title";s:22:"<h4>Related posts</h4>";s:10:"rp_xformat";s:95:"<a href="%post_permalink%" title="%post_title% (%post_date%)">%post_title%</a> (%post_comment%)";s:12:"rp_adv_usage";s:0:"";s:14:"cloud_taxonomy";s:1:"0";s:17:"cloud_selectionby";s:5:"count";s:15:"cloud_selection";s:4:"desc";s:13:"cloud_orderby";s:6:"random";s:11:"cloud_order";s:3:"asc";s:15:"cloud_limit_qty";i:45;s:16:"cloud_notagstext";s:8:"No tags.";s:11:"cloud_title";s:18:"<h4>Tag Cloud</h4>";s:12:"cloud_format";s:4:"flat";s:13:"cloud_xformat";s:155:"<a href="%tag_link%" id="tag-link-%tag_id%" class="st-tags t%tag_scale%" title="%tag_count% topics" %tag_rel% style="%tag_size% %tag_color%">%tag_name%</a>";s:15:"cloud_max_color";s:7:"#000000";s:15:"cloud_min_color";s:7:"#CCCCCC";s:14:"cloud_max_size";i:22;s:14:"cloud_min_size";i:8;s:10:"cloud_unit";s:2:"pt";s:15:"cloud_adv_usage";s:0:"";}', 'yes'),
(359, 'simpletags-version', '2.4.7', 'yes'),
(360, 'widget_simpletags', 'a:2:{i:2;a:16:{s:8:"taxonomy";s:8:"post_tag";s:5:"title";s:9:"Tag cloud";s:3:"max";s:2:"45";s:11:"selectionby";s:5:"count";s:9:"selection";s:4:"desc";s:7:"orderby";s:6:"random";s:5:"order";s:3:"asc";s:5:"smini";s:1:"8";s:4:"smax";s:2:"22";s:4:"unit";s:2:"pt";s:6:"format";s:4:"flat";s:5:"color";s:0:"";s:5:"cmini";s:7:"#CCCCCC";s:4:"cmax";s:7:"#000000";s:7:"xformat";s:0:"";s:9:"adv_usage";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(502, 'fs_active_plugins', 'O:8:"stdClass":0:{}', 'yes'),
(503, 'fs_debug_mode', '', 'yes'),
(504, 'fs_accounts', 'a:11:{s:11:"plugin_data";a:1:{s:26:"ultimate-social-media-plus";a:17:{s:16:"plugin_main_file";O:8:"stdClass":1:{s:9:"prev_path";s:104:"/home/sandy/rootPHP/r-news/wp-content/plugins/ultimate-social-media-plus/ultimate_social_media_icons.php";}s:17:"install_timestamp";i:1530748425;s:16:"sdk_last_version";N;s:11:"sdk_version";s:9:"1.2.1.6.1";s:16:"sdk_upgrade_mode";b:1;s:18:"sdk_downgrade_mode";b:0;s:19:"plugin_last_version";N;s:14:"plugin_version";s:5:"2.8.9";s:19:"plugin_upgrade_mode";b:1;s:21:"plugin_downgrade_mode";b:0;s:21:"is_plugin_new_install";b:1;s:17:"connectivity_test";a:6:{s:12:"is_connected";b:1;s:4:"host";s:9:"localhost";s:9:"server_ip";s:3:"::1";s:9:"is_active";b:1;s:9:"timestamp";i:1530748425;s:7:"version";s:5:"2.8.9";}s:17:"was_plugin_loaded";b:1;s:15:"prev_is_premium";b:0;s:14:"has_trial_plan";b:1;s:22:"install_sync_timestamp";i:1530970247;s:20:"activation_timestamp";i:1530748456;}}s:13:"file_slug_map";a:1:{s:58:"ultimate-social-media-plus/ultimate_social_media_icons.php";s:26:"ultimate-social-media-plus";}s:7:"plugins";a:1:{s:26:"ultimate-social-media-plus";O:9:"FS_Plugin":16:{s:16:"parent_plugin_id";N;s:5:"title";s:26:"Ultimate Social Media PLUS";s:4:"slug";s:26:"ultimate-social-media-plus";s:4:"type";N;s:4:"file";s:58:"ultimate-social-media-plus/ultimate_social_media_icons.php";s:7:"version";s:5:"2.8.9";s:11:"auto_update";N;s:4:"info";N;s:10:"is_premium";b:0;s:7:"is_live";b:1;s:10:"public_key";s:32:"pk_716f722d8ecd3d70a5c60177306c1";s:10:"secret_key";N;s:2:"id";s:4:"1046";s:7:"updated";N;s:7:"created";N;s:22:"\0FS_Entity\0_is_updated";b:0;}}s:9:"unique_id";s:32:"d61008da25022fd9ded986c223fc964f";s:5:"plans";a:1:{s:26:"ultimate-social-media-plus";a:1:{i:0;O:14:"FS_Plugin_Plan":21:{s:9:"plugin_id";s:8:"MTA0Ng==";s:4:"name";s:8:"ZnJlZQ==";s:5:"title";s:8:"RnJlZQ==";s:11:"description";N;s:17:"is_free_localhost";s:4:"MQ==";s:17:"is_block_features";s:4:"MQ==";s:12:"license_type";s:4:"MA==";s:16:"is_https_support";s:0:"";s:12:"trial_period";N;s:23:"is_require_subscription";s:0:"";s:10:"support_kb";N;s:13:"support_forum";N;s:13:"support_email";N;s:13:"support_phone";N;s:13:"support_skype";N;s:18:"is_success_manager";s:0:"";s:11:"is_featured";s:0:"";s:2:"id";s:8:"MTQ1Mw==";s:7:"updated";N;s:7:"created";s:28:"MjAxNy0wNS0xMSAwNjo1ODo1NA==";s:22:"\0FS_Entity\0_is_updated";b:0;}}}s:5:"sites";a:1:{s:26:"ultimate-social-media-plus";O:7:"FS_Site":24:{s:4:"slug";N;s:7:"site_id";s:7:"4520007";s:9:"plugin_id";s:4:"1046";s:7:"user_id";s:7:"1289985";s:5:"title";s:12:"Ralali-Title";s:3:"url";s:23:"http://localhost/r-news";s:7:"version";s:5:"2.8.9";s:8:"language";s:5:"en-US";s:7:"charset";s:5:"UTF-8";s:16:"platform_version";s:5:"4.9.6";s:11:"sdk_version";s:9:"1.2.1.6.1";s:28:"programming_language_version";s:16:"5.6.32-1+ubuntu1";s:4:"plan";O:14:"FS_Plugin_Plan":21:{s:9:"plugin_id";s:8:"MTA0Ng==";s:4:"name";s:8:"ZnJlZQ==";s:5:"title";s:8:"RnJlZQ==";s:11:"description";N;s:17:"is_free_localhost";s:4:"MQ==";s:17:"is_block_features";s:4:"MQ==";s:12:"license_type";s:4:"MA==";s:16:"is_https_support";s:0:"";s:12:"trial_period";N;s:23:"is_require_subscription";s:0:"";s:10:"support_kb";N;s:13:"support_forum";N;s:13:"support_email";N;s:13:"support_phone";N;s:13:"support_skype";N;s:18:"is_success_manager";s:0:"";s:11:"is_featured";s:0:"";s:2:"id";s:8:"MTQ1Mw==";s:7:"updated";N;s:7:"created";s:28:"MjAxNy0wNS0xMSAwNjo1ODo1NA==";s:22:"\0FS_Entity\0_is_updated";b:0;}s:10:"license_id";N;s:13:"trial_plan_id";N;s:10:"trial_ends";N;s:10:"is_premium";b:0;s:15:"is_disconnected";b:0;s:10:"public_key";s:32:"pk_283957e898afecaebd16329311a6a";s:10:"secret_key";s:32:"sk_<aM<S*&5($SFifU1OI!096#L8QQn{";s:2:"id";s:7:"1731378";s:7:"updated";s:19:"2018-07-07 13:30:49";s:7:"created";s:19:"2018-07-04 23:54:15";s:22:"\0FS_Entity\0_is_updated";b:0;}}s:11:"all_plugins";O:8:"stdClass":3:{s:9:"timestamp";i:1530970247;s:3:"md5";s:32:"9989787d4dfc89a994ae6aa3fff4dc8d";s:7:"plugins";a:4:{s:19:"akismet/akismet.php";a:5:{s:4:"slug";s:7:"akismet";s:7:"version";s:5:"4.0.3";s:5:"title";s:17:"Akismet Anti-Spam";s:9:"is_active";b:0;s:14:"is_uninstalled";b:0;}s:9:"hello.php";a:5:{s:4:"slug";s:11:"hello-dolly";s:7:"version";s:3:"1.7";s:5:"title";s:11:"Hello Dolly";s:9:"is_active";b:0;s:14:"is_uninstalled";b:0;}s:27:"simple-tags/simple-tags.php";a:5:{s:4:"slug";s:11:"simple-tags";s:7:"version";s:5:"2.4.7";s:5:"title";s:11:"Simple Tags";s:9:"is_active";b:1;s:14:"is_uninstalled";b:0;}s:58:"ultimate-social-media-plus/ultimate_social_media_icons.php";a:5:{s:4:"slug";s:26:"ultimate-social-media-plus";s:7:"version";s:5:"2.8.9";s:5:"title";s:26:"Ultimate Social Media PLUS";s:9:"is_active";b:1;s:14:"is_uninstalled";b:0;}}}s:10:"all_themes";O:8:"stdClass":3:{s:9:"timestamp";i:1530970247;s:3:"md5";s:32:"b78024883fffab25874eb3e4dd04f7b1";s:6:"themes";a:4:{s:6:"r-news";a:5:{s:4:"slug";s:6:"r-news";s:7:"version";s:0:"";s:5:"title";s:0:"";s:9:"is_active";b:1;s:14:"is_uninstalled";b:0;}s:13:"twentyfifteen";a:5:{s:4:"slug";s:13:"twentyfifteen";s:7:"version";s:3:"2.0";s:5:"title";s:14:"Twenty Fifteen";s:9:"is_active";b:0;s:14:"is_uninstalled";b:0;}s:15:"twentyseventeen";a:5:{s:4:"slug";s:15:"twentyseventeen";s:7:"version";s:3:"1.6";s:5:"title";s:16:"Twenty Seventeen";s:9:"is_active";b:0;s:14:"is_uninstalled";b:0;}s:13:"twentysixteen";a:5:{s:4:"slug";s:13:"twentysixteen";s:7:"version";s:3:"1.5";s:5:"title";s:14:"Twenty Sixteen";s:9:"is_active";b:0;s:14:"is_uninstalled";b:0;}}}s:5:"users";a:1:{i:1289985;O:7:"FS_User":12:{s:5:"email";s:22:"sandyharyono@gmail.com";s:5:"first";s:5:"Sandy";s:4:"last";s:7:"Haryono";s:11:"is_verified";b:0;s:11:"customer_id";N;s:5:"gross";i:0;s:10:"public_key";s:32:"pk_97ef0973e323308e159991cee777f";s:10:"secret_key";s:32:"sk__@uvZ5l{<h<avtDZn}#E?jQi}2c&k";s:2:"id";s:7:"1289985";s:7:"updated";N;s:7:"created";s:19:"2018-07-04 23:54:15";s:22:"\0FS_Entity\0_is_updated";b:0;}}s:8:"licenses";a:1:{s:26:"ultimate-social-media-plus";a:1:{i:1289985;b:0;}}s:13:"admin_notices";a:1:{s:26:"ultimate-social-media-plus";a:0:{}}}', 'yes'),
(505, 'adding_plustags', 'yes', 'yes'),
(506, 'fs_api_cache', 'a:0:{}', 'yes'),
(509, 'sfsi_plus_new_show_notification', 'no', 'yes'),
(510, 'sfsi_plus_show_premium_cumulative_count_notification', 'yes', 'yes'),
(511, 'sfsi_plus_section1_options', 's:501:"a:12:{s:21:"sfsi_plus_rss_display";s:2:"no";s:23:"sfsi_plus_email_display";s:2:"no";s:26:"sfsi_plus_facebook_display";s:3:"yes";s:25:"sfsi_plus_twitter_display";s:3:"yes";s:24:"sfsi_plus_google_display";s:3:"yes";s:23:"sfsi_plus_share_display";s:2:"no";s:25:"sfsi_plus_youtube_display";s:3:"yes";s:27:"sfsi_plus_pinterest_display";s:2:"no";s:26:"sfsi_plus_linkedin_display";s:2:"no";s:27:"sfsi_plus_instagram_display";s:3:"yes";s:23:"sfsi_plus_houzz_display";s:2:"no";s:17:"sfsi_custom_files";s:0:"";}";', 'yes'),
(512, 'sfsi_plus_section2_options', 's:2262:"a:39:{s:17:"sfsi_plus_rss_url";s:0:"";s:17:"sfsi_rss_blogName";s:0:"";s:18:"sfsi_rss_blogEmail";s:0:"";s:19:"sfsi_plus_rss_icons";s:0:"";s:19:"sfsi_plus_email_url";s:297:"http://www.specificfeeds.com/widgets/emailSubscribeEncFeed/NUNoRzZhQkMrenBtejRXaVRxZm0rYkRrRUVienRuL3U3VWVwU2dseWZnUUZlQlNWQ295LzdqdXJGcjh2ckFCM2REckl3blZXUUtLVHFnN3lkSHpoQ0NkK3ZlQTk2Y1pBOXRxd1lOS0hiNUNMTmY0NHFtNlJoRXRROGRvVVRkSlV8THJQNnNjN3ZQMFdITFJZQ05CQWk3ODhqb3h4NjNCdWNNQndtQWtMZGlhND0=/OA==/";s:29:"sfsi_plus_facebookPage_option";s:3:"yes";s:26:"sfsi_plus_facebookPage_url";s:67:"https://www.facebook.com/Cartoon-Fanpage-398398373635516/?ref=br_rs";s:29:"sfsi_plus_facebookLike_option";s:3:"yes";s:30:"sfsi_plus_facebookShare_option";s:3:"yes";s:26:"sfsi_plus_twitter_followme";s:3:"yes";s:32:"sfsi_plus_twitter_followUserName";s:9:"Metallica";s:27:"sfsi_plus_twitter_aboutPage";s:3:"yes";s:22:"sfsi_plus_twitter_page";s:3:"yes";s:25:"sfsi_plus_twitter_pageURL";s:29:"https://twitter.com/Metallica";s:31:"sfsi_plus_twitter_aboutPageText";s:82:"Hey, check out this cool site I found: www.yourname.com #Topic via@my_twitter_name";s:21:"sfsi_plus_google_page";s:3:"yes";s:24:"sfsi_plus_google_pageURL";s:45:"https://plus.google.com/116287157852669694516";s:27:"sfsi_plus_googleLike_option";s:3:"yes";s:28:"sfsi_plus_googleShare_option";s:3:"yes";s:25:"sfsi_plus_youtube_pageUrl";s:56:"https://www.youtube.com/channel/UCbulh9WdLtEXiooRcYK7SWw";s:22:"sfsi_plus_youtube_page";s:3:"yes";s:24:"sfsi_plus_youtube_follow";s:2:"no";s:20:"sfsi_plus_ytube_user";s:0:"";s:29:"sfsi_plus_youtubeusernameorid";s:2:"id";s:22:"sfsi_plus_ytube_chnlid";s:0:"";s:24:"sfsi_plus_pinterest_page";s:0:"";s:27:"sfsi_plus_pinterest_pageUrl";s:0:"";s:28:"sfsi_plus_pinterest_pingBlog";s:0:"";s:27:"sfsi_plus_instagram_pageUrl";s:42:"https://www.instagram.com/metallica/?hl=en";s:23:"sfsi_plus_houzz_pageUrl";s:0:"";s:23:"sfsi_plus_linkedin_page";s:0:"";s:26:"sfsi_plus_linkedin_pageURL";s:0:"";s:25:"sfsi_plus_linkedin_follow";s:0:"";s:32:"sfsi_plus_linkedin_followCompany";i:0;s:28:"sfsi_plus_linkedin_SharePage";s:0:"";s:35:"sfsi_plus_linkedin_recommendBusines";s:2:"no";s:35:"sfsi_plus_linkedin_recommendCompany";s:0:"";s:37:"sfsi_plus_linkedin_recommendProductId";i:0;s:26:"sfsi_plus_CustomIcon_links";s:0:"";}";', 'yes'),
(513, 'sfsi_plus_section3_options', 's:659:"a:14:{s:23:"sfsi_plus_actvite_theme";s:14:"custom_support";s:19:"sfsi_plus_mouseOver";s:2:"no";s:26:"sfsi_plus_mouseOver_effect";s:7:"fade_in";s:23:"sfsi_plus_shuffle_icons";s:2:"no";s:27:"sfsi_plus_shuffle_Firstload";s:2:"no";s:26:"sfsi_plus_shuffle_interval";s:2:"no";s:30:"sfsi_plus_shuffle_intervalTime";i:0;s:31:"sfsi_plus_specialIcon_animation";s:0:"";s:31:"sfsi_plus_specialIcon_MouseOver";s:2:"no";s:31:"sfsi_plus_specialIcon_Firstload";s:2:"no";s:37:"sfsi_plus_specialIcon_Firstload_Icons";s:3:"all";s:30:"sfsi_plus_specialIcon_interval";s:2:"no";s:34:"sfsi_plus_specialIcon_intervalTime";s:0:"";s:35:"sfsi_plus_specialIcon_intervalIcons";s:3:"all";}";', 'yes'),
(514, 'sfsi_plus_section4_options', 's:2077:"a:47:{s:24:"sfsi_plus_display_counts";s:2:"no";s:29:"sfsi_plus_email_countsDisplay";s:0:"";s:26:"sfsi_plus_email_countsFrom";s:0:"";s:28:"sfsi_plus_email_manualCounts";i:20;s:27:"sfsi_plus_rss_countsDisplay";s:0:"";s:26:"sfsi_plus_rss_manualCounts";i:20;s:32:"sfsi_plus_facebook_countsDisplay";s:2:"no";s:29:"sfsi_plus_facebook_countsFrom";s:6:"manual";s:31:"sfsi_plus_facebook_mypageCounts";s:0:"";s:31:"sfsi_plus_facebook_manualCounts";i:20;s:31:"sfsi_plus_twitter_countsDisplay";s:2:"no";s:28:"sfsi_plus_twitter_countsFrom";s:6:"manual";s:30:"sfsi_plus_twitter_manualCounts";i:20;s:24:"sfsiplus_tw_consumer_key";s:0:"";s:27:"sfsiplus_tw_consumer_secret";s:0:"";s:30:"sfsiplus_tw_oauth_access_token";s:0:"";s:37:"sfsiplus_tw_oauth_access_token_secret";s:0:"";s:30:"sfsi_plus_google_countsDisplay";s:2:"no";s:27:"sfsi_plus_google_countsFrom";s:6:"manual";s:29:"sfsi_plus_google_manualCounts";i:20;s:24:"sfsi_plus_google_api_key";s:0:"";s:32:"sfsi_plus_linkedIn_countsDisplay";s:0:"";s:29:"sfsi_plus_linkedIn_countsFrom";s:0:"";s:31:"sfsi_plus_linkedIn_manualCounts";i:20;s:31:"sfsi_plus_youtube_countsDisplay";s:2:"no";s:28:"sfsi_plus_youtube_countsFrom";s:6:"manual";s:30:"sfsi_plus_youtube_manualCounts";i:20;s:22:"sfsi_plus_youtube_user";s:0:"";s:27:"sfsi_plus_youtube_channelId";s:0:"";s:33:"sfsi_plus_pinterest_countsDisplay";s:0:"";s:30:"sfsi_plus_pinterest_countsFrom";s:0:"";s:32:"sfsi_plus_pinterest_manualCounts";i:20;s:30:"sfsi_plus_instagram_countsFrom";s:6:"manual";s:33:"sfsi_plus_instagram_countsDisplay";s:2:"no";s:32:"sfsi_plus_instagram_manualCounts";i:20;s:24:"sfsi_plus_instagram_User";s:0:"";s:28:"sfsi_plus_instagram_clientid";s:0:"";s:26:"sfsi_plus_instagram_appurl";s:0:"";s:25:"sfsi_plus_instagram_token";s:0:"";s:30:"sfsi_plus_shares_countsDisplay";s:0:"";s:27:"sfsi_plus_shares_countsFrom";s:0:"";s:29:"sfsi_plus_shares_manualCounts";i:20;s:29:"sfsi_plus_houzz_countsDisplay";s:0:"";s:26:"sfsi_plus_houzz_countsFrom";s:0:"";s:28:"sfsi_plus_houzz_manualCounts";i:20;s:29:"sfsi_plus_youtubeusernameorid";s:2:"id";s:22:"sfsi_plus_ytube_chnlid";s:0:"";}";', 'yes'),
(515, 'sfsi_plus_section5_options', 's:1808:"a:40:{s:20:"sfsi_plus_icons_size";i:40;s:23:"sfsi_plus_icons_spacing";i:5;s:25:"sfsi_plus_icons_Alignment";s:4:"left";s:22:"sfsi_plus_icons_perRow";i:5;s:31:"sfsi_plus_follow_icons_language";s:12:"Follow_en_US";s:33:"sfsi_plus_facebook_icons_language";s:14:"Visit_us_en_US";s:32:"sfsi_plus_twitter_icons_language";s:14:"Visit_us_en_US";s:31:"sfsi_plus_google_icons_language";s:14:"Visit_us_en_US";s:24:"sfsi_plus_icons_language";s:5:"en_US";s:29:"sfsi_plus_icons_ClickPageOpen";s:3:"yes";s:21:"sfsi_plus_icons_float";s:2:"no";s:28:"sfsi_plus_disable_floaticons";s:2:"no";s:26:"sfsi_plus_disable_viewport";s:2:"no";s:29:"sfsi_plus_icons_floatPosition";s:12:"center-right";s:21:"sfsi_plus_icons_stick";s:2:"no";s:27:"sfsi_plus_rss_MouseOverText";s:0:"";s:29:"sfsi_plus_email_MouseOverText";s:0:"";s:31:"sfsi_plus_twitter_MouseOverText";s:7:"Twitter";s:32:"sfsi_plus_facebook_MouseOverText";s:8:"Facebook";s:30:"sfsi_plus_google_MouseOverText";s:7:"Google+";s:32:"sfsi_plus_linkedIn_MouseOverText";s:0:"";s:33:"sfsi_plus_pinterest_MouseOverText";s:0:"";s:31:"sfsi_plus_youtube_MouseOverText";s:7:"YouTube";s:29:"sfsi_plus_share_MouseOverText";s:0:"";s:33:"sfsi_plus_instagram_MouseOverText";s:9:"Instagram";s:29:"sfsi_plus_houzz_MouseOverText";s:0:"";s:27:"sfsi_plus_CustomIcons_order";s:0:"";s:23:"sfsi_plus_rssIcon_order";i:1;s:25:"sfsi_plus_emailIcon_order";i:2;s:28:"sfsi_plus_facebookIcon_order";i:3;s:26:"sfsi_plus_googleIcon_order";i:4;s:27:"sfsi_plus_twitterIcon_order";i:5;s:25:"sfsi_plus_shareIcon_order";i:6;s:27:"sfsi_plus_youtubeIcon_order";i:7;s:29:"sfsi_plus_pinterestIcon_order";i:9;s:29:"sfsi_plus_instagramIcon_order";i:8;s:25:"sfsi_plus_houzzIcon_order";i:11;s:28:"sfsi_plus_linkedinIcon_order";i:10;s:31:"sfsi_plus_custom_MouseOverTexts";s:0:"";s:28:"sfsi_plus_custom_social_hide";s:2:"no";}";', 'yes'),
(516, 'sfsi_plus_section6_options', 's:343:"a:7:{s:22:"sfsi_plus_show_Onposts";s:2:"no";s:23:"sfsi_plus_show_Onbottom";s:2:"no";s:27:"sfsi_plus_icons_postPositon";s:6:"source";s:25:"sfsi_plus_icons_alignment";s:12:"center-right";s:27:"sfsi_plus_rss_countsDisplay";s:2:"no";s:25:"sfsi_plus_textBefor_icons";s:26:"Please follow and like us:";s:29:"sfsi_plus_icons_DisplayCounts";s:2:"no";}";', 'yes'),
(517, 'sfsi_plus_section7_options', 's:635:"a:13:{s:20:"sfsi_plus_popup_text";s:42:"Enjoy this blog? Please spread the word :)";s:20:"sfsi_plus_popup_font";s:26:"Helvetica,Arial,sans-serif";s:25:"sfsi_plus_popup_fontColor";s:7:"#000000";s:24:"sfsi_plus_popup_fontSize";i:30;s:25:"sfsi_plus_popup_fontStyle";s:0:"";s:32:"sfsi_plus_popup_background_color";s:7:"#eff7f7";s:28:"sfsi_plus_popup_border_color";s:7:"#f3faf2";s:32:"sfsi_plus_popup_border_thickness";i:1;s:29:"sfsi_plus_popup_border_shadow";s:3:"yes";s:22:"sfsi_plus_Show_popupOn";s:4:"none";s:30:"sfsi_plus_Show_popupOn_PageIDs";s:0:"";s:19:"sfsi_plus_Shown_pop";s:8:"ETscroll";s:29:"sfsi_plus_Shown_popupOnceTime";i:0;}";', 'yes'),
(518, 'sfsi_plus_section8_options', 's:1192:"a:27:{s:25:"sfsi_plus_show_via_widget";s:3:"yes";s:23:"sfsi_plus_float_on_page";s:2:"no";s:29:"sfsi_plus_float_page_position";s:8:"top-left";s:31:"sfsi_plus_icons_floatMargin_top";i:0;s:34:"sfsi_plus_icons_floatMargin_bottom";i:0;s:32:"sfsi_plus_icons_floatMargin_left";i:0;s:33:"sfsi_plus_icons_floatMargin_right";i:0;s:29:"sfsi_plus_place_item_manually";s:3:"yes";s:27:"sfsi_plus_show_item_onposts";s:3:"yes";s:29:"sfsi_plus_display_button_type";s:16:"standard_buttons";s:25:"sfsi_plus_post_icons_size";i:40;s:28:"sfsi_plus_post_icons_spacing";i:5;s:22:"sfsi_plus_show_Onposts";s:2:"no";s:25:"sfsi_plus_textBefor_icons";s:26:"Please follow and like us:";s:25:"sfsi_plus_icons_alignment";s:4:"left";s:29:"sfsi_plus_icons_DisplayCounts";s:3:"yes";s:30:"sfsi_plus_display_before_posts";s:3:"yes";s:29:"sfsi_plus_display_after_posts";s:3:"yes";s:34:"sfsi_plus_display_before_blogposts";s:2:"no";s:33:"sfsi_plus_display_after_blogposts";s:2:"no";s:17:"sfsi_plus_rectsub";s:3:"yes";s:16:"sfsi_plus_rectfb";s:3:"yes";s:16:"sfsi_plus_rectgp";s:3:"yes";s:17:"sfsi_plus_rectshr";s:2:"no";s:18:"sfsi_plus_recttwtr";s:3:"yes";s:19:"sfsi_plus_rectpinit";s:2:"no";s:21:"sfsi_plus_rectfbshare";s:3:"yes";}";', 'yes'),
(519, 'sfsi_plus_feed_id', 'NUNoRzZhQkMrenBtejRXaVRxZm0rYkRrRUVienRuL3U3VWVwU2dseWZnUUZlQlNWQ295LzdqdXJGcjh2ckFCM2REckl3blZXUUtLVHFnN3lkSHpoQ0NkK3ZlQTk2Y1pBOXRxd1lOS0hiNUNMTmY0NHFtNlJoRXRROGRvVVRkSlV8THJQNnNjN3ZQMFdITFJZQ05CQWk3ODhqb3h4NjNCdWNNQndtQWtMZGlhND0=', 'yes'),
(520, 'sfsi_plus_redirect_url', 'http://www.specificfeeds.com/widgets/emailSubscribeEncFeed/NUNoRzZhQkMrenBtejRXaVRxZm0rYkRrRUVienRuL3U3VWVwU2dseWZnUUZlQlNWQ295LzdqdXJGcjh2ckFCM2REckl3blZXUUtLVHFnN3lkSHpoQ0NkK3ZlQTk2Y1pBOXRxd1lOS0hiNUNMTmY0NHFtNlJoRXRROGRvVVRkSlV8THJQNnNjN3ZQMFdITFJZQ05CQWk3ODhqb3h4NjNCdWNNQndtQWtMZGlhND0=/OA==/', 'yes'),
(521, 'sfsi_plus_installDate', '2018-07-04 11:54:00', 'yes'),
(522, 'sfsi_plus_RatingDiv', 'no', 'yes'),
(523, 'sfsi_plus_activate', '0', 'yes'),
(524, 'sfsi_plus_instagram_sf_count', 's:100:"a:3:{s:4:"date";i:1530921600;s:18:"sfsi_plus_sf_count";i:0;s:25:"sfsi_plus_instagram_count";s:0:"";}";', 'yes'),
(525, 'widget_sfsi-plus-widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(526, 'widget_sfsiplus_subscriber_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(527, 'sfsi_plus_pluginVersion', '2.89', 'yes'),
(528, 'sfsi_plus_serverphpVersionnotification', 'yes', 'yes'),
(529, 'sfsi_plus_show_Setting_mobile_notification', 'yes', 'yes'),
(530, 'sfsi_plus_show_premium_notification', 'no', 'yes'),
(531, 'sfsi_plus_show_notification', 'yes', 'yes'),
(532, 'sfsi_plus_footer_sec', 'no', 'yes'),
(533, 'sfsi_plus_section9_options', 's:1317:"a:26:{s:25:"sfsi_plus_form_adjustment";s:3:"yes";s:21:"sfsi_plus_form_height";i:180;s:20:"sfsi_plus_form_width";i:230;s:21:"sfsi_plus_form_border";s:3:"yes";s:31:"sfsi_plus_form_border_thickness";i:1;s:27:"sfsi_plus_form_border_color";s:7:"#b5b5b5";s:25:"sfsi_plus_form_background";s:7:"#ffffff";s:27:"sfsi_plus_form_heading_text";s:23:"Get new posts by email:";s:27:"sfsi_plus_form_heading_font";s:26:"Helvetica,Arial,sans-serif";s:32:"sfsi_plus_form_heading_fontstyle";s:4:"bold";s:32:"sfsi_plus_form_heading_fontcolor";s:7:"#000000";s:31:"sfsi_plus_form_heading_fontsize";i:16;s:32:"sfsi_plus_form_heading_fontalign";s:6:"center";s:25:"sfsi_plus_form_field_text";s:16:"Enter your email";s:25:"sfsi_plus_form_field_font";s:26:"Helvetica,Arial,sans-serif";s:30:"sfsi_plus_form_field_fontstyle";s:6:"normal";s:30:"sfsi_plus_form_field_fontcolor";s:0:"";s:29:"sfsi_plus_form_field_fontsize";i:14;s:30:"sfsi_plus_form_field_fontalign";s:6:"center";s:26:"sfsi_plus_form_button_text";s:9:"Subscribe";s:26:"sfsi_plus_form_button_font";s:26:"Helvetica,Arial,sans-serif";s:31:"sfsi_plus_form_button_fontstyle";s:4:"bold";s:31:"sfsi_plus_form_button_fontcolor";s:7:"#000000";s:30:"sfsi_plus_form_button_fontsize";i:16;s:31:"sfsi_plus_form_button_fontalign";s:6:"center";s:32:"sfsi_plus_form_button_background";s:7:"#dedede";}";', 'yes'),
(534, 'sfsi_plus_verificatiom_code', 'NETnChGe5HAEbvNqCUCf', 'yes'),
(557, '_site_transient_timeout_browser_5e807558ddeaee8b37f93631f6842eab', '1531573266', 'no'),
(558, '_site_transient_browser_5e807558ddeaee8b37f93631f6842eab', 'a:10:{s:4:"name";s:6:"Chrome";s:7:"version";s:12:"67.0.3396.99";s:8:"platform";s:5:"Linux";s:10:"update_url";s:29:"https://www.google.com/chrome";s:7:"img_src";s:43:"http://s.w.org/images/browsers/chrome.png?1";s:11:"img_src_ssl";s:44:"https://s.w.org/images/browsers/chrome.png?1";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;s:6:"mobile";b:0;}', 'no'),
(573, 'heateor_sss', 'a:74:{s:24:"horizontal_sharing_shape";s:5:"round";s:23:"horizontal_sharing_size";s:2:"20";s:24:"horizontal_sharing_width";s:2:"70";s:25:"horizontal_sharing_height";s:2:"35";s:24:"horizontal_border_radius";s:0:"";s:29:"horizontal_font_color_default";s:0:"";s:32:"horizontal_sharing_replace_color";s:4:"#fff";s:27:"horizontal_font_color_hover";s:0:"";s:38:"horizontal_sharing_replace_color_hover";s:4:"#fff";s:27:"horizontal_bg_color_default";s:0:"";s:25:"horizontal_bg_color_hover";s:0:"";s:31:"horizontal_border_width_default";s:0:"";s:31:"horizontal_border_color_default";s:0:"";s:29:"horizontal_border_width_hover";s:0:"";s:29:"horizontal_border_color_hover";s:0:"";s:22:"vertical_sharing_shape";s:6:"square";s:21:"vertical_sharing_size";s:2:"40";s:22:"vertical_sharing_width";s:2:"80";s:23:"vertical_sharing_height";s:2:"40";s:22:"vertical_border_radius";s:0:"";s:27:"vertical_font_color_default";s:0:"";s:30:"vertical_sharing_replace_color";s:4:"#fff";s:25:"vertical_font_color_hover";s:0:"";s:36:"vertical_sharing_replace_color_hover";s:4:"#fff";s:25:"vertical_bg_color_default";s:0:"";s:23:"vertical_bg_color_hover";s:0:"";s:29:"vertical_border_width_default";s:0:"";s:29:"vertical_border_color_default";s:0:"";s:27:"vertical_border_width_hover";s:0:"";s:27:"vertical_border_color_hover";s:0:"";s:10:"hor_enable";s:1:"1";s:21:"horizontal_target_url";s:7:"default";s:28:"horizontal_target_url_custom";s:0:"";s:5:"title";s:15:"Spread the love";s:18:"instagram_username";s:0:"";s:20:"comment_container_id";s:7:"respond";s:23:"horizontal_re_providers";a:4:{i:0;s:8:"facebook";i:1;s:7:"twitter";i:2;s:9:"instagram";i:3;s:11:"google_plus";}s:21:"hor_sharing_alignment";s:4:"left";s:3:"top";s:1:"1";s:17:"horizontal_counts";s:1:"1";s:19:"tweet_count_service";s:14:"newsharecounts";s:23:"horizontal_total_shares";s:1:"1";s:19:"vertical_target_url";s:7:"default";s:26:"vertical_target_url_custom";s:0:"";s:27:"vertical_instagram_username";s:0:"";s:29:"vertical_comment_container_id";s:7:"respond";s:11:"vertical_bg";s:0:"";s:9:"alignment";s:4:"left";s:11:"left_offset";s:3:"-10";s:12:"right_offset";s:3:"-10";s:10:"top_offset";s:3:"100";s:13:"vertical_home";s:1:"1";s:13:"vertical_post";s:1:"1";s:13:"vertical_page";s:1:"1";s:28:"vertical_tweet_count_service";s:14:"newsharecounts";s:13:"vertical_more";s:1:"1";s:19:"hide_mobile_sharing";s:1:"1";s:21:"vertical_screen_width";s:3:"783";s:21:"bottom_mobile_sharing";s:1:"1";s:23:"horizontal_screen_width";s:3:"783";s:23:"bottom_sharing_position";s:1:"0";s:24:"bottom_sharing_alignment";s:4:"left";s:29:"bottom_sharing_position_radio";s:10:"responsive";s:13:"footer_script";s:1:"1";s:14:"delete_options";s:1:"1";s:31:"share_count_cache_refresh_count";s:2:"10";s:30:"share_count_cache_refresh_unit";s:7:"minutes";s:14:"bitly_username";s:0:"";s:9:"bitly_key";s:0:"";s:8:"language";s:5:"en_US";s:16:"twitter_username";s:0:"";s:15:"buffer_username";s:0:"";s:10:"amp_enable";s:1:"1";s:10:"custom_css";s:0:"";}', 'yes'),
(574, 'heateor_sss_version', '3.2.3', 'yes'),
(575, 'widget_heateor_sss_sharing', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(576, 'widget_heateor_sss_floating_sharing', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(577, 'widget_heateor_sss_follow', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(580, 'heateor_sss_gdpr_notification_read', '1', 'yes'),
(583, 'heateor_sss_custom_url_shares', 's:41:"a:2:{s:7:"twitter";i:0;s:8:"facebook";N;}";', 'yes'),
(603, 'FacebookURL', 'https://www.facebook.com/Metallica/', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(604, 'TwitterURL', 'https://twitter.com/Metallica', 'yes'),
(605, 'GoogleURL', 'https://plus.google.com/116287157852669694516', 'yes'),
(606, 'InstagramURL', 'https://www.instagram.com/metallica', 'yes'),
(607, 'YoutubeURL', 'https://www.youtube.com/channel/UCbulh9WdLtEXiooRcYK7SWw', 'yes'),
(612, 'heateor_ffc', 'a:15:{s:16:"commenting_label";s:17:"Facebook Comments";s:11:"title_color";s:0:"";s:17:"title_font_family";s:41:"Arial,Helvetica Neue,Helvetica,sans-serif";s:11:"heading_tag";s:2:"h4";s:15:"title_font_size";s:0:"";s:15:"title_alignment";s:4:"left";s:8:"bg_color";s:0:"";s:8:"priority";s:2:"99";s:14:"url_to_comment";s:7:"default";s:21:"url_to_comment_custom";s:0:"";s:13:"comment_width";s:0:"";s:16:"comment_numposts";s:0:"";s:15:"comment_orderby";s:6:"social";s:12:"comment_lang";s:5:"en_US";s:14:"delete_options";s:1:"1";}', 'yes'),
(613, 'heateor_ffc_version', '1.1.7', 'yes'),
(614, 'widget_heateor_ffc_facebook_comments', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(615, 'widget_mailtarget_widget', 'a:2:{i:2;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(616, 'heateor_ffc_gdpr_notification_read', '1', 'yes'),
(618, 'mtg_company_id', '5b40e2ff2849ea77a78fa750', 'yes'),
(619, 'mtg_api_token', 'J89FEeALklqcO5lR3835mX88j61COaYVjmpPxlbl7CsTdqLHqj1amHhKKuV6mpxz', 'yes'),
(620, 'mtg_popup_enable', '0', 'yes'),
(621, 'mtg_popup_form_id', '5b40e6f76cb62a1b4190da33', 'yes'),
(622, 'mtg_popup_form_name', 'subscribeNewsLetter', 'yes'),
(623, 'mtg_popup_delay', '10', 'yes'),
(624, 'mtg_popup_title', 'test', 'yes'),
(625, 'mtg_popup_description', 'description test', 'yes'),
(626, 'mtg_popup_redirect', '', 'yes'),
(673, 'xyz_ihs_sort_order', 'desc', 'yes'),
(674, 'xyz_ihs_sort_field_name', 'id', 'yes'),
(675, 'xyz_ihs_installed_date', '1531025907', 'yes'),
(676, 'xyz_credit_link', '0', 'yes'),
(677, 'xyz_ihs_dismiss', '0', 'yes'),
(678, 'xyz_ihs_premium_version_ads', '1', 'yes'),
(679, 'xyz_ihs_limit', '20', 'yes'),
(680, 'widget_xyz_insert_html_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(681, 'xyz_ihs_credit_dismiss', 'dis', 'yes'),
(785, '_transient_timeout_plugin_slugs', '1531351246', 'no'),
(786, '_transient_plugin_slugs', 'a:7:{i:0;s:19:"akismet/akismet.php";i:1;s:31:"cbxwpbookmark/cbxwpbookmark.php";i:2;s:51:"fancy-facebook-comments/fancy-facebook-comments.php";i:3;s:9:"hello.php";i:4;s:40:"mailtarget-form/MailtargetFormPlugin.php";i:5;s:41:"sassy-social-share/sassy-social-share.php";i:6;s:27:"simple-tags/simple-tags.php";}', 'no'),
(787, 'cbxwpbookmark_basics', 'a:8:{s:18:"cbxbookmarkpostion";s:13:"after_content";s:8:"skip_ids";s:0:"";s:13:"showinarchive";s:1:"0";s:10:"showinhome";s:1:"0";s:20:"cbxbookmarkposttypes";a:1:{i:0;s:4:"page";}s:9:"showcount";s:1:"0";s:10:"skip_roles";a:0:{}s:17:"mybookmark_pageid";i:0;}', 'yes'),
(788, 'widget_cbxwpbookmarkcategory', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(789, 'widget_cbxwpbookmark-widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(790, 'widget_cbxwpbookmarkedmost-widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(791, 'cbxwpbookmark_tools', 'a:2:{s:20:"delete_global_config";s:2:"no";s:10:"reset_data";s:3:"off";}', 'yes'),
(839, '_site_transient_update_plugins', 'O:8:"stdClass":5:{s:12:"last_checked";i:1531262696;s:7:"checked";a:7:{s:19:"akismet/akismet.php";s:5:"4.0.3";s:31:"cbxwpbookmark/cbxwpbookmark.php";s:5:"1.4.4";s:51:"fancy-facebook-comments/fancy-facebook-comments.php";s:5:"1.1.7";s:9:"hello.php";s:3:"1.7";s:40:"mailtarget-form/MailtargetFormPlugin.php";s:5:"1.0.3";s:41:"sassy-social-share/sassy-social-share.php";s:5:"3.2.3";s:27:"simple-tags/simple-tags.php";s:5:"2.4.7";}s:8:"response";a:1:{s:19:"akismet/akismet.php";O:8:"stdClass":12:{s:2:"id";s:21:"w.org/plugins/akismet";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:5:"4.0.8";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/akismet.4.0.8.zip";s:5:"icons";a:2:{s:2:"2x";s:59:"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272";s:2:"1x";s:59:"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272";}s:7:"banners";a:1:{s:2:"1x";s:61:"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904";}s:11:"banners_rtl";a:0:{}s:6:"tested";s:5:"4.9.6";s:12:"requires_php";b:0;s:13:"compatibility";O:8:"stdClass":0:{}}}s:12:"translations";a:0:{}s:9:"no_update";a:6:{s:31:"cbxwpbookmark/cbxwpbookmark.php";O:8:"stdClass":9:{s:2:"id";s:27:"w.org/plugins/cbxwpbookmark";s:4:"slug";s:13:"cbxwpbookmark";s:6:"plugin";s:31:"cbxwpbookmark/cbxwpbookmark.php";s:11:"new_version";s:5:"1.4.4";s:3:"url";s:44:"https://wordpress.org/plugins/cbxwpbookmark/";s:7:"package";s:62:"https://downloads.wordpress.org/plugin/cbxwpbookmark.1.4.4.zip";s:5:"icons";a:2:{s:2:"2x";s:66:"https://ps.w.org/cbxwpbookmark/assets/icon-256x256.png?rev=1727938";s:2:"1x";s:66:"https://ps.w.org/cbxwpbookmark/assets/icon-128x128.png?rev=1727938";}s:7:"banners";a:2:{s:2:"2x";s:69:"https://ps.w.org/cbxwpbookmark/assets/banner-1544x500.png?rev=1798425";s:2:"1x";s:68:"https://ps.w.org/cbxwpbookmark/assets/banner-772x250.png?rev=1811127";}s:11:"banners_rtl";a:0:{}}s:51:"fancy-facebook-comments/fancy-facebook-comments.php";O:8:"stdClass":9:{s:2:"id";s:37:"w.org/plugins/fancy-facebook-comments";s:4:"slug";s:23:"fancy-facebook-comments";s:6:"plugin";s:51:"fancy-facebook-comments/fancy-facebook-comments.php";s:11:"new_version";s:5:"1.1.7";s:3:"url";s:54:"https://wordpress.org/plugins/fancy-facebook-comments/";s:7:"package";s:66:"https://downloads.wordpress.org/plugin/fancy-facebook-comments.zip";s:5:"icons";a:1:{s:2:"1x";s:76:"https://ps.w.org/fancy-facebook-comments/assets/icon-128x128.png?rev=1710887";}s:7:"banners";a:1:{s:2:"1x";s:78:"https://ps.w.org/fancy-facebook-comments/assets/banner-772x250.png?rev=1866833";}s:11:"banners_rtl";a:0:{}}s:9:"hello.php";O:8:"stdClass":9:{s:2:"id";s:25:"w.org/plugins/hello-dolly";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:3:"1.6";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:58:"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip";s:5:"icons";a:2:{s:2:"2x";s:63:"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907";s:2:"1x";s:63:"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907";}s:7:"banners";a:1:{s:2:"1x";s:65:"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342";}s:11:"banners_rtl";a:0:{}}s:40:"mailtarget-form/MailtargetFormPlugin.php";O:8:"stdClass":9:{s:2:"id";s:29:"w.org/plugins/mailtarget-form";s:4:"slug";s:15:"mailtarget-form";s:6:"plugin";s:40:"mailtarget-form/MailtargetFormPlugin.php";s:11:"new_version";s:5:"1.0.3";s:3:"url";s:46:"https://wordpress.org/plugins/mailtarget-form/";s:7:"package";s:58:"https://downloads.wordpress.org/plugin/mailtarget-form.zip";s:5:"icons";a:3:{s:2:"2x";s:68:"https://ps.w.org/mailtarget-form/assets/icon-256x256.png?rev=1800147";s:2:"1x";s:60:"https://ps.w.org/mailtarget-form/assets/icon.svg?rev=1800147";s:3:"svg";s:60:"https://ps.w.org/mailtarget-form/assets/icon.svg?rev=1800147";}s:7:"banners";a:2:{s:2:"2x";s:71:"https://ps.w.org/mailtarget-form/assets/banner-1544x500.png?rev=1800147";s:2:"1x";s:70:"https://ps.w.org/mailtarget-form/assets/banner-772x250.png?rev=1800147";}s:11:"banners_rtl";a:0:{}}s:41:"sassy-social-share/sassy-social-share.php";O:8:"stdClass":9:{s:2:"id";s:32:"w.org/plugins/sassy-social-share";s:4:"slug";s:18:"sassy-social-share";s:6:"plugin";s:41:"sassy-social-share/sassy-social-share.php";s:11:"new_version";s:5:"3.2.3";s:3:"url";s:49:"https://wordpress.org/plugins/sassy-social-share/";s:7:"package";s:61:"https://downloads.wordpress.org/plugin/sassy-social-share.zip";s:5:"icons";a:1:{s:2:"1x";s:71:"https://ps.w.org/sassy-social-share/assets/icon-128x128.png?rev=1300723";}s:7:"banners";a:1:{s:2:"1x";s:73:"https://ps.w.org/sassy-social-share/assets/banner-772x250.png?rev=1866721";}s:11:"banners_rtl";a:0:{}}s:27:"simple-tags/simple-tags.php";O:8:"stdClass":9:{s:2:"id";s:25:"w.org/plugins/simple-tags";s:4:"slug";s:11:"simple-tags";s:6:"plugin";s:27:"simple-tags/simple-tags.php";s:11:"new_version";s:5:"2.4.7";s:3:"url";s:42:"https://wordpress.org/plugins/simple-tags/";s:7:"package";s:60:"https://downloads.wordpress.org/plugin/simple-tags.2.4.7.zip";s:5:"icons";a:2:{s:2:"2x";s:64:"https://ps.w.org/simple-tags/assets/icon-256x256.jpg?rev=1675933";s:2:"1x";s:64:"https://ps.w.org/simple-tags/assets/icon-128x128.jpg?rev=1675933";}s:7:"banners";a:1:{s:2:"1x";s:66:"https://ps.w.org/simple-tags/assets/banner-772x250.png?rev=1675933";}s:11:"banners_rtl";a:0:{}}}}', 'no'),
(841, '_transient_timeout_dash_v2_88ae138922fe95674369b1cb3d215a2b', '1531306840', 'no'),
(842, '_transient_dash_v2_88ae138922fe95674369b1cb3d215a2b', '<div class="rss-widget"><p><strong>RSS Error:</strong> WP HTTP Error: cURL error 6: Could not resolve host: wordpress.org</p></div><div class="rss-widget"><p><strong>RSS Error:</strong> WP HTTP Error: cURL error 6: Could not resolve host: planet.wordpress.org</p></div>', 'no'),
(843, '_site_transient_timeout_community-events-d41d8cd98f00b204e9800998ecf8427e', '1531307932', 'no'),
(844, '_site_transient_community-events-d41d8cd98f00b204e9800998ecf8427e', 'a:2:{s:8:"location";a:1:{s:2:"ip";b:0;}s:6:"events";a:1:{i:0;a:7:{s:4:"type";s:6:"meetup";s:5:"title";s:39:"WPJKT Meetup #15: SEO, AMP and Adsense!";s:3:"url";s:65:"https://www.meetup.com/Jakarta-WordPress-Meetup/events/251874328/";s:6:"meetup";s:24:"Jakarta WordPress Meetup";s:10:"meetup_url";s:48:"https://www.meetup.com/Jakarta-WordPress-Meetup/";s:4:"date";s:19:"2018-07-16 18:00:00";s:8:"location";a:4:{s:8:"location";s:26:"Jakarta Selatan, Indonesia";s:7:"country";s:2:"id";s:8:"latitude";d:-6.2274849999999997;s:9:"longitude";d:106.80848;}}}}', 'no'),
(845, '_site_transient_timeout_theme_roots', '1531266534', 'no'),
(846, '_site_transient_theme_roots', 'a:4:{s:6:"r-news";s:7:"/themes";s:13:"twentyfifteen";s:7:"/themes";s:15:"twentyseventeen";s:7:"/themes";s:13:"twentysixteen";s:7:"/themes";}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB AUTO_INCREMENT=662 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(3, 6, '_edit_last', '1'),
(4, 6, '_edit_lock', '1529199352:1'),
(5, 7, '_edit_last', '1'),
(6, 7, '_edit_lock', '1529943193:1'),
(7, 9, '_menu_item_type', 'custom'),
(8, 9, '_menu_item_menu_item_parent', '0'),
(9, 9, '_menu_item_object_id', '9'),
(10, 9, '_menu_item_object', 'custom'),
(11, 9, '_menu_item_target', ''),
(12, 9, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(13, 9, '_menu_item_xfn', ''),
(14, 9, '_menu_item_url', 'http://localhost/ralali/'),
(15, 9, '_menu_item_orphaned', '1529380270'),
(25, 12, '_edit_last', '1'),
(26, 12, '_edit_lock', '1529808583:1'),
(27, 12, '_wp_trash_meta_status', 'publish'),
(28, 12, '_wp_trash_meta_time', '1529808731'),
(29, 12, '_wp_desired_post_slug', 'test'),
(31, 15, '_edit_last', '1'),
(32, 15, '_edit_lock', '1529943082:1'),
(33, 16, '_edit_last', '1'),
(34, 16, '_edit_lock', '1529943098:1'),
(47, 28, '_edit_lock', '1529943027:1'),
(48, 28, '_edit_last', '1'),
(51, 32, '_edit_lock', '1529941431:1'),
(52, 32, '_edit_last', '1'),
(53, 32, 'business_read_time', 'asdasd'),
(54, 28, 'business_read_time', 'satu'),
(55, 28, 'enterpreneur_read_time', NULL),
(56, 33, '_edit_lock', '1529943051:1'),
(57, 33, '_edit_last', '1'),
(58, 33, 'business_read_time', NULL),
(59, 33, 'enterpreneur_read_time', 'aaaa'),
(60, 33, 'mindset_read_time', NULL),
(61, 33, 'businessstory_read_time', NULL),
(62, 33, 'inspiration_read_time', NULL),
(63, 33, 'technology_read_time', NULL),
(64, 33, 'info_read_time', NULL),
(65, 33, 'tipsandtrick_read_time', NULL),
(66, 33, 'video_read_time', NULL),
(67, 33, 'infographic_read_time', NULL),
(68, 34, '_edit_lock', '1529943072:1'),
(69, 34, '_edit_last', '1'),
(70, 34, 'business_read_time', NULL),
(71, 34, 'enterpreneur_read_time', NULL),
(72, 34, 'mindset_read_time', 'sadsaddsadsaasd'),
(73, 34, 'businessstory_read_time', NULL),
(74, 34, 'inspiration_read_time', NULL),
(75, 34, 'technology_read_time', NULL),
(76, 34, 'info_read_time', NULL),
(77, 34, 'tipsandtrick_read_time', NULL),
(78, 34, 'video_read_time', NULL),
(79, 34, 'infographic_read_time', NULL),
(80, 15, 'business_read_time', NULL),
(81, 15, 'enterpreneur_read_time', NULL),
(82, 15, 'mindset_read_time', NULL),
(83, 15, 'businessstory_read_time', 'asa'),
(84, 15, 'inspiration_read_time', NULL),
(85, 15, 'technology_read_time', NULL),
(86, 15, 'info_read_time', NULL),
(87, 15, 'tipsandtrick_read_time', NULL),
(88, 15, 'video_read_time', NULL),
(89, 15, 'infographic_read_time', NULL),
(90, 16, 'business_read_time', NULL),
(91, 16, 'enterpreneur_read_time', NULL),
(92, 16, 'mindset_read_time', NULL),
(93, 16, 'businessstory_read_time', NULL),
(94, 16, 'inspiration_read_time', 'asddsasda'),
(95, 16, 'technology_read_time', NULL),
(96, 16, 'info_read_time', NULL),
(97, 16, 'tipsandtrick_read_time', NULL),
(98, 16, 'video_read_time', NULL),
(99, 16, 'infographic_read_time', NULL),
(100, 35, '_edit_lock', '1529943122:1'),
(101, 35, '_edit_last', '1'),
(102, 35, 'business_read_time', NULL),
(103, 35, 'enterpreneur_read_time', NULL),
(104, 35, 'mindset_read_time', NULL),
(105, 35, 'businessstory_read_time', NULL),
(106, 35, 'inspiration_read_time', NULL),
(107, 35, 'technology_read_time', 'assasdaa'),
(108, 35, 'info_read_time', NULL),
(109, 35, 'tipsandtrick_read_time', NULL),
(110, 35, 'video_read_time', NULL),
(111, 35, 'infographic_read_time', NULL),
(112, 36, '_edit_lock', '1529943139:1'),
(113, 36, '_edit_last', '1'),
(114, 36, 'business_read_time', NULL),
(115, 36, 'enterpreneur_read_time', NULL),
(116, 36, 'mindset_read_time', NULL),
(117, 36, 'businessstory_read_time', NULL),
(118, 36, 'inspiration_read_time', NULL),
(119, 36, 'technology_read_time', NULL),
(120, 36, 'info_read_time', 'asddsadsaa'),
(121, 36, 'tipsandtrick_read_time', NULL),
(122, 36, 'video_read_time', NULL),
(123, 36, 'infographic_read_time', NULL),
(124, 37, '_edit_lock', '1529943155:1'),
(125, 37, '_edit_last', '1'),
(126, 37, 'business_read_time', NULL),
(127, 37, 'enterpreneur_read_time', NULL),
(128, 37, 'mindset_read_time', NULL),
(129, 37, 'businessstory_read_time', NULL),
(130, 37, 'inspiration_read_time', NULL),
(131, 37, 'technology_read_time', NULL),
(132, 37, 'info_read_time', NULL),
(133, 37, 'tipsandtrick_read_time', '11111'),
(134, 37, 'video_read_time', NULL),
(135, 37, 'infographic_read_time', NULL),
(136, 38, '_edit_lock', '1529943173:1'),
(137, 38, '_edit_last', '1'),
(138, 38, 'business_read_time', NULL),
(139, 38, 'enterpreneur_read_time', NULL),
(140, 38, 'mindset_read_time', NULL),
(141, 38, 'businessstory_read_time', NULL),
(142, 38, 'inspiration_read_time', NULL),
(143, 38, 'technology_read_time', NULL),
(144, 38, 'info_read_time', NULL),
(145, 38, 'tipsandtrick_read_time', NULL),
(146, 38, 'video_read_time', 'SASDASADSADDAS'),
(147, 38, 'infographic_read_time', NULL),
(148, 7, 'business_read_time', NULL),
(149, 7, 'enterpreneur_read_time', NULL),
(150, 7, 'mindset_read_time', NULL),
(151, 7, 'businessstory_read_time', NULL),
(152, 7, 'inspiration_read_time', NULL),
(153, 7, 'technology_read_time', NULL),
(154, 7, 'info_read_time', NULL),
(155, 7, 'tipsandtrick_read_time', NULL),
(156, 7, 'video_read_time', NULL),
(157, 7, 'infographic_read_time', 'SANDY1111'),
(161, 46, '_menu_item_type', 'taxonomy'),
(162, 46, '_menu_item_menu_item_parent', '0'),
(163, 46, '_menu_item_object_id', '12'),
(164, 46, '_menu_item_object', 'category'),
(165, 46, '_menu_item_target', ''),
(166, 46, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(167, 46, '_menu_item_xfn', ''),
(168, 46, '_menu_item_url', ''),
(170, 47, '_menu_item_type', 'taxonomy'),
(171, 47, '_menu_item_menu_item_parent', '0'),
(172, 47, '_menu_item_object_id', '4'),
(173, 47, '_menu_item_object', 'category'),
(174, 47, '_menu_item_target', ''),
(175, 47, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(176, 47, '_menu_item_xfn', ''),
(177, 47, '_menu_item_url', ''),
(179, 48, '_menu_item_type', 'taxonomy'),
(180, 48, '_menu_item_menu_item_parent', '0'),
(181, 48, '_menu_item_object_id', '7'),
(182, 48, '_menu_item_object', 'category'),
(183, 48, '_menu_item_target', ''),
(184, 48, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(185, 48, '_menu_item_xfn', ''),
(186, 48, '_menu_item_url', ''),
(188, 49, '_menu_item_type', 'taxonomy'),
(189, 49, '_menu_item_menu_item_parent', '0'),
(190, 49, '_menu_item_object_id', '5'),
(191, 49, '_menu_item_object', 'category'),
(192, 49, '_menu_item_target', ''),
(193, 49, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(194, 49, '_menu_item_xfn', ''),
(195, 49, '_menu_item_url', ''),
(197, 50, '_menu_item_type', 'taxonomy'),
(198, 50, '_menu_item_menu_item_parent', '0'),
(199, 50, '_menu_item_object_id', '10'),
(200, 50, '_menu_item_object', 'category'),
(201, 50, '_menu_item_target', ''),
(202, 50, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(203, 50, '_menu_item_xfn', ''),
(204, 50, '_menu_item_url', ''),
(206, 51, '_menu_item_type', 'taxonomy'),
(207, 51, '_menu_item_menu_item_parent', '0'),
(208, 51, '_menu_item_object_id', '14'),
(209, 51, '_menu_item_object', 'category'),
(210, 51, '_menu_item_target', ''),
(211, 51, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(212, 51, '_menu_item_xfn', ''),
(213, 51, '_menu_item_url', ''),
(215, 52, '_menu_item_type', 'taxonomy'),
(216, 52, '_menu_item_menu_item_parent', '0'),
(217, 52, '_menu_item_object_id', '8'),
(218, 52, '_menu_item_object', 'category'),
(219, 52, '_menu_item_target', ''),
(220, 52, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(221, 52, '_menu_item_xfn', ''),
(222, 52, '_menu_item_url', ''),
(224, 53, '_menu_item_type', 'taxonomy'),
(225, 53, '_menu_item_menu_item_parent', '0'),
(226, 53, '_menu_item_object_id', '6'),
(227, 53, '_menu_item_object', 'category'),
(228, 53, '_menu_item_target', ''),
(229, 53, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(230, 53, '_menu_item_xfn', ''),
(231, 53, '_menu_item_url', ''),
(233, 54, '_menu_item_type', 'taxonomy'),
(234, 54, '_menu_item_menu_item_parent', '0'),
(235, 54, '_menu_item_object_id', '9'),
(236, 54, '_menu_item_object', 'category'),
(237, 54, '_menu_item_target', ''),
(238, 54, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(239, 54, '_menu_item_xfn', ''),
(240, 54, '_menu_item_url', ''),
(242, 55, '_menu_item_type', 'taxonomy'),
(243, 55, '_menu_item_menu_item_parent', '0'),
(244, 55, '_menu_item_object_id', '11'),
(245, 55, '_menu_item_object', 'category'),
(246, 55, '_menu_item_target', ''),
(247, 55, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(248, 55, '_menu_item_xfn', ''),
(249, 55, '_menu_item_url', ''),
(260, 57, '_menu_item_type', 'taxonomy'),
(261, 57, '_menu_item_menu_item_parent', '0'),
(262, 57, '_menu_item_object_id', '13'),
(263, 57, '_menu_item_object', 'category'),
(264, 57, '_menu_item_target', ''),
(265, 57, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(266, 57, '_menu_item_xfn', ''),
(267, 57, '_menu_item_url', ''),
(269, 58, '_menu_item_type', 'custom'),
(270, 58, '_menu_item_menu_item_parent', '0'),
(271, 58, '_menu_item_object_id', '58'),
(272, 58, '_menu_item_object', 'custom'),
(273, 58, '_menu_item_target', ''),
(274, 58, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(275, 58, '_menu_item_xfn', ''),
(276, 58, '_menu_item_url', 'https://ralali.com'),
(298, 68, '_edit_lock', '1530256769:1'),
(299, 68, '_edit_last', '1'),
(304, 70, '_edit_lock', '1530256385:1'),
(305, 70, '_edit_last', '1'),
(310, 73, '_edit_lock', '1531092910:1'),
(311, 73, '_edit_last', '1'),
(340, 73, 'timeforread', 'baca 1 menit'),
(347, 77, '_wp_attached_file', '2018/06/DSC_9620.jpg'),
(348, 77, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:556;s:6:"height";i:291;s:4:"file";s:20:"2018/06/DSC_9620.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"DSC_9620-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"DSC_9620-300x157.jpg";s:5:"width";i:300;s:6:"height";i:157;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:3:"1.8";s:6:"credit";s:0:"";s:6:"camera";s:11:"NIKON D3100";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1483249808";s:9:"copyright";s:0:"";s:12:"focal_length";s:2:"35";s:3:"iso";s:3:"800";s:13:"shutter_speed";s:7:"0.00025";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(349, 73, '_thumbnail_id', '77'),
(352, 78, '_wp_attached_file', '2018/06/DSC_3449.jpg'),
(353, 78, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:556;s:6:"height";i:291;s:4:"file";s:20:"2018/06/DSC_3449.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"DSC_3449-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"DSC_3449-300x157.jpg";s:5:"width";i:300;s:6:"height";i:157;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:3:"1.8";s:6:"credit";s:0:"";s:6:"camera";s:11:"NIKON D3100";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1511654829";s:9:"copyright";s:0:"";s:12:"focal_length";s:2:"35";s:3:"iso";s:3:"800";s:13:"shutter_speed";s:6:"0.0125";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(354, 70, '_thumbnail_id', '78'),
(357, 70, 'timeforread', 'baca 4 menit'),
(358, 79, '_wp_attached_file', '2018/06/DSC_9589.jpg'),
(359, 79, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:556;s:6:"height";i:291;s:4:"file";s:20:"2018/06/DSC_9589.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"DSC_9589-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"DSC_9589-300x157.jpg";s:5:"width";i:300;s:6:"height";i:157;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:3:"1.8";s:6:"credit";s:0:"";s:6:"camera";s:11:"NIKON D3100";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1483248596";s:9:"copyright";s:0:"";s:12:"focal_length";s:2:"35";s:3:"iso";s:3:"800";s:13:"shutter_speed";s:6:"0.0008";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(360, 68, '_thumbnail_id', '79'),
(363, 68, 'timeforread', 'baca 30 menit'),
(378, 83, '_edit_lock', '1531062190:1'),
(379, 83, '_edit_last', '1'),
(382, 83, 'timeforread', 'baca 45 menit'),
(383, 85, '_edit_lock', '1531062129:1'),
(384, 85, '_edit_last', '1'),
(387, 85, 'timeforread', 'baca 25 menit'),
(402, 91, '_wp_attached_file', '2018/06/DSC_9638.jpg'),
(403, 91, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:556;s:6:"height";i:291;s:4:"file";s:20:"2018/06/DSC_9638.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"DSC_9638-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"DSC_9638-300x157.jpg";s:5:"width";i:300;s:6:"height";i:157;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:3:"1.8";s:6:"credit";s:0:"";s:6:"camera";s:11:"NIKON D3100";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1483251012";s:9:"copyright";s:0:"";s:12:"focal_length";s:2:"35";s:3:"iso";s:3:"800";s:13:"shutter_speed";s:4:"0.01";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(404, 85, '_thumbnail_id', '91'),
(407, 92, '_wp_attached_file', '2018/06/DSC_9659.jpg'),
(408, 92, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:556;s:6:"height";i:291;s:4:"file";s:20:"2018/06/DSC_9659.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"DSC_9659-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"DSC_9659-300x157.jpg";s:5:"width";i:300;s:6:"height";i:157;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:3:"2.8";s:6:"credit";s:0:"";s:6:"camera";s:11:"NIKON D3100";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1483287650";s:9:"copyright";s:0:"";s:12:"focal_length";s:2:"35";s:3:"iso";s:3:"200";s:13:"shutter_speed";s:6:"0.0008";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(409, 83, '_thumbnail_id', '92'),
(412, 93, '_edit_lock', '1531090170:1'),
(413, 93, '_edit_last', '1'),
(416, 93, 'timeforread', 'baca 10 menit'),
(419, 96, '_wp_attached_file', '2018/06/DSC_0237.jpg'),
(420, 96, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:556;s:6:"height";i:291;s:4:"file";s:20:"2018/06/DSC_0237.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"DSC_0237-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"DSC_0237-300x157.jpg";s:5:"width";i:300;s:6:"height";i:157;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"2";s:6:"credit";s:0:"";s:6:"camera";s:11:"NIKON D3100";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1483707217";s:9:"copyright";s:0:"";s:12:"focal_length";s:2:"35";s:3:"iso";s:3:"400";s:13:"shutter_speed";s:9:"0.0015625";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(421, 93, '_thumbnail_id', '96'),
(424, 97, '_edit_lock', '1531062079:1'),
(425, 97, '_edit_last', '1'),
(426, 98, '_wp_attached_file', '2018/06/DSC_0441.jpg'),
(427, 98, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:556;s:6:"height";i:291;s:4:"file";s:20:"2018/06/DSC_0441.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"DSC_0441-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"DSC_0441-300x157.jpg";s:5:"width";i:300;s:6:"height";i:157;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:3:"1.8";s:6:"credit";s:0:"";s:6:"camera";s:11:"NIKON D3100";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1485680351";s:9:"copyright";s:0:"";s:12:"focal_length";s:2:"35";s:3:"iso";s:3:"800";s:13:"shutter_speed";s:8:"0.000625";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(428, 97, '_thumbnail_id', '98'),
(431, 97, 'timeforread', 'baca 3 menit'),
(432, 100, '_edit_lock', '1531062047:1'),
(433, 100, '_edit_last', '1'),
(436, 100, 'timeforread', 'baca 20 menit'),
(437, 102, '_wp_attached_file', '2018/06/DSC_0422.jpg'),
(438, 102, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:556;s:6:"height";i:291;s:4:"file";s:20:"2018/06/DSC_0422.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"DSC_0422-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"DSC_0422-300x157.jpg";s:5:"width";i:300;s:6:"height";i:157;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:3:"1.8";s:6:"credit";s:0:"";s:6:"camera";s:11:"NIKON D3100";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1485679960";s:9:"copyright";s:0:"";s:12:"focal_length";s:2:"35";s:3:"iso";s:3:"400";s:13:"shutter_speed";s:8:"0.000625";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(439, 100, '_thumbnail_id', '102'),
(440, 105, '_edit_lock', '1531109384:1'),
(441, 105, '_edit_last', '1'),
(442, 105, 'timeforread', 'baca 6 menit'),
(443, 107, '_wp_attached_file', '2018/07/DSC_0824.jpg'),
(444, 107, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:556;s:6:"height";i:291;s:4:"file";s:20:"2018/07/DSC_0824.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"DSC_0824-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"DSC_0824-300x157.jpg";s:5:"width";i:300;s:6:"height";i:157;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:3:"2.5";s:6:"credit";s:0:"";s:6:"camera";s:11:"NIKON D3100";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1490943154";s:9:"copyright";s:0:"";s:12:"focal_length";s:2:"35";s:3:"iso";s:3:"200";s:13:"shutter_speed";s:8:"0.000625";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(445, 105, '_thumbnail_id', '107'),
(448, 108, '_edit_lock', '1531061946:1'),
(449, 108, '_edit_last', '1'),
(450, 109, '_wp_attached_file', '2018/07/1_create_app_wizard_features.jpg'),
(451, 109, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2200;s:6:"height";i:2000;s:4:"file";s:40:"2018/07/1_create_app_wizard_features.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:40:"1_create_app_wizard_features-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:40:"1_create_app_wizard_features-300x273.jpg";s:5:"width";i:300;s:6:"height";i:273;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:40:"1_create_app_wizard_features-768x698.jpg";s:5:"width";i:768;s:6:"height";i:698;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:41:"1_create_app_wizard_features-1024x931.jpg";s:5:"width";i:1024;s:6:"height";i:931;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(452, 108, '_thumbnail_id', '79'),
(455, 108, 'timeforread', 'baca 10 menit'),
(472, 93, 'readcounter', '27'),
(473, 97, 'readcounter', '29'),
(474, 85, 'readcounter', '3'),
(475, 73, 'readcounter', '6'),
(476, 108, 'readcounter', '141'),
(479, 108, '_wp_old_slug', '108'),
(480, 68, 'readcounter', '1'),
(481, 100, 'readcounter', '52'),
(482, 83, 'readcounter', '5'),
(487, 105, 'readcounter', '24'),
(488, 115, '_edit_last', '1'),
(489, 115, '_edit_lock', '1530972552:1'),
(490, 115, 'socialmediaurl', 'asdasdasdasd'),
(491, 117, '_edit_last', '1'),
(492, 117, 'socmed_url_value', 'tessss'),
(493, 117, '_edit_lock', '1530972924:1'),
(494, 109, 'readcounter', '1'),
(495, 107, 'readcounter', '1'),
(496, 108, '_heateor_sss_shares_meta', 'a:2:{s:7:"twitter";i:0;s:8:"facebook";s:0:"";}'),
(497, 105, '_heateor_sss_shares_meta', 'a:2:{s:7:"twitter";i:0;s:8:"facebook";s:0:"";}'),
(498, 100, '_heateor_sss_shares_meta', 'a:2:{s:7:"twitter";i:0;s:8:"facebook";s:0:"";}'),
(499, 97, '_heateor_sss_shares_meta', 'a:2:{s:7:"twitter";i:0;s:8:"facebook";s:0:"";}'),
(502, 108, '_heateor_ffc_meta', 'a:1:{s:17:"facebook_comments";i:0;}'),
(503, 108, '_heateor_sss_meta', 'a:2:{s:25:"facebook_horizontal_count";s:0:"";s:24:"twitter_horizontal_count";s:0:"";}'),
(506, 105, '_heateor_ffc_meta', 'a:1:{s:17:"facebook_comments";s:1:"1";}'),
(507, 105, '_heateor_sss_meta', 'a:2:{s:25:"facebook_horizontal_count";s:0:"";s:24:"twitter_horizontal_count";s:0:"";}'),
(512, 85, '_heateor_sss_shares_meta', 'a:2:{s:7:"twitter";i:0;s:8:"facebook";s:0:"";}'),
(513, 93, '_heateor_sss_shares_meta', 'a:2:{s:7:"twitter";i:0;s:8:"facebook";s:0:"";}'),
(514, 121, '_edit_lock', '1531264166:1'),
(515, 121, '_edit_last', '1'),
(516, 122, '_edit_lock', '1531024469:1'),
(517, 123, '_edit_lock', '1531024488:1'),
(518, 124, '_edit_lock', '1531025127:1'),
(519, 124, '_edit_last', '1'),
(520, 125, '_edit_lock', '1531025238:1'),
(521, 125, '_edit_last', '1'),
(522, 126, '_edit_lock', '1531025321:1'),
(523, 127, '_edit_lock', '1531025647:1'),
(524, 130, '_edit_lock', '1531025878:1'),
(525, 125, '_wp_trash_meta_status', 'draft'),
(526, 125, '_wp_trash_meta_time', '1531025890'),
(527, 125, '_wp_desired_post_slug', ''),
(528, 124, '_wp_trash_meta_status', 'draft'),
(529, 124, '_wp_trash_meta_time', '1531025891'),
(530, 124, '_wp_desired_post_slug', ''),
(533, 121, '_heateor_ffc_meta', 'a:1:{s:17:"facebook_comments";i:0;}'),
(534, 121, '_heateor_sss_meta', 'a:2:{s:25:"facebook_horizontal_count";s:0:"";s:24:"twitter_horizontal_count";s:0:"";}'),
(535, 121, 'timeforread', '1 jam'),
(536, 135, '_edit_last', '1'),
(537, 135, '_heateor_ffc_meta', 'a:1:{s:17:"facebook_comments";i:0;}'),
(538, 135, '_heateor_sss_meta', 'a:2:{s:25:"facebook_horizontal_count";s:0:"";s:24:"twitter_horizontal_count";s:0:"";}'),
(539, 135, '_edit_lock', '1531153662:1'),
(542, 137, '_edit_lock', '1531151563:1'),
(543, 137, '_edit_last', '1'),
(546, 137, '_heateor_ffc_meta', 'a:1:{s:17:"facebook_comments";i:0;}'),
(547, 137, '_heateor_sss_meta', 'a:2:{s:25:"facebook_horizontal_count";s:0:"";s:24:"twitter_horizontal_count";s:0:"";}'),
(554, 121, '_thumbnail_id', '107'),
(557, 121, 'readcounter', '121'),
(558, 121, '_heateor_sss_shares_meta', 'a:2:{s:7:"twitter";i:0;s:8:"facebook";s:0:"";}'),
(567, 100, '_heateor_ffc_meta', 'a:1:{s:17:"facebook_comments";i:0;}'),
(568, 100, '_heateor_sss_meta', 'a:2:{s:25:"facebook_horizontal_count";s:0:"";s:24:"twitter_horizontal_count";s:0:"";}'),
(571, 97, '_heateor_ffc_meta', 'a:1:{s:17:"facebook_comments";i:0;}'),
(572, 97, '_heateor_sss_meta', 'a:2:{s:25:"facebook_horizontal_count";s:0:"";s:24:"twitter_horizontal_count";s:0:"";}'),
(575, 93, '_heateor_ffc_meta', 'a:1:{s:17:"facebook_comments";i:0;}'),
(576, 93, '_heateor_sss_meta', 'a:2:{s:25:"facebook_horizontal_count";s:0:"";s:24:"twitter_horizontal_count";s:0:"";}'),
(579, 85, '_heateor_ffc_meta', 'a:1:{s:17:"facebook_comments";i:0;}'),
(580, 85, '_heateor_sss_meta', 'a:2:{s:25:"facebook_horizontal_count";s:0:"";s:24:"twitter_horizontal_count";s:0:"";}'),
(583, 83, '_heateor_ffc_meta', 'a:1:{s:17:"facebook_comments";i:0;}'),
(584, 83, '_heateor_sss_meta', 'a:2:{s:25:"facebook_horizontal_count";s:0:"";s:24:"twitter_horizontal_count";s:0:"";}'),
(587, 73, '_heateor_ffc_meta', 'a:1:{s:17:"facebook_comments";i:0;}'),
(588, 73, '_heateor_sss_meta', 'a:2:{s:25:"facebook_horizontal_count";s:0:"";s:24:"twitter_horizontal_count";s:0:"";}'),
(589, 83, '_heateor_sss_shares_meta', 'a:2:{s:7:"twitter";i:0;s:8:"facebook";s:0:"";}'),
(590, 151, '_edit_lock', '1531104885:1'),
(591, 153, '_edit_lock', '1531105002:1'),
(592, 156, '_edit_lock', '1531105022:1'),
(593, 157, '_edit_lock', '1531105158:1'),
(594, 159, '_edit_lock', '1531105439:1'),
(595, 163, '_edit_last', '1'),
(596, 163, '_heateor_ffc_meta', 'a:1:{s:17:"facebook_comments";i:0;}'),
(597, 163, '_heateor_sss_meta', 'a:2:{s:25:"facebook_horizontal_count";s:0:"";s:24:"twitter_horizontal_count";s:0:"";}'),
(598, 163, '_edit_lock', '1531139717:1'),
(599, 164, '_edit_lock', '1531105643:1'),
(600, 165, '_edit_lock', '1531105659:1'),
(601, 166, '_edit_lock', '1531105691:1'),
(602, 167, '_edit_lock', '1531105720:1'),
(603, 168, '_edit_lock', '1531105810:1'),
(604, 172, '_edit_lock', '1531105973:1'),
(605, 163, 'relatedpromourl', 'https://www.google.co.id/search?safe=off&hl=en&biw=1325&bih=675&ei=uVNDW8XJAYPdhwOY95WACw&q=hello+world&oq=hello+world&gs_l=psy-ab.3..0i131k1j0l9.10233.12670.0.13431.13.10.1.2.2.0.113.1041.2j8.10.0....0...1c.1.64.psy-ab..0.13.1052...35i39k1j0i67k1j0i131i67k1j0i203k1j0i20i263k1.0.3eefhOzjfWc'),
(606, 135, 'modal', '\r\n			      <div class="modal-background"></div>\r\n			      <div class="modal-card">\r\n				<header class="modal-card-head">\r\n				  <p class="modal-card-title">Modal title</p>\r\n				  <button class="delete" aria-label="close"></button>\r\n				</header>\r\n				\r\n				<section class="modal-card-body">\r\n				 TESTTTTTTTTTTTTTTTTTTTTTT\r\n				</section>\r\n				<footer class="modal-card-foot">\r\n				  <button class="button is-warning is-rounded">Submit</button>\r\n				  <button class="button is-rounded">Cancel</button>\r\n				</footer>\r\n			      </div>\r\n			    '),
(607, 176, '_edit_lock', '1531108312:1'),
(608, 177, '_edit_lock', '1531108431:1'),
(609, 178, '_edit_lock', '1531108470:1'),
(618, 187, '_edit_lock', '1531110296:1'),
(619, 189, '_edit_lock', '1531110673:1'),
(620, 191, '_edit_lock', '1531110713:1'),
(626, 195, '_edit_lock', '1531134520:1'),
(627, 137, 'modal', '\r\n			      <div class="modal-background"></div>\r\n			      <div class="modal-card">\r\n				<header class="modal-card-head">\r\n				  <p class="modal-card-title">Modal title</p>\r\n				  <button class="delete" aria-label="close"></button>\r\n				</header>\r\n				\r\n				<section class="modal-card-body">\r\n				 INI YANG KE DUAAA...GAK PAKE BUTTON\r\n				</section>\r\n				<!--<footer class="modal-card-foot">\r\n				  <button class="button is-warning is-rounded">Submit</button>\r\n				  <button class="button is-rounded">Cancel</button>\r\n				</footer>-->\r\n			      </div>\r\n			   '),
(634, 163, '_thumbnail_id', '77'),
(637, 135, '_thumbnail_id', '107'),
(638, 205, '_edit_lock', '1531153900:1'),
(639, 205, '_edit_last', '1'),
(640, 205, 'relatedpromourl', 'https://stackoverflow.com'),
(641, 205, '_heateor_ffc_meta', 'a:1:{s:17:"facebook_comments";i:0;}'),
(642, 205, '_heateor_sss_meta', 'a:2:{s:25:"facebook_horizontal_count";s:0:"";s:24:"twitter_horizontal_count";s:0:"";}'),
(643, 206, '_edit_lock', '1531264689:1'),
(644, 206, '_edit_last', '1'),
(645, 206, 'relatedpromourl', 'https://wordpress.stackexchange.com'),
(646, 206, '_heateor_ffc_meta', 'a:1:{s:17:"facebook_comments";i:0;}'),
(647, 206, '_heateor_sss_meta', 'a:2:{s:25:"facebook_horizontal_count";s:0:"";s:24:"twitter_horizontal_count";s:0:"";}'),
(648, 207, '_edit_lock', '1531153886:1'),
(649, 207, '_edit_last', '1'),
(650, 207, 'relatedpromourl', 'https://en.wikipedia.org/wiki/Dodol'),
(651, 207, '_heateor_ffc_meta', 'a:1:{s:17:"facebook_comments";i:0;}'),
(652, 207, '_heateor_sss_meta', 'a:2:{s:25:"facebook_horizontal_count";s:0:"";s:24:"twitter_horizontal_count";s:0:"";}'),
(653, 207, '_thumbnail_id', '98'),
(654, 206, '_thumbnail_id', '78'),
(655, 205, '_thumbnail_id', '79'),
(656, 73, '_heateor_sss_shares_meta', 'a:2:{s:7:"twitter";i:0;s:8:"facebook";s:0:"";}'),
(657, 208, '_edit_lock', '1531263423:1'),
(658, 210, '_edit_lock', '1531263442:1'),
(659, 211, '_edit_lock', '1531263462:1'),
(660, 213, '_edit_lock', '1531264085:1'),
(661, 214, '_edit_lock', '1531264101:1');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=220 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(6, 1, '2018-06-17 01:38:11', '2018-06-17 01:38:11', '', 'tes info graphic', '', 'publish', 'closed', 'closed', '', 'tes-info-graphic', '', '', '2018-06-17 01:38:11', '2018-06-17 01:38:11', '', 0, 'http://localhost/ralali/?post_type=infographic&#038;p=6', 0, 'infographic', '', 0),
(7, 1, '2018-06-17 01:38:26', '2018-06-17 01:38:26', '', 'sandy', '', 'publish', 'closed', 'closed', '', 'sandy', '', '', '2018-06-25 16:15:28', '2018-06-25 16:15:28', '', 0, 'http://localhost/ralali/?post_type=infographic&#038;p=7', 0, 'infographic', '', 0),
(9, 1, '2018-06-19 03:51:10', '0000-00-00 00:00:00', '', 'Home', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-06-19 03:51:10', '0000-00-00 00:00:00', '', 0, 'http://localhost/ralali/?p=9', 1, 'nav_menu_item', '', 0),
(12, 1, '2018-06-24 02:51:49', '2018-06-24 02:51:49', '', 'test', '', 'trash', 'closed', 'closed', '', 'test__trashed', '', '', '2018-06-24 02:52:11', '2018-06-24 02:52:11', '', 0, 'http://localhost/ralali/?post_type=businessstory&#038;p=12', 0, 'businessstory', '', 0),
(15, 1, '2018-06-24 02:55:22', '2018-06-24 02:55:22', 'test', 'test business story', '', 'publish', 'closed', 'closed', '', 'test-business-story', '', '', '2018-06-25 16:13:42', '2018-06-25 16:13:42', '', 0, 'http://localhost/ralali/?post_type=businessstory&#038;p=15', 0, 'businessstory', '', 0),
(16, 1, '2018-06-24 03:00:54', '2018-06-24 03:00:54', 'asddsadsa', 'inspiration 1', '', 'publish', 'closed', 'closed', '', 'inspiration-1', '', '', '2018-06-25 16:13:57', '2018-06-25 16:13:57', '', 0, 'http://localhost/ralali/?post_type=inspiration&#038;p=16', 0, 'inspiration', '', 0),
(28, 1, '2018-06-25 15:09:09', '2018-06-25 15:09:09', 'test', 'Business 1', '', 'publish', 'closed', 'closed', '', 'business-1', '', '', '2018-06-25 15:53:17', '2018-06-25 15:53:17', '', 0, 'http://localhost/ralali/?post_type=business&#038;p=28', 0, 'business', '', 0),
(32, 1, '2018-06-25 15:35:38', '2018-06-25 15:35:38', '', 'qweqweqew', '', 'publish', 'closed', 'closed', '', 'qweqweqew', '', '', '2018-06-25 15:45:20', '2018-06-25 15:45:20', '', 0, 'http://localhost/ralali/?post_type=business&#038;p=32', 0, 'business', '', 0),
(33, 1, '2018-06-25 16:13:06', '2018-06-25 16:13:06', 'sddsdsasaddsa', 'tessss', '', 'publish', 'closed', 'closed', '', 'tessss', '', '', '2018-06-25 16:13:11', '2018-06-25 16:13:11', '', 0, 'http://localhost/ralali/?post_type=enterpreneur&#038;p=33', 0, 'enterpreneur', '', 0),
(34, 1, '2018-06-25 16:13:27', '2018-06-25 16:13:27', 'asddsadasads', 'asddsasadsad', '', 'publish', 'closed', 'closed', '', 'asddsasadsad', '', '', '2018-06-25 16:13:31', '2018-06-25 16:13:31', '', 0, 'http://localhost/ralali/?post_type=mindset&#038;p=34', 0, 'mindset', '', 0),
(35, 1, '2018-06-25 16:14:17', '2018-06-25 16:14:17', 'asasdsasad', 'etsadasadsdsa', '', 'publish', 'closed', 'closed', '', 'etsadasadsdsa', '', '', '2018-06-25 16:14:23', '2018-06-25 16:14:23', '', 0, 'http://localhost/ralali/?post_type=technology&#038;p=35', 0, 'technology', '', 0),
(36, 1, '2018-06-25 16:14:41', '2018-06-25 16:14:41', 'asddsadssdasdadsaa', 'asddsadasdsaa', '', 'publish', 'closed', 'closed', '', 'asddsadasdsaa', '', '', '2018-06-25 16:14:41', '2018-06-25 16:14:41', '', 0, 'http://localhost/ralali/?post_type=info&#038;p=36', 0, 'info', '', 0),
(37, 1, '2018-06-25 16:14:55', '2018-06-25 16:14:55', '', 'satu1', '', 'publish', 'closed', 'closed', '', 'satu1', '', '', '2018-06-25 16:14:55', '2018-06-25 16:14:55', '', 0, 'http://localhost/ralali/?post_type=tipsandtrick&#038;p=37', 0, 'tipsandtrick', '', 0),
(38, 1, '2018-06-25 16:15:08', '2018-06-25 16:15:08', 'SSASADSASADSAD', 'asdadssadsad', '', 'publish', 'closed', 'closed', '', 'asdadssadsad', '', '', '2018-06-25 16:15:15', '2018-06-25 16:15:15', '', 0, 'http://localhost/ralali/?post_type=video&#038;p=38', 0, 'video', '', 0),
(46, 3, '2018-06-27 23:49:48', '2018-06-27 23:49:48', ' ', '', '', 'publish', 'closed', 'closed', '', '46', '', '', '2018-06-27 23:53:30', '2018-06-27 23:53:30', '', 0, 'http://localhost/r-news/?p=46', 9, 'nav_menu_item', '', 0),
(47, 3, '2018-06-27 23:49:48', '2018-06-27 23:49:48', ' ', '', '', 'publish', 'closed', 'closed', '', '47', '', '', '2018-06-27 23:53:29', '2018-06-27 23:53:29', '', 0, 'http://localhost/r-news/?p=47', 1, 'nav_menu_item', '', 0),
(48, 3, '2018-06-27 23:49:48', '2018-06-27 23:49:48', ' ', '', '', 'publish', 'closed', 'closed', '', '48', '', '', '2018-06-27 23:53:30', '2018-06-27 23:53:30', '', 0, 'http://localhost/r-news/?p=48', 4, 'nav_menu_item', '', 0),
(49, 3, '2018-06-27 23:49:48', '2018-06-27 23:49:48', ' ', '', '', 'publish', 'closed', 'closed', '', '49', '', '', '2018-06-27 23:53:29', '2018-06-27 23:53:29', '', 0, 'http://localhost/r-news/?p=49', 2, 'nav_menu_item', '', 0),
(50, 3, '2018-06-27 23:49:48', '2018-06-27 23:49:48', ' ', '', '', 'publish', 'closed', 'closed', '', '50', '', '', '2018-06-27 23:53:30', '2018-06-27 23:53:30', '', 0, 'http://localhost/r-news/?p=50', 7, 'nav_menu_item', '', 0),
(51, 3, '2018-06-27 23:49:48', '2018-06-27 23:49:48', ' ', '', '', 'publish', 'closed', 'closed', '', '51', '', '', '2018-06-27 23:53:30', '2018-06-27 23:53:30', '', 0, 'http://localhost/r-news/?p=51', 11, 'nav_menu_item', '', 0),
(52, 3, '2018-06-27 23:49:48', '2018-06-27 23:49:48', ' ', '', '', 'publish', 'closed', 'closed', '', '52', '', '', '2018-06-27 23:53:30', '2018-06-27 23:53:30', '', 0, 'http://localhost/r-news/?p=52', 5, 'nav_menu_item', '', 0),
(53, 3, '2018-06-27 23:49:48', '2018-06-27 23:49:48', ' ', '', '', 'publish', 'closed', 'closed', '', '53', '', '', '2018-06-27 23:53:29', '2018-06-27 23:53:29', '', 0, 'http://localhost/r-news/?p=53', 3, 'nav_menu_item', '', 0),
(54, 3, '2018-06-27 23:49:48', '2018-06-27 23:49:48', ' ', '', '', 'publish', 'closed', 'closed', '', '54', '', '', '2018-06-27 23:53:30', '2018-06-27 23:53:30', '', 0, 'http://localhost/r-news/?p=54', 6, 'nav_menu_item', '', 0),
(55, 3, '2018-06-27 23:49:48', '2018-06-27 23:49:48', '', 'Tips & Trick', '', 'publish', 'closed', 'closed', '', 'tips-trick', '', '', '2018-06-27 23:53:30', '2018-06-27 23:53:30', '', 0, 'http://localhost/r-news/?p=55', 8, 'nav_menu_item', '', 0),
(57, 3, '2018-06-27 23:49:48', '2018-06-27 23:49:48', ' ', '', '', 'publish', 'closed', 'closed', '', '57', '', '', '2018-06-27 23:53:30', '2018-06-27 23:53:30', '', 0, 'http://localhost/r-news/?p=57', 10, 'nav_menu_item', '', 0),
(58, 3, '2018-06-27 23:50:08', '2018-06-27 23:50:08', '', 'Ralali.com', '', 'publish', 'closed', 'closed', '', 'ralali-com', '', '', '2018-06-27 23:53:30', '2018-06-27 23:53:30', '', 0, 'http://localhost/r-news/?p=58', 12, 'nav_menu_item', '', 0),
(68, 1, '2018-06-28 14:17:07', '2018-06-28 14:17:07', 'test', 'Bisnis Biskuit Coklat, Modal Kecil Peluang Besar, Untung Besar', '', 'publish', 'open', 'open', '', 'bisnis-biskuit-coklat-modal-kecil-peluang-besar-untung-besar', '', '', '2018-06-29 07:15:52', '2018-06-29 07:15:52', '', 0, 'http://localhost/r-news/?p=68', 0, 'post', '', 0),
(69, 1, '2018-06-28 14:17:07', '2018-06-28 14:17:07', 'test', 'Bisnis Biskuit Coklat, Modal Kecil Peluang Besar, Untung Besar', '', 'inherit', 'closed', 'closed', '', '68-revision-v1', '', '', '2018-06-28 14:17:07', '2018-06-28 14:17:07', '', 68, 'http://localhost/r-news/2018/06/28/68-revision-v1/', 0, 'revision', '', 0),
(70, 1, '2018-06-28 14:18:02', '2018-06-28 14:18:02', 'Kita akan belajar bagaimana caranya menulis artikel di wordpress dan menerbitkanya melalui penjelasan dan langkah detail, jadi bagi kamu yang belum punya website kamu bisa membuat website terlebih dulu melalui panduan <a href="http://www.caramembuatwebsite.org/">cara membuat website wordpress</a>.\r\n\r\n<!--more-->\r\n\r\nSetelah proses instalasi pasti website kamu kosong melompong itu karena kamu belum menulis artikel apapun. Menulis artikel di wordpress adalah hal yang mudah hanya saja kamu harus memahami tahapannya terlebih dulu, jadi sebelum praktek ada baiknya kamu paham terlebih dulu konsep penulisan yang yang ada di wordpress.\r\n\r\nSaya tidak mengajarkan bagaimana caranya menulis sebuah artikel, tetapi saya mengajarkan langkah dan prosedur untuk menulis dan menerbitkan artikel di platform wordpress.\r\n\r\nCara Menulis Artikel di WordPress ada 2 cara yaitu:\r\n<ol>\r\n 	<li>Menulis artikel di wordpress menggunakan menu <b>Posts</b></li>\r\n 	<li>Menlis artikel di wordpress menggunakan menu <strong>Pages</strong></li>\r\n</ol>\r\nSaya akan bahas satu per satu fungsi dari posts dan pages, apa perbedaan nya menulis di pages dan posts sehingga kamu tahu kamu harus nya menulis di Posts atau Pages.\r\n\r\nSetelah tau konsep menulis artikel di wordpress kita akan masuk ke langkah praktek menerbitkan artikel di Posts dan Pages.\r\n<h2>Menulis Artikel di WordPress menggunakan Posts</h2>\r\nPosts adalah tempat kumpulan artikel yang akan di tampilkan berurutan secara kronologi berdasarkan waktu dan tanggal artikel di terbitkan, urutanya di mulai dari tanggal yang terbaru hingga terakhir pada halaman utama. Sedangkan artikel yang sudah cukup lama akan secara otomatis bisa di kelompokan menjadi arsip yang di kelompokan per bulan dan per tahun.\r\n\r\nArtikel yang di tulis menggunakan posts bisa di kelompokan dengan menggunakan kategori dan hastag (tag). Kamu bisa buat kategori untuk masing-masing artikel dan juga membuat hastag untuk artikel mengelompokan artikel.\r\n\r\nArtikel yang di terbitkan di pages akan memunculkan user penulisnya, kapan artikel itu di tulis, artikel tersebut masuk dalam kategori apa, dan pembaca juga bisa memberikan komentar diskusi.\r\n\r\nPost adalah tempat yang cocok untuk menulis artikel yang berisi blog buku harian pribadi, berita, event yang semuanya di urutkan berdasarkan tanggal dan waktu. Tidak ada batasan berapa banyak artikel yang di terbitkan jadi kamu boleh tulis sebanyak-banyaknya.\r\n<h2>Menulis Artikel di WordPress menggunakan Pages</h2>\r\nArtikel pada pages bersifat statis artinya artikel pada halaman ini berdiri sendiri tidak ada kategori dan tanggal penulisan yang muncul di pembaca.\r\n\r\nIni cocok untuk membuat artikel yang tidak ada expire nya seperti halaman kontak,  halaman syarat dan ketentuan. Jadi kamu bisa selalu memperbaharui artikel di pages kapan saja.\r\n\r\nKalau posts pasti di urutkan berdasarkan tanggal sedangkan pages bisa di buat urutan sebagai sub pages, fitur ini bisa di gunakan sebagai pengaturan beberapa halaman.\r\n<h2>Cara Menulis Artikel di WordPress dan Memanfaatkan Semua Fiturnya</h2>\r\nSaya harapkan kamu sudah tau dimana artikel kamu seharusnya di tulis entah itu di page atau di post, karena pada bagian ini kita akan melakukan praktek cara menulis artikel dan menerbitkanya di website kita.\r\n\r\nUntuk bisa menulis di wordpress kamu harus masuk ke halaman admin wordpress, pastikan kamu sudah masuk ke halaman admin. Ayo kita mulai praktek<span id="more-445"></span>\r\n<h2>Pages</h2>\r\nUntuk lebih memudahkan kita akan langsung praktek saja untuk membuat halaman “tentang saya” atau about me. Halaman ini akan berisikan artikel yang menjelaskan tentang siapa sih sebenarnya sang pemilik website.\r\n<h3>Menu Pages</h3>\r\nMasuk ke menu pages makan akan muncul daftar artikel di pages seperti ilustrasi gambar <em>pengenalan pages wordpress. </em>', 'Cara Menulis Artikel Di WordPress', '', 'publish', 'open', 'open', '', 'cara-menulis-artikel-di-wordpress', '', '', '2018-06-29 07:15:27', '2018-06-29 07:15:27', '', 0, 'http://localhost/r-news/?p=70', 0, 'post', '', 0),
(71, 1, '2018-06-28 14:18:02', '2018-06-28 14:18:02', 'Yah, dicoba aja ya', 'Cara Menulis Artikel Di WordPress', '', 'inherit', 'closed', 'closed', '', '70-revision-v1', '', '', '2018-06-28 14:18:02', '2018-06-28 14:18:02', '', 70, 'http://localhost/r-news/2018/06/28/70-revision-v1/', 0, 'revision', '', 0),
(72, 1, '2018-06-28 14:18:38', '2018-06-28 14:18:38', 'Kita akan belajar bagaimana caranya menulis artikel di wordpress dan menerbitkanya melalui penjelasan dan langkah detail, jadi bagi kamu yang belum punya website kamu bisa membuat website terlebih dulu melalui panduan <a href="http://www.caramembuatwebsite.org/">cara membuat website wordpress</a>.\r\n\r\nSetelah proses instalasi pasti website kamu kosong melompong itu karena kamu belum menulis artikel apapun. Menulis artikel di wordpress adalah hal yang mudah hanya saja kamu harus memahami tahapannya terlebih dulu, jadi sebelum praktek ada baiknya kamu paham terlebih dulu konsep penulisan yang yang ada di wordpress.\r\n\r\nSaya tidak mengajarkan bagaimana caranya menulis sebuah artikel, tetapi saya mengajarkan langkah dan prosedur untuk menulis dan menerbitkan artikel di platform wordpress.\r\n\r\nCara Menulis Artikel di WordPress ada 2 cara yaitu:\r\n<ol>\r\n 	<li>Menulis artikel di wordpress menggunakan menu <b>Posts</b></li>\r\n 	<li>Menlis artikel di wordpress menggunakan menu <strong>Pages</strong></li>\r\n</ol>\r\nSaya akan bahas satu per satu fungsi dari posts dan pages, apa perbedaan nya menulis di pages dan posts sehingga kamu tahu kamu harus nya menulis di Posts atau Pages.\r\n\r\nSetelah tau konsep menulis artikel di wordpress kita akan masuk ke langkah praktek menerbitkan artikel di Posts dan Pages.\r\n<h2>Menulis Artikel di WordPress menggunakan Posts</h2>\r\nPosts adalah tempat kumpulan artikel yang akan di tampilkan berurutan secara kronologi berdasarkan waktu dan tanggal artikel di terbitkan, urutanya di mulai dari tanggal yang terbaru hingga terakhir pada halaman utama. Sedangkan artikel yang sudah cukup lama akan secara otomatis bisa di kelompokan menjadi arsip yang di kelompokan per bulan dan per tahun.\r\n\r\nArtikel yang di tulis menggunakan posts bisa di kelompokan dengan menggunakan kategori dan hastag (tag). Kamu bisa buat kategori untuk masing-masing artikel dan juga membuat hastag untuk artikel mengelompokan artikel.\r\n\r\nArtikel yang di terbitkan di pages akan memunculkan user penulisnya, kapan artikel itu di tulis, artikel tersebut masuk dalam kategori apa, dan pembaca juga bisa memberikan komentar diskusi.\r\n\r\nPost adalah tempat yang cocok untuk menulis artikel yang berisi blog buku harian pribadi, berita, event yang semuanya di urutkan berdasarkan tanggal dan waktu. Tidak ada batasan berapa banyak artikel yang di terbitkan jadi kamu boleh tulis sebanyak-banyaknya.\r\n<h2>Menulis Artikel di WordPress menggunakan Pages</h2>\r\nArtikel pada pages bersifat statis artinya artikel pada halaman ini berdiri sendiri tidak ada kategori dan tanggal penulisan yang muncul di pembaca.\r\n\r\nIni cocok untuk membuat artikel yang tidak ada expire nya seperti halaman kontak,  halaman syarat dan ketentuan. Jadi kamu bisa selalu memperbaharui artikel di pages kapan saja.\r\n\r\nKalau posts pasti di urutkan berdasarkan tanggal sedangkan pages bisa di buat urutan sebagai sub pages, fitur ini bisa di gunakan sebagai pengaturan beberapa halaman.\r\n<h2>Cara Menulis Artikel di WordPress dan Memanfaatkan Semua Fiturnya</h2>\r\nSaya harapkan kamu sudah tau dimana artikel kamu seharusnya di tulis entah itu di page atau di post, karena pada bagian ini kita akan melakukan praktek cara menulis artikel dan menerbitkanya di website kita.\r\n\r\nUntuk bisa menulis di wordpress kamu harus masuk ke halaman admin wordpress, pastikan kamu sudah masuk ke halaman admin. Ayo kita mulai praktek<span id="more-445"></span>\r\n<h2>Pages</h2>\r\nUntuk lebih memudahkan kita akan langsung praktek saja untuk membuat halaman “tentang saya” atau about me. Halaman ini akan berisikan artikel yang menjelaskan tentang siapa sih sebenarnya sang pemilik website.\r\n<h3>Menu Pages</h3>\r\nMasuk ke menu pages makan akan muncul daftar artikel di pages seperti ilustrasi gambar <em>pengenalan pages wordpress. </em>', 'Cara Menulis Artikel Di WordPress', '', 'inherit', 'closed', 'closed', '', '70-revision-v1', '', '', '2018-06-28 14:18:38', '2018-06-28 14:18:38', '', 70, 'http://localhost/r-news/2018/06/28/70-revision-v1/', 0, 'revision', '', 0),
(73, 1, '2018-06-28 14:33:48', '2018-06-28 14:33:48', 'According to a recent <a href="https://www.affili.net/uk/about-affilinet/press-centre/2015/bloggers-trusted-more-than-celebrities-journalist" target="_blank" rel="noopener">U.K. survey</a>, bloggers have ranked as the third most trustworthy source of information, <!--more-->\r\n\r\nfollowing only friends and family. That''s right -- bloggers are trusted more than celebrities, journalists, brands, and politicians.\r\n\r\nBut how do you get people to fall in love with your blog in the first place? (Aside from remarkable content, of course.)\r\n\r\nWell, just as your <a title="website homepage" href="https://blog.hubspot.com/blog/tabid/6307/bid/34006/15-Examples-of-Brilliant-Homepage-Design.aspx" target="_blank" rel="noopener">website homepage</a> is like the front door to your business, your blog''s design -- much like a welcome mat -- is the front door to your business blog.<span id="hs-cta-wrapper-c791aced-6180-48a5-916d-b2d76cec1836" class="hs-cta-wrapper"><span id="hs-cta-c791aced-6180-48a5-916d-b2d76cec1836" class="hs-cta-node hs-cta-c791aced-6180-48a5-916d-b2d76cec1836" data-hs-drop="true"><a id="cta_button_53_876c8edc-bcdf-4621-9b23-a828909453df" class="cta_button " title="Download our full collection of homepage, blog, and landing page examples here to inspire your own website design. " href="https://cta-service-cms2.hubspot.com/ctas/v2/public/cs/c/?cta_guid=876c8edc-bcdf-4621-9b23-a828909453df&amp;placement_guid=c791aced-6180-48a5-916d-b2d76cec1836&amp;portal_id=53&amp;redirect_url=APefjpFqyXAV5Y2th_hmIXmdlAi7XD4c-9BtKbozUYb97JTZEpyvbFCnWHJN6iOBuMtekkuUIr6mLjV_sFzuxuzGXD2EmAWab074WVRXgZNsjM5E51fcoqrGK_4lqBQg-rlW9m6RBYsUuzx8GXdq-wOHT3XmfTEYTvHKphtTvewjG6TtteyWNKLNSIgapTkpoQNYH1cscdlZ&amp;hsutk=c6e8bebafa7b0bad2746f19e3b447e5d&amp;canon=https%3A%2F%2Fblog.hubspot.com%2Fblog%2Ftabid%2F6307%2Fbid%2F34143%2F12-inspiring-examples-of-beautiful-blog-homepage-designs.aspx&amp;click=0ac8691a-e528-47b7-bc22-de0c07e12d10&amp;utm_referrer=https%3A%2F%2Fwww.google.co.id%2F&amp;pageId=24326359&amp;__hstc=20629287.c6e8bebafa7b0bad2746f19e3b447e5d.1530196391193.1530196391193.1530196391193.1&amp;__hssc=20629287.1.1530196391193&amp;__hsfp=298557263" target="_blank" rel="noopener"></a></span></span>\r\n<h3><a id="cta_button_53_876c8edc-bcdf-4621-9b23-a828909453df" class="cta_button " title="Download our full collection of homepage, blog, and landing page examples here to inspire your own website design. " href="https://cta-service-cms2.hubspot.com/ctas/v2/public/cs/c/?cta_guid=876c8edc-bcdf-4621-9b23-a828909453df&amp;placement_guid=c791aced-6180-48a5-916d-b2d76cec1836&amp;portal_id=53&amp;redirect_url=APefjpFqyXAV5Y2th_hmIXmdlAi7XD4c-9BtKbozUYb97JTZEpyvbFCnWHJN6iOBuMtekkuUIr6mLjV_sFzuxuzGXD2EmAWab074WVRXgZNsjM5E51fcoqrGK_4lqBQg-rlW9m6RBYsUuzx8GXdq-wOHT3XmfTEYTvHKphtTvewjG6TtteyWNKLNSIgapTkpoQNYH1cscdlZ&amp;hsutk=c6e8bebafa7b0bad2746f19e3b447e5d&amp;canon=https%3A%2F%2Fblog.hubspot.com%2Fblog%2Ftabid%2F6307%2Fbid%2F34143%2F12-inspiring-examples-of-beautiful-blog-homepage-designs.aspx&amp;click=0ac8691a-e528-47b7-bc22-de0c07e12d10&amp;utm_referrer=https%3A%2F%2Fwww.google.co.id%2F&amp;pageId=24326359&amp;__hstc=20629287.c6e8bebafa7b0bad2746f19e3b447e5d.1530196391193.1530196391193.1530196391193.1&amp;__hssc=20629287.1.1530196391193&amp;__hsfp=298557263" target="_blank" rel="noopener">Download our full collection of homepage, blog, and landing page examples here to inspire your own website design. </a></h3>\r\nIf you''re not attracting people visually, how will you get them to take the next steps to actually read (and, hopefully, <a title="subscribe to" href="https://blog.hubspot.com/blog/tabid/6307/bid/33700/How-to-Convert-Casual-Blog-Visitors-Into-Dedicated-Subscribers.aspx" target="_blank" rel="noopener">subscribe to</a>) your content?\r\n\r\n&nbsp;\r\n\r\nOnce you''re done creating the quality content, you still have the challenge of presenting it that clearly dictates what your blog is about. Images, text, and links need to be shown off just right -- otherwise, readers might abandon your content, if it''s not aesthetically showcased in a way that''s both appealing and easy to follow.\r\n\r\nThat''s why we''ve compiled some examples of <a href="https://library.hubspot.com/blog-editorial-calendar" target="_blank" rel="noopener">blog</a> homepages to get you on the right track to designing the perfect blog for your readers. Check ''em out.', '16 of the Best Examples of Beautiful Blog Design', '', 'publish', 'open', 'open', '', '16-of-the-best-examples-of-beautiful-blog-design', '', '', '2018-07-08 22:52:52', '2018-07-08 22:52:52', '', 0, 'http://localhost/r-news/?p=73', 0, 'post', '', 1),
(74, 1, '2018-06-28 14:33:48', '2018-06-28 14:33:48', 'According to a recent <a href="https://www.affili.net/uk/about-affilinet/press-centre/2015/bloggers-trusted-more-than-celebrities-journalist" target="_blank" rel="noopener">U.K. survey</a>, bloggers have ranked as the third most trustworthy source of information, following only friends and family. That''s right -- bloggers are trusted more than celebrities, journalists, brands, and politicians.\r\n\r\nBut how do you get people to fall in love with your blog in the first place? (Aside from remarkable content, of course.)\r\n\r\nWell, just as your <a title="website homepage" href="https://blog.hubspot.com/blog/tabid/6307/bid/34006/15-Examples-of-Brilliant-Homepage-Design.aspx" target="_blank" rel="noopener">website homepage</a> is like the front door to your business, your blog''s design -- much like a welcome mat -- is the front door to your business blog.<span id="hs-cta-wrapper-c791aced-6180-48a5-916d-b2d76cec1836" class="hs-cta-wrapper"><span id="hs-cta-c791aced-6180-48a5-916d-b2d76cec1836" class="hs-cta-node hs-cta-c791aced-6180-48a5-916d-b2d76cec1836" data-hs-drop="true"><a id="cta_button_53_876c8edc-bcdf-4621-9b23-a828909453df" class="cta_button " title="Download our full collection of homepage, blog, and landing page examples here  to inspire your own website design. " href="https://cta-service-cms2.hubspot.com/ctas/v2/public/cs/c/?cta_guid=876c8edc-bcdf-4621-9b23-a828909453df&amp;placement_guid=c791aced-6180-48a5-916d-b2d76cec1836&amp;portal_id=53&amp;redirect_url=APefjpFqyXAV5Y2th_hmIXmdlAi7XD4c-9BtKbozUYb97JTZEpyvbFCnWHJN6iOBuMtekkuUIr6mLjV_sFzuxuzGXD2EmAWab074WVRXgZNsjM5E51fcoqrGK_4lqBQg-rlW9m6RBYsUuzx8GXdq-wOHT3XmfTEYTvHKphtTvewjG6TtteyWNKLNSIgapTkpoQNYH1cscdlZ&amp;hsutk=c6e8bebafa7b0bad2746f19e3b447e5d&amp;canon=https%3A%2F%2Fblog.hubspot.com%2Fblog%2Ftabid%2F6307%2Fbid%2F34143%2F12-inspiring-examples-of-beautiful-blog-homepage-designs.aspx&amp;click=0ac8691a-e528-47b7-bc22-de0c07e12d10&amp;utm_referrer=https%3A%2F%2Fwww.google.co.id%2F&amp;pageId=24326359&amp;__hstc=20629287.c6e8bebafa7b0bad2746f19e3b447e5d.1530196391193.1530196391193.1530196391193.1&amp;__hssc=20629287.1.1530196391193&amp;__hsfp=298557263" target="_blank" rel="noopener"></a></span></span>\r\n<h3><a id="cta_button_53_876c8edc-bcdf-4621-9b23-a828909453df" class="cta_button " title="Download our full collection of homepage, blog, and landing page examples here  to inspire your own website design. " href="https://cta-service-cms2.hubspot.com/ctas/v2/public/cs/c/?cta_guid=876c8edc-bcdf-4621-9b23-a828909453df&amp;placement_guid=c791aced-6180-48a5-916d-b2d76cec1836&amp;portal_id=53&amp;redirect_url=APefjpFqyXAV5Y2th_hmIXmdlAi7XD4c-9BtKbozUYb97JTZEpyvbFCnWHJN6iOBuMtekkuUIr6mLjV_sFzuxuzGXD2EmAWab074WVRXgZNsjM5E51fcoqrGK_4lqBQg-rlW9m6RBYsUuzx8GXdq-wOHT3XmfTEYTvHKphtTvewjG6TtteyWNKLNSIgapTkpoQNYH1cscdlZ&amp;hsutk=c6e8bebafa7b0bad2746f19e3b447e5d&amp;canon=https%3A%2F%2Fblog.hubspot.com%2Fblog%2Ftabid%2F6307%2Fbid%2F34143%2F12-inspiring-examples-of-beautiful-blog-homepage-designs.aspx&amp;click=0ac8691a-e528-47b7-bc22-de0c07e12d10&amp;utm_referrer=https%3A%2F%2Fwww.google.co.id%2F&amp;pageId=24326359&amp;__hstc=20629287.c6e8bebafa7b0bad2746f19e3b447e5d.1530196391193.1530196391193.1530196391193.1&amp;__hssc=20629287.1.1530196391193&amp;__hsfp=298557263" target="_blank" rel="noopener">Download our full collection of homepage, blog, and landing page examples here to inspire your own website design. </a></h3>\r\nIf you''re not attracting people visually, how will you get them to take the next steps to actually read (and, hopefully, <a title="subscribe to" href="https://blog.hubspot.com/blog/tabid/6307/bid/33700/How-to-Convert-Casual-Blog-Visitors-Into-Dedicated-Subscribers.aspx" target="_blank" rel="noopener">subscribe to</a>) your content? Once you''re done creating the quality content, you still have the challenge of presenting it that clearly dictates what your blog is about. Images, text, and links need to be shown off just right -- otherwise, readers might abandon your content, if it''s not aesthetically showcased in a way that''s both appealing and easy to follow.\r\n\r\nThat''s why we''ve compiled some examples of <a href="https://library.hubspot.com/blog-editorial-calendar" target="_blank" rel="noopener">blog</a> homepages to get you on the right track to designing the perfect blog for your readers. Check ''em out.', '16 of the Best Examples of Beautiful Blog Design', '', 'inherit', 'closed', 'closed', '', '73-revision-v1', '', '', '2018-06-28 14:33:48', '2018-06-28 14:33:48', '', 73, 'http://localhost/r-news/2018/06/28/73-revision-v1/', 0, 'revision', '', 0),
(77, 1, '2018-06-28 16:37:05', '2018-06-28 16:37:05', '', 'DSC_9620', '', 'inherit', 'open', 'closed', '', 'dsc_9620', '', '', '2018-06-28 16:37:05', '2018-06-28 16:37:05', '', 73, 'http://localhost/r-news/wp-content/uploads/2018/06/DSC_9620.jpg', 0, 'attachment', 'image/jpeg', 0),
(78, 1, '2018-06-28 16:37:40', '2018-06-28 16:37:40', '', 'DSC_3449', '', 'inherit', 'open', 'closed', '', 'dsc_3449', '', '', '2018-06-28 16:37:40', '2018-06-28 16:37:40', '', 70, 'http://localhost/r-news/wp-content/uploads/2018/06/DSC_3449.jpg', 0, 'attachment', 'image/jpeg', 0),
(79, 1, '2018-06-28 16:38:03', '2018-06-28 16:38:03', '', 'DSC_9589', '', 'inherit', 'open', 'closed', '', 'dsc_9589', '', '', '2018-06-28 16:38:03', '2018-06-28 16:38:03', '', 68, 'http://localhost/r-news/wp-content/uploads/2018/06/DSC_9589.jpg', 0, 'attachment', 'image/jpeg', 0),
(80, 1, '2018-06-29 07:11:42', '2018-06-29 07:11:42', 'According to a recent <a href="https://www.affili.net/uk/about-affilinet/press-centre/2015/bloggers-trusted-more-than-celebrities-journalist" target="_blank" rel="noopener">U.K. survey</a>, bloggers have ranked as the third most trustworthy source of information, following only friends and family. That''s right -- bloggers are trusted more than celebrities, journalists, brands, and politicians.\r\n\r\nBut how do you get people to fall in love with your blog in the first place? (Aside from remarkable content, of course.)\r\n\r\nWell, just as your <a title="website homepage" href="https://blog.hubspot.com/blog/tabid/6307/bid/34006/15-Examples-of-Brilliant-Homepage-Design.aspx" target="_blank" rel="noopener">website homepage</a> is like the front door to your business, your blog''s design -- much like a welcome mat -- is the front door to your business blog.<span id="hs-cta-wrapper-c791aced-6180-48a5-916d-b2d76cec1836" class="hs-cta-wrapper"><span id="hs-cta-c791aced-6180-48a5-916d-b2d76cec1836" class="hs-cta-node hs-cta-c791aced-6180-48a5-916d-b2d76cec1836" data-hs-drop="true"><a id="cta_button_53_876c8edc-bcdf-4621-9b23-a828909453df" class="cta_button " title="Download our full collection of homepage, blog, and landing page examples here to inspire your own website design. " href="https://cta-service-cms2.hubspot.com/ctas/v2/public/cs/c/?cta_guid=876c8edc-bcdf-4621-9b23-a828909453df&amp;placement_guid=c791aced-6180-48a5-916d-b2d76cec1836&amp;portal_id=53&amp;redirect_url=APefjpFqyXAV5Y2th_hmIXmdlAi7XD4c-9BtKbozUYb97JTZEpyvbFCnWHJN6iOBuMtekkuUIr6mLjV_sFzuxuzGXD2EmAWab074WVRXgZNsjM5E51fcoqrGK_4lqBQg-rlW9m6RBYsUuzx8GXdq-wOHT3XmfTEYTvHKphtTvewjG6TtteyWNKLNSIgapTkpoQNYH1cscdlZ&amp;hsutk=c6e8bebafa7b0bad2746f19e3b447e5d&amp;canon=https%3A%2F%2Fblog.hubspot.com%2Fblog%2Ftabid%2F6307%2Fbid%2F34143%2F12-inspiring-examples-of-beautiful-blog-homepage-designs.aspx&amp;click=0ac8691a-e528-47b7-bc22-de0c07e12d10&amp;utm_referrer=https%3A%2F%2Fwww.google.co.id%2F&amp;pageId=24326359&amp;__hstc=20629287.c6e8bebafa7b0bad2746f19e3b447e5d.1530196391193.1530196391193.1530196391193.1&amp;__hssc=20629287.1.1530196391193&amp;__hsfp=298557263" target="_blank" rel="noopener"></a></span></span>\r\n<h3><a id="cta_button_53_876c8edc-bcdf-4621-9b23-a828909453df" class="cta_button " title="Download our full collection of homepage, blog, and landing page examples here to inspire your own website design. " href="https://cta-service-cms2.hubspot.com/ctas/v2/public/cs/c/?cta_guid=876c8edc-bcdf-4621-9b23-a828909453df&amp;placement_guid=c791aced-6180-48a5-916d-b2d76cec1836&amp;portal_id=53&amp;redirect_url=APefjpFqyXAV5Y2th_hmIXmdlAi7XD4c-9BtKbozUYb97JTZEpyvbFCnWHJN6iOBuMtekkuUIr6mLjV_sFzuxuzGXD2EmAWab074WVRXgZNsjM5E51fcoqrGK_4lqBQg-rlW9m6RBYsUuzx8GXdq-wOHT3XmfTEYTvHKphtTvewjG6TtteyWNKLNSIgapTkpoQNYH1cscdlZ&amp;hsutk=c6e8bebafa7b0bad2746f19e3b447e5d&amp;canon=https%3A%2F%2Fblog.hubspot.com%2Fblog%2Ftabid%2F6307%2Fbid%2F34143%2F12-inspiring-examples-of-beautiful-blog-homepage-designs.aspx&amp;click=0ac8691a-e528-47b7-bc22-de0c07e12d10&amp;utm_referrer=https%3A%2F%2Fwww.google.co.id%2F&amp;pageId=24326359&amp;__hstc=20629287.c6e8bebafa7b0bad2746f19e3b447e5d.1530196391193.1530196391193.1530196391193.1&amp;__hssc=20629287.1.1530196391193&amp;__hsfp=298557263" target="_blank" rel="noopener">Download our full collection of homepage, blog, and landing page examples here to inspire your own website design. </a></h3>\r\nIf you''re not attracting people visually, how will you get them to take the next steps to actually read (and, hopefully, <a title="subscribe to" href="https://blog.hubspot.com/blog/tabid/6307/bid/33700/How-to-Convert-Casual-Blog-Visitors-Into-Dedicated-Subscribers.aspx" target="_blank" rel="noopener">subscribe to</a>) your content? <!--more-->\r\n\r\n&nbsp;\r\n\r\nOnce you''re done creating the quality content, you still have the challenge of presenting it that clearly dictates what your blog is about. Images, text, and links need to be shown off just right -- otherwise, readers might abandon your content, if it''s not aesthetically showcased in a way that''s both appealing and easy to follow.\r\n\r\nThat''s why we''ve compiled some examples of <a href="https://library.hubspot.com/blog-editorial-calendar" target="_blank" rel="noopener">blog</a> homepages to get you on the right track to designing the perfect blog for your readers. Check ''em out.', '16 of the Best Examples of Beautiful Blog Design', '', 'inherit', 'closed', 'closed', '', '73-revision-v1', '', '', '2018-06-29 07:11:42', '2018-06-29 07:11:42', '', 73, 'http://localhost/r-news/2018/06/29/73-revision-v1/', 0, 'revision', '', 0),
(81, 1, '2018-06-29 07:12:16', '2018-06-29 07:12:16', 'According to a recent <a href="https://www.affili.net/uk/about-affilinet/press-centre/2015/bloggers-trusted-more-than-celebrities-journalist" target="_blank" rel="noopener">U.K. survey</a>, bloggers have ranked as the third most trustworthy source of information, following only friends and family. That''s right -- bloggers are trusted more than celebrities, journalists, brands, and politicians.\r\n\r\nBut how do you get people to fall in love with your blog in the first place? (Aside from remarkable content, of course.)\r\n\r\n<!--more-->\r\n\r\nWell, just as your <a title="website homepage" href="https://blog.hubspot.com/blog/tabid/6307/bid/34006/15-Examples-of-Brilliant-Homepage-Design.aspx" target="_blank" rel="noopener">website homepage</a> is like the front door to your business, your blog''s design -- much like a welcome mat -- is the front door to your business blog.<span id="hs-cta-wrapper-c791aced-6180-48a5-916d-b2d76cec1836" class="hs-cta-wrapper"><span id="hs-cta-c791aced-6180-48a5-916d-b2d76cec1836" class="hs-cta-node hs-cta-c791aced-6180-48a5-916d-b2d76cec1836" data-hs-drop="true"><a id="cta_button_53_876c8edc-bcdf-4621-9b23-a828909453df" class="cta_button " title="Download our full collection of homepage, blog, and landing page examples here to inspire your own website design. " href="https://cta-service-cms2.hubspot.com/ctas/v2/public/cs/c/?cta_guid=876c8edc-bcdf-4621-9b23-a828909453df&amp;placement_guid=c791aced-6180-48a5-916d-b2d76cec1836&amp;portal_id=53&amp;redirect_url=APefjpFqyXAV5Y2th_hmIXmdlAi7XD4c-9BtKbozUYb97JTZEpyvbFCnWHJN6iOBuMtekkuUIr6mLjV_sFzuxuzGXD2EmAWab074WVRXgZNsjM5E51fcoqrGK_4lqBQg-rlW9m6RBYsUuzx8GXdq-wOHT3XmfTEYTvHKphtTvewjG6TtteyWNKLNSIgapTkpoQNYH1cscdlZ&amp;hsutk=c6e8bebafa7b0bad2746f19e3b447e5d&amp;canon=https%3A%2F%2Fblog.hubspot.com%2Fblog%2Ftabid%2F6307%2Fbid%2F34143%2F12-inspiring-examples-of-beautiful-blog-homepage-designs.aspx&amp;click=0ac8691a-e528-47b7-bc22-de0c07e12d10&amp;utm_referrer=https%3A%2F%2Fwww.google.co.id%2F&amp;pageId=24326359&amp;__hstc=20629287.c6e8bebafa7b0bad2746f19e3b447e5d.1530196391193.1530196391193.1530196391193.1&amp;__hssc=20629287.1.1530196391193&amp;__hsfp=298557263" target="_blank" rel="noopener"></a></span></span>\r\n<h3><a id="cta_button_53_876c8edc-bcdf-4621-9b23-a828909453df" class="cta_button " title="Download our full collection of homepage, blog, and landing page examples here to inspire your own website design. " href="https://cta-service-cms2.hubspot.com/ctas/v2/public/cs/c/?cta_guid=876c8edc-bcdf-4621-9b23-a828909453df&amp;placement_guid=c791aced-6180-48a5-916d-b2d76cec1836&amp;portal_id=53&amp;redirect_url=APefjpFqyXAV5Y2th_hmIXmdlAi7XD4c-9BtKbozUYb97JTZEpyvbFCnWHJN6iOBuMtekkuUIr6mLjV_sFzuxuzGXD2EmAWab074WVRXgZNsjM5E51fcoqrGK_4lqBQg-rlW9m6RBYsUuzx8GXdq-wOHT3XmfTEYTvHKphtTvewjG6TtteyWNKLNSIgapTkpoQNYH1cscdlZ&amp;hsutk=c6e8bebafa7b0bad2746f19e3b447e5d&amp;canon=https%3A%2F%2Fblog.hubspot.com%2Fblog%2Ftabid%2F6307%2Fbid%2F34143%2F12-inspiring-examples-of-beautiful-blog-homepage-designs.aspx&amp;click=0ac8691a-e528-47b7-bc22-de0c07e12d10&amp;utm_referrer=https%3A%2F%2Fwww.google.co.id%2F&amp;pageId=24326359&amp;__hstc=20629287.c6e8bebafa7b0bad2746f19e3b447e5d.1530196391193.1530196391193.1530196391193.1&amp;__hssc=20629287.1.1530196391193&amp;__hsfp=298557263" target="_blank" rel="noopener">Download our full collection of homepage, blog, and landing page examples here to inspire your own website design. </a></h3>\r\nIf you''re not attracting people visually, how will you get them to take the next steps to actually read (and, hopefully, <a title="subscribe to" href="https://blog.hubspot.com/blog/tabid/6307/bid/33700/How-to-Convert-Casual-Blog-Visitors-Into-Dedicated-Subscribers.aspx" target="_blank" rel="noopener">subscribe to</a>) your content?\r\n\r\n&nbsp;\r\n\r\nOnce you''re done creating the quality content, you still have the challenge of presenting it that clearly dictates what your blog is about. Images, text, and links need to be shown off just right -- otherwise, readers might abandon your content, if it''s not aesthetically showcased in a way that''s both appealing and easy to follow.\r\n\r\nThat''s why we''ve compiled some examples of <a href="https://library.hubspot.com/blog-editorial-calendar" target="_blank" rel="noopener">blog</a> homepages to get you on the right track to designing the perfect blog for your readers. Check ''em out.', '16 of the Best Examples of Beautiful Blog Design', '', 'inherit', 'closed', 'closed', '', '73-revision-v1', '', '', '2018-06-29 07:12:16', '2018-06-29 07:12:16', '', 73, 'http://localhost/r-news/2018/06/29/73-revision-v1/', 0, 'revision', '', 0),
(82, 1, '2018-06-29 07:12:54', '2018-06-29 07:12:54', 'Kita akan belajar bagaimana caranya menulis artikel di wordpress dan menerbitkanya melalui penjelasan dan langkah detail, jadi bagi kamu yang belum punya website kamu bisa membuat website terlebih dulu melalui panduan <a href="http://www.caramembuatwebsite.org/">cara membuat website wordpress</a>.\r\n\r\n<!--more-->\r\n\r\nSetelah proses instalasi pasti website kamu kosong melompong itu karena kamu belum menulis artikel apapun. Menulis artikel di wordpress adalah hal yang mudah hanya saja kamu harus memahami tahapannya terlebih dulu, jadi sebelum praktek ada baiknya kamu paham terlebih dulu konsep penulisan yang yang ada di wordpress.\r\n\r\nSaya tidak mengajarkan bagaimana caranya menulis sebuah artikel, tetapi saya mengajarkan langkah dan prosedur untuk menulis dan menerbitkan artikel di platform wordpress.\r\n\r\nCara Menulis Artikel di WordPress ada 2 cara yaitu:\r\n<ol>\r\n 	<li>Menulis artikel di wordpress menggunakan menu <b>Posts</b></li>\r\n 	<li>Menlis artikel di wordpress menggunakan menu <strong>Pages</strong></li>\r\n</ol>\r\nSaya akan bahas satu per satu fungsi dari posts dan pages, apa perbedaan nya menulis di pages dan posts sehingga kamu tahu kamu harus nya menulis di Posts atau Pages.\r\n\r\nSetelah tau konsep menulis artikel di wordpress kita akan masuk ke langkah praktek menerbitkan artikel di Posts dan Pages.\r\n<h2>Menulis Artikel di WordPress menggunakan Posts</h2>\r\nPosts adalah tempat kumpulan artikel yang akan di tampilkan berurutan secara kronologi berdasarkan waktu dan tanggal artikel di terbitkan, urutanya di mulai dari tanggal yang terbaru hingga terakhir pada halaman utama. Sedangkan artikel yang sudah cukup lama akan secara otomatis bisa di kelompokan menjadi arsip yang di kelompokan per bulan dan per tahun.\r\n\r\nArtikel yang di tulis menggunakan posts bisa di kelompokan dengan menggunakan kategori dan hastag (tag). Kamu bisa buat kategori untuk masing-masing artikel dan juga membuat hastag untuk artikel mengelompokan artikel.\r\n\r\nArtikel yang di terbitkan di pages akan memunculkan user penulisnya, kapan artikel itu di tulis, artikel tersebut masuk dalam kategori apa, dan pembaca juga bisa memberikan komentar diskusi.\r\n\r\nPost adalah tempat yang cocok untuk menulis artikel yang berisi blog buku harian pribadi, berita, event yang semuanya di urutkan berdasarkan tanggal dan waktu. Tidak ada batasan berapa banyak artikel yang di terbitkan jadi kamu boleh tulis sebanyak-banyaknya.\r\n<h2>Menulis Artikel di WordPress menggunakan Pages</h2>\r\nArtikel pada pages bersifat statis artinya artikel pada halaman ini berdiri sendiri tidak ada kategori dan tanggal penulisan yang muncul di pembaca.\r\n\r\nIni cocok untuk membuat artikel yang tidak ada expire nya seperti halaman kontak,  halaman syarat dan ketentuan. Jadi kamu bisa selalu memperbaharui artikel di pages kapan saja.\r\n\r\nKalau posts pasti di urutkan berdasarkan tanggal sedangkan pages bisa di buat urutan sebagai sub pages, fitur ini bisa di gunakan sebagai pengaturan beberapa halaman.\r\n<h2>Cara Menulis Artikel di WordPress dan Memanfaatkan Semua Fiturnya</h2>\r\nSaya harapkan kamu sudah tau dimana artikel kamu seharusnya di tulis entah itu di page atau di post, karena pada bagian ini kita akan melakukan praktek cara menulis artikel dan menerbitkanya di website kita.\r\n\r\nUntuk bisa menulis di wordpress kamu harus masuk ke halaman admin wordpress, pastikan kamu sudah masuk ke halaman admin. Ayo kita mulai praktek<span id="more-445"></span>\r\n<h2>Pages</h2>\r\nUntuk lebih memudahkan kita akan langsung praktek saja untuk membuat halaman “tentang saya” atau about me. Halaman ini akan berisikan artikel yang menjelaskan tentang siapa sih sebenarnya sang pemilik website.\r\n<h3>Menu Pages</h3>\r\nMasuk ke menu pages makan akan muncul daftar artikel di pages seperti ilustrasi gambar <em>pengenalan pages wordpress. </em>', 'Cara Menulis Artikel Di WordPress', '', 'inherit', 'closed', 'closed', '', '70-revision-v1', '', '', '2018-06-29 07:12:54', '2018-06-29 07:12:54', '', 70, 'http://localhost/r-news/2018/06/29/70-revision-v1/', 0, 'revision', '', 0),
(83, 1, '2018-06-29 07:20:40', '2018-06-29 07:20:40', 'Writing a blog post is a little like driving.\r\n\r\n<!--more-->\r\n\r\nYou can study the highway code (or read articles telling you how to write a blog post) for months, but nothing can prepare you for the real thing like getting behind the wheel and hitting the open road. Or something.\r\n\r\nNow that I’m done thoroughly mangling that vague metaphor, let’s get down to business. You know you need to start blogging to grow your business, but you don’t know how. In this post, I’ll show you how to write a blog post in five simple steps that people will actually want to read. Ready? Let’s get started.\r\n<h3>How to Write a Blog Post in Five Easy Steps [Summary]:</h3>\r\n<ol>\r\n 	<li>Step 1: Plan your blog post by choosing a topic, creating an outline, conducting research, and checking facts.</li>\r\n 	<li>Step 2: Craft a headline that is both informative and will capture readers’ attentions.</li>\r\n 	<li>Step 3: Write your post, either writing a draft in a single session or gradually word on parts of it.</li>\r\n 	<li>Step 4: Use images to enhance your post, improve its flow, add humor, and explain complex topics.</li>\r\n 	<li>Step 5: Edit your blog post. Make sure to avoid repetition, read your post aloud to check its flow, have someone else read it and provide feedback, keep sentences and paragraphs short, don’t be a perfectionist, don’t be afraid to cut out text or adapt your writing last minute.</li>\r\n</ol>\r\nNow let''s review each step in more detail.\r\n\r\n&nbsp;\r\n<h2>How to Write a Blog Post, Step 1: Planning</h2>\r\nFirst, a disclaimer – the entire process of writing a blog post often takes more than a couple of hours, even if you can type eighty words per minute and your <a href="https://www.wordstream.com/blog/ws/2014/08/07/improve-writing-skills">writing skills</a> are sharp. From the seed of the idea to finally hitting “Publish,” you might spend several days or maybe even a week “writing” a blog post, but it’s important to spend those vital hours planning your post and even thinking about your post (yes, thinking counts as working if you’re a blogger) before you actually write it.\r\n\r\n&nbsp;\r\n\r\nLong before you sit down to put digital pen to paper, you need to make sure you have everything you need to sit down and write. Many new bloggers overlook the planning process, and while you might be able to get away with skipping the planning stage, doing your homework will actually save you time further down the road and help you develop good blogging habits.', 'How to Write an Awesome Blog Post in 5 Steps', '', 'publish', 'open', 'open', '', 'how-to-write-an-awesome-blog-post-in-5-steps', '', '', '2018-07-08 15:04:56', '2018-07-08 15:04:56', '', 0, 'http://localhost/r-news/?p=83', 0, 'post', '', 0),
(84, 1, '2018-06-29 07:20:40', '2018-06-29 07:20:40', 'Writing a blog post is a little like driving; you can study the highway code (or read articles telling you how to write a blog post) for months, but nothing can prepare you for the real thing like getting behind the wheel and hitting the open road. Or something.\r\n\r\n<!--more-->\r\n\r\nNow that I’m done thoroughly mangling that vague metaphor, let’s get down to business. You know you need to start blogging to grow your business, but you don’t know how. In this post, I’ll show you how to write a blog post in five simple steps that people will actually want to read. Ready? Let’s get started.\r\n<h3>How to Write a Blog Post in Five Easy Steps [Summary]:</h3>\r\n<ol>\r\n 	<li>Step 1: Plan your blog post by choosing a topic, creating an outline, conducting research, and checking facts.</li>\r\n 	<li>Step 2: Craft a headline that is both informative and will capture readers’ attentions.</li>\r\n 	<li>Step 3: Write your post, either writing a draft in a single session or gradually word on parts of it.</li>\r\n 	<li>Step 4: Use images to enhance your post, improve its flow, add humor, and explain complex topics.</li>\r\n 	<li>Step 5: Edit your blog post. Make sure to avoid repetition, read your post aloud to check its flow, have someone else read it and provide feedback, keep sentences and paragraphs short, don’t be a perfectionist, don’t be afraid to cut out text or adapt your writing last minute.</li>\r\n</ol>\r\nNow let''s review each step in more detail.\r\n\r\n&nbsp;\r\n<h2>How to Write a Blog Post, Step 1: Planning</h2>\r\nFirst, a disclaimer – the entire process of writing a blog post often takes more than a couple of hours, even if you can type eighty words per minute and your <a href="https://www.wordstream.com/blog/ws/2014/08/07/improve-writing-skills">writing skills</a> are sharp. From the seed of the idea to finally hitting “Publish,” you might spend several days or maybe even a week “writing” a blog post, but it’s important to spend those vital hours planning your post and even thinking about your post (yes, thinking counts as working if you’re a blogger) before you actually write it.\r\n\r\n&nbsp;\r\n\r\nLong before you sit down to put digital pen to paper, you need to make sure you have everything you need to sit down and write. Many new bloggers overlook the planning process, and while you might be able to get away with skipping the planning stage, doing your homework will actually save you time further down the road and help you develop good blogging habits.', 'How to Write an Awesome Blog Post in 5 Steps', '', 'inherit', 'closed', 'closed', '', '83-revision-v1', '', '', '2018-06-29 07:20:40', '2018-06-29 07:20:40', '', 83, 'http://localhost/r-news/2018/06/29/83-revision-v1/', 0, 'revision', '', 0),
(85, 1, '2018-06-29 07:22:24', '2018-06-29 07:22:24', 'Nggak usah galau kalau liburan belum punya pilihan tempat wisata.\r\n\r\n<!--more-->\r\n\r\nNyatanya, tempat wisata air terjun memang nggak pernah ada matinya.\r\n\r\nBiasanya, kepopuleran tempat wisata air terjun bergantian membentuk sebuah siklus yang nggak terputus. Kalau salah satu air terjun udah terlalu populer dan dipadati banyak pengunjung, maka air terjun baru akan ditemukan dan menyebar popularitasnya dari mulut ke mulut. <em>Bener</em>, kan?\r\n\r\nNah, salah satu pulau yang memiliki banyak air terjun cantik adalah Pulau Lombok. Ternyata nggak cuma pantai dan Gunung Rinjani aja yang bikin Lombok memesona, beberapa air terjun cantik ini juga bakal bikin kamu makin tertarik buat datang ke sana.\r\n\r\nApa aja sih?\r\n<ol>\r\n 	<li><b>Air Terjun Mangku Sakti</b>Air Terjun Mangku Sakti adalah salah satu tempat wisata di Lombok yang mengandung legenda. Konon kabarnya, pada zaman dahulu di daerah sekitar ini hidup seorang mangku (juru kunci). Setelah mangku tersebut meninggal dunia, warga di sekitar daerah ini menemukan air terjun indah yang dikepung bebatuan.Uniknya, bebatuan yang mengepung air terjun ini membentuk wajah mirip sang mangku yang telah meninggal.Pesona Air Terjun Mangku Sakti nggak hanya terletak pada keindahan panoramanya saja. Air terjun ini juga memiliki aliran yang mengandung belerang dengan kolam di bawahnya.Lokasi Air Terjun Mangku Sakti adalah di Sajang, Sembalun, Lombok Timur.</li>\r\n 	<li><b>Air Terjun Dewi Selendang</b>Air terjun yang satu ini punya nama secantik pemandangannya.Nama Air Terjun Dewi Selendang sangat cocok diberikan pada air terjun dengan aliran air melengkung seperti selendang ini. Ada bebatuan alam besar yang mengepung keindahan Air Terjun Dewi Selendang. Airnya pun sangat sejuk sehingga sangat cocok untuk berenang atau mandi.Lokasi dari Air Terjun Dewi Selendang adalah di Bilok Petung, Sembalun, Lombok Timur.</li>\r\n 	<li><b>Air Terjun Madu</b>Pemandangan yang bisa kamu temukan di Air Terjun Madu ini memang semanis namanya. Air Terjun Madu ini berlokasi tidak jauh dari tempat wisata air terjun lainnya yang disebut Air Terjun Umar Maya.Pemandangan di tempat wisata Air Terjun Madu dikepung oleh tebing-tebing tinggi dengan bebatuan yang indah.Nah, di sela-sela tebing dan bebatuan ini, aliran sungai jernih dari Air Terjun Madu mengalir deras.</li>\r\n</ol>\r\nSebenarnya, Pulau Lombok masih punya banyak air terjun menawan yang bisa kamu kunjungi saat liburan. Biar kamu nggak penasaran, lebih baik kamu segera merencanakan liburan serumu ke Pulau Lombok.\r\n\r\nPesan <a href="https://www.tiket.com/pesawat?utm_source=sandalian-com&amp;utm_medium=lb-mei-18&amp;utm_content=tiket-pesawat-murah">tiket pesawat murah</a> biar kamu segera mendarat di pulau yang cantik ini. Kamu bisa pesan tiket pesawat dari maskapai nasional seperti <a href="https://www.tiket.com/pesawat/tiket-garuda-indonesia?utm_source=sandalian-com&amp;utm_medium=lb-mei-18&amp;utm_content=garuda-indonesia">garuda indonesia</a> supaya perjalananmu menyenangkan.\r\n\r\n<i>Yuk, </i>berangkat!', 'TIGA AIR TERJUN DI LOMBOK INI BAKAL BIKIN KAMU TERPANA', '', 'publish', 'open', 'open', '', 'tiga-air-terjun-di-lombok-ini-bakal-bikin-kamu-terpana', '', '', '2018-07-08 15:04:26', '2018-07-08 15:04:26', '', 0, 'http://localhost/r-news/?p=85', 0, 'post', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(86, 1, '2018-06-29 07:22:24', '2018-06-29 07:22:24', 'Nggak usah galau kalau liburan belum punya pilihan tempat wisata. Nyatanya, tempat wisata air terjun memang nggak pernah ada matinya.\r\n\r\nBiasanya, kepopuleran tempat wisata air terjun bergantian membentuk sebuah siklus yang nggak terputus. Kalau salah satu air terjun udah terlalu populer dan dipadati banyak pengunjung, maka air terjun baru akan ditemukan dan menyebar popularitasnya dari mulut ke mulut. <em>Bener</em>, kan?\r\n\r\n<!--more-->\r\n\r\nNah, salah satu pulau yang memiliki banyak air terjun cantik adalah Pulau Lombok. Ternyata nggak cuma pantai dan Gunung Rinjani aja yang bikin Lombok memesona, beberapa air terjun cantik ini juga bakal bikin kamu makin tertarik buat datang ke sana.\r\n\r\nApa aja sih?\r\n<ol>\r\n 	<li><b>Air Terjun Mangku Sakti</b>Air Terjun Mangku Sakti adalah salah satu tempat wisata di Lombok yang mengandung legenda. Konon kabarnya, pada zaman dahulu di daerah sekitar ini hidup seorang mangku (juru kunci). Setelah mangku tersebut meninggal dunia, warga di sekitar daerah ini menemukan air terjun indah yang dikepung bebatuan.\r\n\r\nUniknya, bebatuan yang mengepung air terjun ini membentuk wajah mirip sang mangku yang telah meninggal.Pesona Air Terjun Mangku Sakti nggak hanya terletak pada keindahan panoramanya saja. Air terjun ini juga memiliki aliran yang mengandung belerang dengan kolam di bawahnya.\r\n\r\nLokasi Air Terjun Mangku Sakti adalah di Sajang, Sembalun, Lombok Timur.</li>\r\n 	<li><b>Air Terjun Dewi Selendang</b>Air terjun yang satu ini punya nama secantik pemandangannya.Nama Air Terjun Dewi Selendang sangat cocok diberikan pada air terjun dengan aliran air melengkung seperti selendang ini. Ada bebatuan alam besar yang mengepung keindahan Air Terjun Dewi Selendang. Airnya pun sangat sejuk sehingga sangat cocok untuk berenang atau mandi.\r\n\r\nLokasi dari Air Terjun Dewi Selendang adalah di Bilok Petung, Sembalun, Lombok Timur.</li>\r\n 	<li><b>Air Terjun Madu</b>Pemandangan yang bisa kamu temukan di Air Terjun Madu ini memang semanis namanya. Air Terjun Madu ini berlokasi tidak jauh dari tempat wisata air terjun lainnya yang disebut Air Terjun Umar Maya.\r\n\r\nPemandangan di tempat wisata Air Terjun Madu dikepung oleh tebing-tebing tinggi dengan bebatuan yang indah.Nah, di sela-sela tebing dan bebatuan ini, aliran sungai jernih dari Air Terjun Madu mengalir deras.</li>\r\n</ol>\r\nSebenarnya, Pulau Lombok masih punya banyak air terjun menawan yang bisa kamu kunjungi saat liburan. Biar kamu nggak penasaran, lebih baik kamu segera merencanakan liburan serumu ke Pulau Lombok.\r\n\r\nPesan <a href="https://www.tiket.com/pesawat?utm_source=sandalian-com&amp;utm_medium=lb-mei-18&amp;utm_content=tiket-pesawat-murah">tiket pesawat murah</a> biar kamu segera mendarat di pulau yang cantik ini. Kamu bisa pesan tiket pesawat dari maskapai nasional seperti <a href="https://www.tiket.com/pesawat/tiket-garuda-indonesia?utm_source=sandalian-com&amp;utm_medium=lb-mei-18&amp;utm_content=garuda-indonesia">garuda indonesia</a> supaya perjalananmu menyenangkan.\r\n\r\n<i>Yuk, </i>berangkat!', 'TIGA AIR TERJUN DI LOMBOK INI BAKAL BIKIN KAMU TERPANA', '', 'inherit', 'closed', 'closed', '', '85-revision-v1', '', '', '2018-06-29 07:22:24', '2018-06-29 07:22:24', '', 85, 'http://localhost/r-news/2018/06/29/85-revision-v1/', 0, 'revision', '', 0),
(87, 1, '2018-06-29 07:23:33', '2018-06-29 07:23:33', 'Nggak usah galau kalau liburan belum punya pilihan tempat wisata. Nyatanya, tempat wisata air terjun memang nggak pernah ada matinya.\r\n\r\nBiasanya, kepopuleran tempat wisata air terjun bergantian membentuk sebuah siklus yang nggak terputus. Kalau salah satu air terjun udah terlalu populer dan dipadati banyak pengunjung, maka air terjun baru akan ditemukan dan menyebar popularitasnya dari mulut ke mulut. <em>Bener</em>, kan?\r\n\r\n<!--more-->\r\n\r\nNah, salah satu pulau yang memiliki banyak air terjun cantik adalah Pulau Lombok. Ternyata nggak cuma pantai dan Gunung Rinjani aja yang bikin Lombok memesona, beberapa air terjun cantik ini juga bakal bikin kamu makin tertarik buat datang ke sana.\r\n\r\nApa aja sih?\r\n<ol>\r\n 	<li><b>Air Terjun Mangku Sakti</b>Air Terjun Mangku Sakti adalah salah satu tempat wisata di Lombok yang mengandung legenda. Konon kabarnya, pada zaman dahulu di daerah sekitar ini hidup seorang mangku (juru kunci). Setelah mangku tersebut meninggal dunia, warga di sekitar daerah ini menemukan air terjun indah yang dikepung bebatuan.Uniknya, bebatuan yang mengepung air terjun ini membentuk wajah mirip sang mangku yang telah meninggal.Pesona Air Terjun Mangku Sakti nggak hanya terletak pada keindahan panoramanya saja. Air terjun ini juga memiliki aliran yang mengandung belerang dengan kolam di bawahnya.\r\n\r\nLokasi Air Terjun Mangku Sakti adalah di Sajang, Sembalun, Lombok Timur.</li>\r\n 	<li><b>Air Terjun Dewi Selendang</b>Air terjun yang satu ini punya nama secantik pemandangannya.Nama Air Terjun Dewi Selendang sangat cocok diberikan pada air terjun dengan aliran air melengkung seperti selendang ini. Ada bebatuan alam besar yang mengepung keindahan Air Terjun Dewi Selendang. Airnya pun sangat sejuk sehingga sangat cocok untuk berenang atau mandi.Lokasi dari Air Terjun Dewi Selendang adalah di Bilok Petung, Sembalun, Lombok Timur.</li>\r\n 	<li><b>Air Terjun Madu</b>Pemandangan yang bisa kamu temukan di Air Terjun Madu ini memang semanis namanya. Air Terjun Madu ini berlokasi tidak jauh dari tempat wisata air terjun lainnya yang disebut Air Terjun Umar Maya.Pemandangan di tempat wisata Air Terjun Madu dikepung oleh tebing-tebing tinggi dengan bebatuan yang indah.Nah, di sela-sela tebing dan bebatuan ini, aliran sungai jernih dari Air Terjun Madu mengalir deras.</li>\r\n</ol>\r\nSebenarnya, Pulau Lombok masih punya banyak air terjun menawan yang bisa kamu kunjungi saat liburan. Biar kamu nggak penasaran, lebih baik kamu segera merencanakan liburan serumu ke Pulau Lombok.\r\n\r\nPesan <a href="https://www.tiket.com/pesawat?utm_source=sandalian-com&amp;utm_medium=lb-mei-18&amp;utm_content=tiket-pesawat-murah">tiket pesawat murah</a> biar kamu segera mendarat di pulau yang cantik ini. Kamu bisa pesan tiket pesawat dari maskapai nasional seperti <a href="https://www.tiket.com/pesawat/tiket-garuda-indonesia?utm_source=sandalian-com&amp;utm_medium=lb-mei-18&amp;utm_content=garuda-indonesia">garuda indonesia</a> supaya perjalananmu menyenangkan.\r\n\r\n<i>Yuk, </i>berangkat!', 'TIGA AIR TERJUN DI LOMBOK INI BAKAL BIKIN KAMU TERPANA', '', 'inherit', 'closed', 'closed', '', '85-revision-v1', '', '', '2018-06-29 07:23:33', '2018-06-29 07:23:33', '', 85, 'http://localhost/r-news/2018/06/29/85-revision-v1/', 0, 'revision', '', 0),
(88, 1, '2018-06-29 07:23:45', '2018-06-29 07:23:45', 'Nggak usah galau kalau liburan belum punya pilihan tempat wisata. Nyatanya, tempat wisata air terjun memang nggak pernah ada matinya.\r\n\r\nBiasanya, kepopuleran tempat wisata air terjun bergantian membentuk sebuah siklus yang nggak terputus. Kalau salah satu air terjun udah terlalu populer dan dipadati banyak pengunjung, maka air terjun baru akan ditemukan dan menyebar popularitasnya dari mulut ke mulut. <em>Bener</em>, kan?\r\n\r\n<!--more-->\r\n\r\nNah, salah satu pulau yang memiliki banyak air terjun cantik adalah Pulau Lombok. Ternyata nggak cuma pantai dan Gunung Rinjani aja yang bikin Lombok memesona, beberapa air terjun cantik ini juga bakal bikin kamu makin tertarik buat datang ke sana.\r\n\r\nApa aja sih?\r\n<ol>\r\n 	<li><b>Air Terjun Mangku Sakti</b>Air Terjun Mangku Sakti adalah salah satu tempat wisata di Lombok yang mengandung legenda. Konon kabarnya, pada zaman dahulu di daerah sekitar ini hidup seorang mangku (juru kunci). Setelah mangku tersebut meninggal dunia, warga di sekitar daerah ini menemukan air terjun indah yang dikepung bebatuan.Uniknya, bebatuan yang mengepung air terjun ini membentuk wajah mirip sang mangku yang telah meninggal.Pesona Air Terjun Mangku Sakti nggak hanya terletak pada keindahan panoramanya saja. Air terjun ini juga memiliki aliran yang mengandung belerang dengan kolam di bawahnya.Lokasi Air Terjun Mangku Sakti adalah di Sajang, Sembalun, Lombok Timur.</li>\r\n 	<li><b>Air Terjun Dewi Selendang</b>Air terjun yang satu ini punya nama secantik pemandangannya.Nama Air Terjun Dewi Selendang sangat cocok diberikan pada air terjun dengan aliran air melengkung seperti selendang ini. Ada bebatuan alam besar yang mengepung keindahan Air Terjun Dewi Selendang. Airnya pun sangat sejuk sehingga sangat cocok untuk berenang atau mandi.Lokasi dari Air Terjun Dewi Selendang adalah di Bilok Petung, Sembalun, Lombok Timur.</li>\r\n 	<li><b>Air Terjun Madu</b>Pemandangan yang bisa kamu temukan di Air Terjun Madu ini memang semanis namanya. Air Terjun Madu ini berlokasi tidak jauh dari tempat wisata air terjun lainnya yang disebut Air Terjun Umar Maya.Pemandangan di tempat wisata Air Terjun Madu dikepung oleh tebing-tebing tinggi dengan bebatuan yang indah.Nah, di sela-sela tebing dan bebatuan ini, aliran sungai jernih dari Air Terjun Madu mengalir deras.</li>\r\n</ol>\r\nSebenarnya, Pulau Lombok masih punya banyak air terjun menawan yang bisa kamu kunjungi saat liburan. Biar kamu nggak penasaran, lebih baik kamu segera merencanakan liburan serumu ke Pulau Lombok.\r\n\r\nPesan <a href="https://www.tiket.com/pesawat?utm_source=sandalian-com&amp;utm_medium=lb-mei-18&amp;utm_content=tiket-pesawat-murah">tiket pesawat murah</a> biar kamu segera mendarat di pulau yang cantik ini. Kamu bisa pesan tiket pesawat dari maskapai nasional seperti <a href="https://www.tiket.com/pesawat/tiket-garuda-indonesia?utm_source=sandalian-com&amp;utm_medium=lb-mei-18&amp;utm_content=garuda-indonesia">garuda indonesia</a> supaya perjalananmu menyenangkan.\r\n\r\n<i>Yuk, </i>berangkat!', 'TIGA AIR TERJUN DI LOMBOK INI BAKAL BIKIN KAMU TERPANA', '', 'inherit', 'closed', 'closed', '', '85-revision-v1', '', '', '2018-06-29 07:23:45', '2018-06-29 07:23:45', '', 85, 'http://localhost/r-news/2018/06/29/85-revision-v1/', 0, 'revision', '', 0),
(91, 1, '2018-06-29 07:32:32', '2018-06-29 07:32:32', '', 'DSC_9638', '', 'inherit', 'open', 'closed', '', 'dsc_9638', '', '', '2018-06-29 07:32:32', '2018-06-29 07:32:32', '', 85, 'http://localhost/r-news/wp-content/uploads/2018/06/DSC_9638.jpg', 0, 'attachment', 'image/jpeg', 0),
(92, 1, '2018-06-29 07:34:25', '2018-06-29 07:34:25', '', 'DSC_9659', '', 'inherit', 'open', 'closed', '', 'dsc_9659', '', '', '2018-06-29 07:34:25', '2018-06-29 07:34:25', '', 83, 'http://localhost/r-news/wp-content/uploads/2018/06/DSC_9659.jpg', 0, 'attachment', 'image/jpeg', 0),
(93, 1, '2018-06-29 07:38:04', '2018-06-29 07:38:04', 'Masalah kabel mengelupas seperti ini sepertinya sudah jamak terjadi di kalangan pengguna MacBook.\r\n\r\n<!--more-->\r\n\r\nSelain membeli power adaptor baru, solusi lain yang banyak ditemukan di internet adalah menggunakan <a href="https://sugru.com/about">Sugru</a>. Suatu material yang menyerupai permen karet dan akan mengeras setelah beberapa saat. Sayangnya Sugru tidak mudah ditemukan di sini. Kalaupun ada, harganya tidak terlalu murah. Tapi jangan khawatir, saya punya solusi hemat untuk mengatasi masalah tersebut.\r\n\r\nAdalah No Drop, cat pelapis anti bocor yang memiliki sifat elastis, kedap air serta sangat tahan cuaca. Tenang, ini bukan iklan. Anda mungkin bisa mencoba menggunakan cat pelapis lain yang hasil  akhirnya elastis untuk keperluan ini.\r\n\r\nPertama-tama, bersihkan permukaan kabel yang akan diperbaiki. Lalu bungkus power adaptor MacBook dengan plastik agar tidak belepotan. Kalau Anda bisa berhati-hati, silakan untuk tidak membungkusnya dengan plastik.\r\n\r\nAmbil secolek cat No Drop..\r\n\r\nOleskan secara merata ke bagian kabel yang mengelupas. Tambahkan No Drop secukupnya sampai membungkus seluruh permukaan kabel.\r\n\r\nSetelah itu angin-anginkan/jemur agar No Drop mengering. Waktu saya coba, No Drop baru mengering sempurna setelah sekitar 24 jam. Mungkin bisa lebih cepat jika dijemur terus-terusan atau pengolesan dilakukan secara berlapis.\r\n\r\nUsahakan untuk tidak memindah/menggerakkan kabelnya saat No Drop belum kering benar agar hasil akhirnya memuaskan.\r\n\r\nNah, sangat mudah dan murah bukan? Power adaptor MacBook pun bisa digunakan kembali tanpa harus khawatir kabelnya putus dan mengeluarkan biaya untuk membeli yang baru.\r\n\r\nBerikut ini kelebihan dan kekurangan dalam pemakaian No Drop untuk memperpanjang umur kabel power adaptor MacBook:\r\n\r\n<strong>Pros:</strong>\r\n<ul>\r\n 	<li>Hemat, dengan uang 50 ribu kita bisa memperbaiki ratusan kabel adaptor MacBook.</li>\r\n 	<li>Banyak pilihan warna.</li>\r\n 	<li>Puas jiwa raga.</li>\r\n</ul>\r\n<strong>Cons:</strong>\r\n<ul>\r\n 	<li>Proses pengeringan butuh waktu agak lama.</li>\r\n</ul>', 'MEMPERBAIKI KABEL ADAPTOR MACBOOK YANG MENGELUPAS', '', 'publish', 'open', 'open', '', 'memperbaiki-kabel-adaptor-macbook-yang-mengelupas', '', '', '2018-07-08 15:03:59', '2018-07-08 15:03:59', '', 0, 'http://localhost/r-news/?p=93', 0, 'post', '', 0),
(94, 1, '2018-06-29 07:38:04', '2018-06-29 07:38:04', 'Masalah kabel mengelupas seperti ini sepertinya sudah jamak terjadi di kalangan pengguna MacBook. Selain membeli power adaptor baru, solusi lain yang banyak ditemukan di internet adalah menggunakan <a href="https://sugru.com/about">Sugru</a>. Suatu material yang menyerupai permen karet dan akan mengeras setelah beberapa saat.\r\n\r\n<!--more-->\r\n\r\nSayangnya Sugru tidak mudah ditemukan di sini. Kalaupun ada, harganya tidak terlalu murah. Tapi jangan khawatir, saya punya solusi hemat untuk mengatasi masalah tersebut.\r\n\r\nAdalah No Drop, cat pelapis anti bocor yang memiliki sifat elastis, kedap air serta sangat tahan cuaca. Tenang, ini bukan iklan. Anda mungkin bisa mencoba menggunakan cat pelapis lain yang hasil  akhirnya elastis untuk keperluan ini.\r\n\r\nPertama-tama, bersihkan permukaan kabel yang akan diperbaiki. Lalu bungkus power adaptor MacBook dengan plastik agar tidak belepotan. Kalau Anda bisa berhati-hati, silakan untuk tidak membungkusnya dengan plastik.\r\n\r\nAmbil secolek cat No Drop..', 'MEMPERBAIKI KABEL ADAPTOR MACBOOK YANG MENGELUPAS', '', 'inherit', 'closed', 'closed', '', '93-revision-v1', '', '', '2018-06-29 07:38:04', '2018-06-29 07:38:04', '', 93, 'http://localhost/r-news/2018/06/29/93-revision-v1/', 0, 'revision', '', 0),
(95, 1, '2018-06-29 07:38:37', '2018-06-29 07:38:37', 'Masalah kabel mengelupas seperti ini sepertinya sudah jamak terjadi di kalangan pengguna MacBook. Selain membeli power adaptor baru, solusi lain yang banyak ditemukan di internet adalah menggunakan <a href="https://sugru.com/about">Sugru</a>. Suatu material yang menyerupai permen karet dan akan mengeras setelah beberapa saat.\r\n\r\n<!--more-->\r\n\r\nSayangnya Sugru tidak mudah ditemukan di sini. Kalaupun ada, harganya tidak terlalu murah. Tapi jangan khawatir, saya punya solusi hemat untuk mengatasi masalah tersebut.\r\n\r\nAdalah No Drop, cat pelapis anti bocor yang memiliki sifat elastis, kedap air serta sangat tahan cuaca. Tenang, ini bukan iklan. Anda mungkin bisa mencoba menggunakan cat pelapis lain yang hasil  akhirnya elastis untuk keperluan ini.\r\n\r\nPertama-tama, bersihkan permukaan kabel yang akan diperbaiki. Lalu bungkus power adaptor MacBook dengan plastik agar tidak belepotan. Kalau Anda bisa berhati-hati, silakan untuk tidak membungkusnya dengan plastik.\r\n\r\nAmbil secolek cat No Drop..\r\n\r\nOleskan secara merata ke bagian kabel yang mengelupas. Tambahkan No Drop secukupnya sampai membungkus seluruh permukaan kabel.\r\n\r\nSetelah itu angin-anginkan/jemur agar No Drop mengering. Waktu saya coba, No Drop baru mengering sempurna setelah sekitar 24 jam. Mungkin bisa lebih cepat jika dijemur terus-terusan atau pengolesan dilakukan secara berlapis.\r\n\r\nUsahakan untuk tidak memindah/menggerakkan kabelnya saat No Drop belum kering benar agar hasil akhirnya memuaskan.\r\n\r\nNah, sangat mudah dan murah bukan? Power adaptor MacBook pun bisa digunakan kembali tanpa harus khawatir kabelnya putus dan mengeluarkan biaya untuk membeli yang baru.\r\n\r\nBerikut ini kelebihan dan kekurangan dalam pemakaian No Drop untuk memperpanjang umur kabel power adaptor MacBook:\r\n\r\n<strong>Pros:</strong>\r\n<ul>\r\n 	<li>Hemat, dengan uang 50 ribu kita bisa memperbaiki ratusan kabel adaptor MacBook.</li>\r\n 	<li>Banyak pilihan warna.</li>\r\n 	<li>Puas jiwa raga.</li>\r\n</ul>\r\n<strong>Cons:</strong>\r\n<ul>\r\n 	<li>Proses pengeringan butuh waktu agak lama.</li>\r\n</ul>', 'MEMPERBAIKI KABEL ADAPTOR MACBOOK YANG MENGELUPAS', '', 'inherit', 'closed', 'closed', '', '93-revision-v1', '', '', '2018-06-29 07:38:37', '2018-06-29 07:38:37', '', 93, 'http://localhost/r-news/2018/06/29/93-revision-v1/', 0, 'revision', '', 0),
(96, 1, '2018-06-29 07:38:51', '2018-06-29 07:38:51', '', 'DSC_0237', '', 'inherit', 'open', 'closed', '', 'dsc_0237', '', '', '2018-06-29 07:38:51', '2018-06-29 07:38:51', '', 93, 'http://localhost/r-news/wp-content/uploads/2018/06/DSC_0237.jpg', 0, 'attachment', 'image/jpeg', 0),
(97, 1, '2018-06-29 07:40:19', '2018-06-29 07:40:19', 'A common problem when you need to set up a new database instance is to import the initial data.\r\n\r\n<!--more-->\r\n\r\nThis can particularly be an issue, if you are converting an existing database so there is a large amount of data to import. In MySQL NDB Cluster 7.6 which just was announced as <a href="https://mysqlhighavailability.com/mysql-cluster-7-6-is-ga/" target="_blank" rel="noopener">general available (GA)</a> this week, there is a new tool to help with such imports: <a href="https://dev.mysql.com/doc/refman/5.7/en/mysql-cluster-programs-ndb-import.html">ndb_import</a>.\r\n\r\n<img class="size-medium wp-image-92 aligncenter" src="http://localhost/r-news/wp-content/uploads/2018/06/DSC_9659-300x157.jpg" alt="" width="300" height="157" />\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\nThe ndb_import utility takes a CSV file and imports the data into a table. (While C stands for comma, the tool is not limited to comma-separated files, in fact tabs is the default delimiter.) But hey, does that not sound familiar? It sure does. MySQL Server has “for ever” included the mysqlimport utility and LOAD DATA statement. So why do we need another utility and what does ndb_import do that we cannot already do with the existing tools?\r\n\r\nThe big advantage of ndb_import is that it is a native NDB tool. It does not connect to any of the SQL nodes; instead it connects directly to the data nodes as an NDB API program. This alone allows you to bypass the overhead of connecting to the SQL node and parse SQL statements. However, it is even better than that. The ndb_import tool can also take advantage of the parallelism offered by MySQL NDB Cluster. This means that in the end, the overall performance is expected to be quite a bit better than loading the data using mysqlimport or LOAD DATA.', 'MySQL NDB Cluster 7.6: Fast Import with ndb_import', '', 'publish', 'open', 'open', '', 'mysql-ndb-cluster-7-6-fast-import-with-ndb_import', '', '', '2018-07-08 15:03:33', '2018-07-08 15:03:33', '', 0, 'http://localhost/r-news/?p=97', 0, 'post', '', 2),
(98, 1, '2018-06-29 07:40:12', '2018-06-29 07:40:12', '', 'DSC_0441', '', 'inherit', 'open', 'closed', '', 'dsc_0441', '', '', '2018-06-29 07:40:12', '2018-06-29 07:40:12', '', 97, 'http://localhost/r-news/wp-content/uploads/2018/06/DSC_0441.jpg', 0, 'attachment', 'image/jpeg', 0),
(99, 1, '2018-06-29 07:40:19', '2018-06-29 07:40:19', 'A common problem when you need to set up a new database instance is to import the initial data. This can particularly be an issue, if you are converting an existing database so there is a large amount of data to import. In MySQL NDB Cluster 7.6 which just was announced as <a href="https://mysqlhighavailability.com/mysql-cluster-7-6-is-ga/" target="_blank" rel="noopener">general available (GA)</a> this week, there is a new tool to help with such imports: <a href="https://dev.mysql.com/doc/refman/5.7/en/mysql-cluster-programs-ndb-import.html">ndb_import</a>.\r\n\r\n<!--more-->\r\n\r\nThe ndb_import utility takes a CSV file and imports the data into a table. (While C stands for comma, the tool is not limited to comma-separated files, in fact tabs is the default delimiter.) But hey, does that not sound familiar? It sure does. MySQL Server has “for ever” included the mysqlimport utility and LOAD DATA statement. So why do we need another utility and what does ndb_import do that we cannot already do with the existing tools?\r\n\r\nThe big advantage of ndb_import is that it is a native NDB tool. It does not connect to any of the SQL nodes; instead it connects directly to the data nodes as an NDB API program. This alone allows you to bypass the overhead of connecting to the SQL node and parse SQL statements. However, it is even better than that. The ndb_import tool can also take advantage of the parallelism offered by MySQL NDB Cluster. This means that in the end, the overall performance is expected to be quite a bit better than loading the data using mysqlimport or LOAD DATA.', 'MySQL NDB Cluster 7.6: Fast Import with ndb_import', '', 'inherit', 'closed', 'closed', '', '97-revision-v1', '', '', '2018-06-29 07:40:19', '2018-06-29 07:40:19', '', 97, 'http://localhost/r-news/2018/06/29/97-revision-v1/', 0, 'revision', '', 0),
(100, 1, '2018-06-29 07:41:18', '2018-06-29 07:41:18', '<p class="selectionShareable">Whitney Wisnom didn’t plan to go to college to study mechanical engineering.</p>\r\n<!--more-->She was a soccer player—but that’s exactly where she’s headed as one of the first students to graduate from <a href="http://www.designtechhighschool.org/">Design Tech High School</a> (d.tech). “I never expected I would do anything related to STEM. I was just that jock,” she says. But everything changed when, as part of an unusual educational partnership, Wisnom took her first wearable technology class with the Oracle Education Foundation.\r\n<p class="selectionShareable">The promising inventions Wisnom created, a heart-rate monitor sports bra and a GPS-enabled shin guard, are the products of design thinking, a human-centered problem-solving approach taught by <a href="https://oraclefoundation.org/dtech.html">d.tech</a> and by the <a href="https://oraclefoundation.org/index.html">Oracle Education Foundation</a>. The star forward is now on her way to New York’s Rensselaer Polytechnic Institute on a soccer scholarship, but she’ll never forget the feeling she and her student teammates had as they refined their wearable tech prototype until it lit up like a billboard when a certain heart rate was achieved: “It changed my whole career. I became a leader at d.tech because of that.”</p>\r\n<p class="selectionShareable"><strong>Teaching Students How to Think</strong></p>\r\n<p class="selectionShareable">Now elegantly curving along the Belmont Slough on <a href="https://www.oracle.com/corporate/index.html">Oracle’s headquarters campus in Redwood City, California</a>, d.tech moved three times since its founding in August 2014 until, in January 2018, it became the only public high school in the US to be located on a tech company’s campus.</p>\r\n<p class="selectionShareable">Here, d.tech—which is a free charter school and has no application process other than a lottery for California residents—can meld an educational model inspired by the famed <a href="http://dschool.stanford.edu/">Hasso Plattner Institute of Design at Stanford</a> (d.school) with expertise from a tech giant. Wisnom’s transformation illustrates why diversity in technology results in real-world solutions: “As a jock, I’ve come into this tech world with a new perspective because a lot of people come with the mindset that they’ve always had tech as a plan. I didn’t, and so I come with ideas that weren’t necessarily thought of before.”</p>\r\n<p class="selectionShareable"><strong>Tooling Around Campus</strong></p>\r\n<p class="selectionShareable">Though he had always been interested in programming, another new graduate, Alex Lederman, credits close proximity to technology professionals and resources for inspiring him to explore new terrain: robotics, Java, and the snazzy go-kart he engineered in d.tech’s decked-out Design Realization Garage and test-drove around the campus.</p>\r\n<p class="selectionShareable">The d.tech emphasis on personalized learning meant Alex Lederman could pursue advanced physics as a freshman, while design thinking skills helped him, like Wisnom, contribute to projects that were anything but abstract. “Last year I worked with Oracle and National Geographic on a deployable water buoy that had a bunch of sensors in it,” he says. “It was really cool to take the skills that I learned in Oracle classes and the skills I already had, like programming, and then apply them to a real-world project testing water quality in the Belmont Slough.”</p>\r\n<p class="selectionShareable">The high school realizes Oracle Executive Chairman and CTO Larry Ellison’s nearly 20-year-old goal of building “a school that teaches students how to think” on the Oracle campus, and CEO Safra Catz’s vision of involving Oracle employees in teaching. During the course of the academic year, Oracle Education Foundation instructional staff and Oracle Volunteers help students design, build, and code prototype solutions during four “intersession” periods, each lasting two weeks. Learning with real practitioners goes beyond a theoretical education in computer science or electrical engineering, because students learn from professionals who exercise those muscles every day to solve real problems for real customers.</p>\r\n<p class="selectionShareable">“Being an intern at Oracle has made me a better leader, a better public speaker, and more sociable,” says Lederman, who will study mechanical engineering at Purdue University. All that, but without any undue pressure, he says: “This school is very not focused on pressuring students to do what they <em>have</em> to, but more to do what they <em>want</em> to. So for the past four years, there hasn’t been a single time when I’ve had to sit in my room and hate being in school. It’s more that the homework that I’m doing is a project that I’m super interested in.”</p>\r\n<p class="selectionShareable">At the June 23 graduation ceremony, Catz praised the founding families and staff for their courage in creating d.tech, and the Education Foundation for creating the backbone of the Intersession program. “This follows something I learned a long time ago about my mentor, Larry Ellison,” she said. “What I’ve learned about him all these years—what distinguishes great entrepreneurs and leaders and people—is the courage that they show to see something that was not there and believe that it is possible.”</p>\r\n<p class="selectionShareable">Indeed, Wisnom can point to something tangible that she first saw in her mind’s eye four years ago, when the founding class of 2018 began to help design the purpose-built school facility. It was the vision she and a friend had for a catwalk across the open ceiling in the building’s entrance—conceived during her “architecture phase” when she was 14—that is now a reality: “Every day we walk in and see that and go <em>snap</em> that was us.”</p>', 'Graduates from d.tech Show the Life-Changing Potential of Design Thinking', '', 'publish', 'open', 'open', '', 'graduates-from-d-tech-show-the-life-changing-potential-of-design-thinking', '', '', '2018-07-08 15:03:01', '2018-07-08 15:03:01', '', 0, 'http://localhost/r-news/?p=100', 0, 'post', '', 2),
(101, 1, '2018-06-29 07:41:18', '2018-06-29 07:41:18', '<p class="selectionShareable">Whitney Wisnom didn’t plan to go to college to study mechanical engineering—she was a soccer player—but that’s exactly where she’s headed as one of the first students to graduate from <a href="http://www.designtechhighschool.org/">Design Tech High School</a> (d.tech).</p>\r\n<p class="selectionShareable">“I never expected I would do anything related to STEM. I was just that jock,” she says. But everything changed when, as part of an unusual educational partnership, Wisnom took her first wearable technology class with the Oracle Education Foundation.</p>\r\n<!--more-->\r\n<p class="selectionShareable">The promising inventions Wisnom created, a heart-rate monitor sports bra and a GPS-enabled shin guard, are the products of design thinking, a human-centered problem-solving approach taught by <a href="https://oraclefoundation.org/dtech.html">d.tech</a> and by the <a href="https://oraclefoundation.org/index.html">Oracle Education Foundation</a>. The star forward is now on her way to New York’s Rensselaer Polytechnic Institute on a soccer scholarship, but she’ll never forget the feeling she and her student teammates had as they refined their wearable tech prototype until it lit up like a billboard when a certain heart rate was achieved: “It changed my whole career. I became a leader at d.tech because of that.”</p>\r\n<p class="selectionShareable"><strong>Teaching Students How to Think</strong></p>\r\n<p class="selectionShareable">Now elegantly curving along the Belmont Slough on <a href="https://www.oracle.com/corporate/index.html">Oracle’s headquarters campus in Redwood City, California</a>, d.tech moved three times since its founding in August 2014 until, in January 2018, it became the only public high school in the US to be located on a tech company’s campus.</p>\r\n<p class="selectionShareable">Here, d.tech—which is a free charter school and has no application process other than a lottery for California residents—can meld an educational model inspired by the famed <a href="http://dschool.stanford.edu/">Hasso Plattner Institute of Design at Stanford</a> (d.school) with expertise from a tech giant. Wisnom’s transformation illustrates why diversity in technology results in real-world solutions: “As a jock, I’ve come into this tech world with a new perspective because a lot of people come with the mindset that they’ve always had tech as a plan. I didn’t, and so I come with ideas that weren’t necessarily thought of before.”</p>\r\n<p class="selectionShareable"><strong>Tooling Around Campus</strong></p>\r\n<p class="selectionShareable">Though he had always been interested in programming, another new graduate, Alex Lederman, credits close proximity to technology professionals and resources for inspiring him to explore new terrain: robotics, Java, and the snazzy go-kart he engineered in d.tech’s decked-out Design Realization Garage and test-drove around the campus.</p>\r\n<p class="selectionShareable">The d.tech emphasis on personalized learning meant Alex Lederman could pursue advanced physics as a freshman, while design thinking skills helped him, like Wisnom, contribute to projects that were anything but abstract. “Last year I worked with Oracle and National Geographic on a deployable water buoy that had a bunch of sensors in it,” he says. “It was really cool to take the skills that I learned in Oracle classes and the skills I already had, like programming, and then apply them to a real-world project testing water quality in the Belmont Slough.”</p>\r\n<p class="selectionShareable">The high school realizes Oracle Executive Chairman and CTO Larry Ellison’s nearly 20-year-old goal of building “a school that teaches students how to think” on the Oracle campus, and CEO Safra Catz’s vision of involving Oracle employees in teaching. During the course of the academic year, Oracle Education Foundation instructional staff and Oracle Volunteers help students design, build, and code prototype solutions during four “intersession” periods, each lasting two weeks. Learning with real practitioners goes beyond a theoretical education in computer science or electrical engineering, because students learn from professionals who exercise those muscles every day to solve real problems for real customers.</p>\r\n<p class="selectionShareable">“Being an intern at Oracle has made me a better leader, a better public speaker, and more sociable,” says Lederman, who will study mechanical engineering at Purdue University. All that, but without any undue pressure, he says: “This school is very not focused on pressuring students to do what they <em>have</em> to, but more to do what they <em>want</em> to. So for the past four years, there hasn’t been a single time when I’ve had to sit in my room and hate being in school. It’s more that the homework that I’m doing is a project that I’m super interested in.”</p>\r\n<p class="selectionShareable">At the June 23 graduation ceremony, Catz praised the founding families and staff for their courage in creating d.tech, and the Education Foundation for creating the backbone of the Intersession program. “This follows something I learned a long time ago about my mentor, Larry Ellison,” she said. “What I’ve learned about him all these years—what distinguishes great entrepreneurs and leaders and people—is the courage that they show to see something that was not there and believe that it is possible.”</p>\r\n<p class="selectionShareable">Indeed, Wisnom can point to something tangible that she first saw in her mind’s eye four years ago, when the founding class of 2018 began to help design the purpose-built school facility. It was the vision she and a friend had for a catwalk across the open ceiling in the building’s entrance—conceived during her “architecture phase” when she was 14—that is now a reality: “Every day we walk in and see that and go <em>snap</em> that was us.”</p>', 'Graduates from d.tech Show the Life-Changing Potential of Design Thinking', '', 'inherit', 'closed', 'closed', '', '100-revision-v1', '', '', '2018-06-29 07:41:18', '2018-06-29 07:41:18', '', 100, 'http://localhost/r-news/2018/06/29/100-revision-v1/', 0, 'revision', '', 0),
(102, 1, '2018-06-29 07:41:43', '2018-06-29 07:41:43', '', 'DSC_0422', '', 'inherit', 'open', 'closed', '', 'dsc_0422', '', '', '2018-06-29 07:41:43', '2018-06-29 07:41:43', '', 100, 'http://localhost/r-news/wp-content/uploads/2018/06/DSC_0422.jpg', 0, 'attachment', 'image/jpeg', 0),
(103, 1, '2018-06-29 07:42:40', '2018-06-29 07:42:40', 'A common problem when you need to set up a new database instance is to import the initial data. This can particularly be an issue, if you are converting an existing database so there is a large amount of data to import. In MySQL NDB Cluster 7.6 which just was announced as <a href="https://mysqlhighavailability.com/mysql-cluster-7-6-is-ga/" target="_blank" rel="noopener">general available (GA)</a> this week, there is a new tool to help with such imports: <a href="https://dev.mysql.com/doc/refman/5.7/en/mysql-cluster-programs-ndb-import.html">ndb_import</a>.\r\n\r\n<!--more-->\r\n\r\n<img class="size-medium wp-image-92 aligncenter" src="http://localhost/r-news/wp-content/uploads/2018/06/DSC_9659-300x157.jpg" alt="" width="300" height="157" />\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\nThe ndb_import utility takes a CSV file and imports the data into a table. (While C stands for comma, the tool is not limited to comma-separated files, in fact tabs is the default delimiter.) But hey, does that not sound familiar? It sure does. MySQL Server has “for ever” included the mysqlimport utility and LOAD DATA statement. So why do we need another utility and what does ndb_import do that we cannot already do with the existing tools?\r\n\r\nThe big advantage of ndb_import is that it is a native NDB tool. It does not connect to any of the SQL nodes; instead it connects directly to the data nodes as an NDB API program. This alone allows you to bypass the overhead of connecting to the SQL node and parse SQL statements. However, it is even better than that. The ndb_import tool can also take advantage of the parallelism offered by MySQL NDB Cluster. This means that in the end, the overall performance is expected to be quite a bit better than loading the data using mysqlimport or LOAD DATA.', 'MySQL NDB Cluster 7.6: Fast Import with ndb_import', '', 'inherit', 'closed', 'closed', '', '97-revision-v1', '', '', '2018-06-29 07:42:40', '2018-06-29 07:42:40', '', 97, 'http://localhost/r-news/2018/06/29/97-revision-v1/', 0, 'revision', '', 0),
(104, 1, '2018-06-29 07:43:28', '2018-06-29 07:43:28', '<p class="selectionShareable">Whitney Wisnom didn’t plan to go to college to study mechanical engineering—she was a soccer player—but that’s exactly where she’s headed as one of the first students to graduate from <a href="http://www.designtechhighschool.org/">Design Tech High School</a> (d.tech).</p>\r\n<!--more-->\r\n<p class="selectionShareable">“I never expected I would do anything related to STEM. I was just that jock,” she says. But everything changed when, as part of an unusual educational partnership, Wisnom took her first wearable technology class with the Oracle Education Foundation.</p>\r\n<p class="selectionShareable">The promising inventions Wisnom created, a heart-rate monitor sports bra and a GPS-enabled shin guard, are the products of design thinking, a human-centered problem-solving approach taught by <a href="https://oraclefoundation.org/dtech.html">d.tech</a> and by the <a href="https://oraclefoundation.org/index.html">Oracle Education Foundation</a>. The star forward is now on her way to New York’s Rensselaer Polytechnic Institute on a soccer scholarship, but she’ll never forget the feeling she and her student teammates had as they refined their wearable tech prototype until it lit up like a billboard when a certain heart rate was achieved: “It changed my whole career. I became a leader at d.tech because of that.”</p>\r\n<p class="selectionShareable"><strong>Teaching Students How to Think</strong></p>\r\n<p class="selectionShareable">Now elegantly curving along the Belmont Slough on <a href="https://www.oracle.com/corporate/index.html">Oracle’s headquarters campus in Redwood City, California</a>, d.tech moved three times since its founding in August 2014 until, in January 2018, it became the only public high school in the US to be located on a tech company’s campus.</p>\r\n<p class="selectionShareable">Here, d.tech—which is a free charter school and has no application process other than a lottery for California residents—can meld an educational model inspired by the famed <a href="http://dschool.stanford.edu/">Hasso Plattner Institute of Design at Stanford</a> (d.school) with expertise from a tech giant. Wisnom’s transformation illustrates why diversity in technology results in real-world solutions: “As a jock, I’ve come into this tech world with a new perspective because a lot of people come with the mindset that they’ve always had tech as a plan. I didn’t, and so I come with ideas that weren’t necessarily thought of before.”</p>\r\n<p class="selectionShareable"><strong>Tooling Around Campus</strong></p>\r\n<p class="selectionShareable">Though he had always been interested in programming, another new graduate, Alex Lederman, credits close proximity to technology professionals and resources for inspiring him to explore new terrain: robotics, Java, and the snazzy go-kart he engineered in d.tech’s decked-out Design Realization Garage and test-drove around the campus.</p>\r\n<p class="selectionShareable">The d.tech emphasis on personalized learning meant Alex Lederman could pursue advanced physics as a freshman, while design thinking skills helped him, like Wisnom, contribute to projects that were anything but abstract. “Last year I worked with Oracle and National Geographic on a deployable water buoy that had a bunch of sensors in it,” he says. “It was really cool to take the skills that I learned in Oracle classes and the skills I already had, like programming, and then apply them to a real-world project testing water quality in the Belmont Slough.”</p>\r\n<p class="selectionShareable">The high school realizes Oracle Executive Chairman and CTO Larry Ellison’s nearly 20-year-old goal of building “a school that teaches students how to think” on the Oracle campus, and CEO Safra Catz’s vision of involving Oracle employees in teaching. During the course of the academic year, Oracle Education Foundation instructional staff and Oracle Volunteers help students design, build, and code prototype solutions during four “intersession” periods, each lasting two weeks. Learning with real practitioners goes beyond a theoretical education in computer science or electrical engineering, because students learn from professionals who exercise those muscles every day to solve real problems for real customers.</p>\r\n<p class="selectionShareable">“Being an intern at Oracle has made me a better leader, a better public speaker, and more sociable,” says Lederman, who will study mechanical engineering at Purdue University. All that, but without any undue pressure, he says: “This school is very not focused on pressuring students to do what they <em>have</em> to, but more to do what they <em>want</em> to. So for the past four years, there hasn’t been a single time when I’ve had to sit in my room and hate being in school. It’s more that the homework that I’m doing is a project that I’m super interested in.”</p>\r\n<p class="selectionShareable">At the June 23 graduation ceremony, Catz praised the founding families and staff for their courage in creating d.tech, and the Education Foundation for creating the backbone of the Intersession program. “This follows something I learned a long time ago about my mentor, Larry Ellison,” she said. “What I’ve learned about him all these years—what distinguishes great entrepreneurs and leaders and people—is the courage that they show to see something that was not there and believe that it is possible.”</p>\r\n<p class="selectionShareable">Indeed, Wisnom can point to something tangible that she first saw in her mind’s eye four years ago, when the founding class of 2018 began to help design the purpose-built school facility. It was the vision she and a friend had for a catwalk across the open ceiling in the building’s entrance—conceived during her “architecture phase” when she was 14—that is now a reality: “Every day we walk in and see that and go <em>snap</em> that was us.”</p>', 'Graduates from d.tech Show the Life-Changing Potential of Design Thinking', '', 'inherit', 'closed', 'closed', '', '100-revision-v1', '', '', '2018-06-29 07:43:28', '2018-06-29 07:43:28', '', 100, 'http://localhost/r-news/2018/06/29/100-revision-v1/', 0, 'revision', '', 0),
(105, 2, '2018-07-01 23:58:50', '2018-07-01 23:58:50', 'One of the most common questions that gets asked when someone starts building a real bot is “Why am I getting strange intent resolutions”. <!--more-->\r\n\r\nFor example, someone tests the bot with random key presses like “slkejfhlskjefhksljefh” and finds blame the intent resolution within the product. However, the reality any better. This short article gives a high level What is intelligence It is worth making clear that what we call “artificial intelligence” within any chatbot platform is, in the most part, just a whole load of mathematical and statistical probabilities. A well trained bot only know and “cab” may be considered related terms in language because there is a mathematical “closeness on the fact they are used in similar ways within a training corpus such as Goal of a good model Thus, a good chatbot model should be able to deal with all of the variances in language and able to cope with the fact that you say “order me a cab” when it was trained with phrase such a “phone a taxi for me”. The flip side to that, however, is simply because words ap resolution – “balance on the river bank” has nothin “bank” might be part of the training data meaning when used in the context of “river”. Knowledge the bot doesn’t have Finally, it’s also worth making clear that when you say “ strange because you inherently know that “slkejfhlskjefhksljefh” is a nonsense input. If you have no knowledge of the language then the model the training it has been given', 'Arrgs. My Bot Doesn''t Understand Me!', '', 'publish', 'open', 'open', '', 'arrgs-my-bot-doesnt-understand-me-why-intent-resolutions-sometimes-appear-to-be-misbehaving', '', '', '2018-07-09 04:08:24', '2018-07-09 04:08:24', '', 0, 'http://localhost/r-news/?p=105', 0, 'post', '', 1),
(106, 2, '2018-07-01 23:57:24', '2018-07-01 23:57:24', 'One of the most common questions that gets asked when someone starts building a real bot is “Why am I getting strange intent resolutions”. For example, someone tests the bot with random key presses like “slkejfhlskjefhksljefh” and finds blame the intent resolution within the product.\r\n\r\n<!--more-->\r\n\r\nHowever, the reality any better. This short article gives a high level What is intelligence It is worth making clear that what we call “artificial intelligence” within any chatbot platform is, in the most part, just a whole load of mathematical and statistical probabilities. A well trained bot only know and “cab” may be considered related terms in language because there is a mathematical “closeness on the fact they are used in similar ways within a training corpus such as Goal of a good model Thus, a good chatbot model should be able to deal with all of the variances in language and able to cope with the fact that you say “order me a cab” when it was trained with phrase such a “phone a taxi for me”. The flip side to that, however, is simply because words ap resolution – “balance on the river bank” has nothin “bank” might be part of the training data meaning when used in the context of “river”. Knowledge the bot doesn’t have Finally, it’s also worth making clear that when you say “ strange because you inherently know that “slkejfhlskjefhksljefh” is a nonsense input. If you have no knowledge of the language then the model the training it has been given', 'Arrgs. My Bot Doesn''t Understand Me! Why Intent Resolutions Sometimes Appear to Be Misbehaving', '', 'inherit', 'closed', 'closed', '', '105-revision-v1', '', '', '2018-07-01 23:57:24', '2018-07-01 23:57:24', '', 105, 'http://localhost/r-news/2018/07/01/105-revision-v1/', 0, 'revision', '', 0),
(107, 2, '2018-07-01 23:58:42', '2018-07-01 23:58:42', '', 'DSC_0824', '', 'inherit', 'open', 'closed', '', 'dsc_0824', '', '', '2018-07-01 23:58:42', '2018-07-01 23:58:42', '', 105, 'http://localhost/r-news/wp-content/uploads/2018/07/DSC_0824.jpg', 0, 'attachment', 'image/jpeg', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(108, 2, '2018-07-02 00:05:00', '2018-07-02 00:05:00', '<p class="selectionShareable"><a href="https://apex.oracle.com/" target="_blank" rel="noopener">Oracle Application Express</a> (APEX) 18.1 is now generally available! <!--more--></p>\r\n<p class="selectionShareable">APEX enables you to develop, design and deploy beautiful, responsive, data-driven desktop and mobile applications using only a browser. This release of APEX is a dramatic leap forward in both the ease of integration with remote data sources, and the easy inclusion of robust, high-quality application features. Keeping up with the rapidly changing industry, APEX now makes it easier than ever to build attractive and scalable applications which integrate data from anywhere - within your Oracle database, from a remote Oracle database, or from any REST Service, all with no coding.  And the new APEX 18.1 enables you to quickly add higher-level features which are common to many applications - delivering a rich and powerful end-user experience without writing a line of code.</p>\r\n<p class="selectionShareable">"<em>Over a half million developers are building Oracle Database applications today using  Oracle Application Express (APEX).  Oracle APEX is a low code, high productivity app dev tool which combines rich declarative UI components with SQL data access.  With the new 18.1 release, Oracle APEX can now integrate data from REST services with data from SQL queries.  This new functionality is eagerly awaited by the APEX developer community</em>", said Andy Mendelsohn, Executive Vice President of Database Server Technologies at Oracle Corporation.</p>\r\nIt has always been easy to add components to an APEX application - a chart, a form, a report.  But in APEX 18.1, you now have the ability to add higher-level application features to your app, including access control, feedback, activity reporting, email reporting, dynamic user interface selection, and more.  In addition to the existing reporting and data visualization components, you can now create an application with a "cards" report interface, a dashboard, and a timeline report.  The result?  An easily-created powerful and rich application, all without writing a single line of code.\r\n\r\n&nbsp;\r\n\r\n<img class="size-medium wp-image-109 aligncenter" src="http://localhost/r-news/wp-content/uploads/2018/07/1_create_app_wizard_features-300x273.jpg" alt="" width="300" height="273" />\r\n<h1 class="selectionShareable">REST Enabled SQL Support</h1>\r\n<p class="selectionShareable">Oracle REST Data Services (ORDS) REST-Enabled SQL Services enables the execution of SQL in remote Oracle Databases, over HTTP and REST.  You can POST SQL statements to the service, and the service then runs the SQL statements against Oracle database and returns the result to the client in a JSON format.</p>\r\n<p class="selectionShareable">In APEX 18.1, you can build charts, reports, calendars, trees and even invoke processes against Oracle REST Data Services (ORDS)-provided REST Enabled SQL Services.  No longer is a database link necessary to include data from remote database objects in your APEX application - it can all be done seamlessly via REST Enabled SQL.</p>\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n[mailtarget_form form_id=1]\r\n\r\n&nbsp;\r\n\r\n&nbsp;', 'Announcing Oracle APEX 18.1', '', 'publish', 'open', 'open', '', 'announcing-oracle-apex-18-1', '', '', '2018-07-08 15:01:10', '2018-07-08 15:01:10', '', 0, 'http://localhost/r-news/?p=108', 0, 'post', '', 1),
(109, 2, '2018-07-02 00:03:07', '2018-07-02 00:03:07', '', '1_create_app_wizard_features', '', 'inherit', 'open', 'closed', '', '1_create_app_wizard_features', '', '', '2018-07-02 00:03:07', '2018-07-02 00:03:07', '', 108, 'http://localhost/r-news/wp-content/uploads/2018/07/1_create_app_wizard_features.jpg', 0, 'attachment', 'image/jpeg', 0),
(110, 2, '2018-07-02 00:05:00', '2018-07-02 00:05:00', '<p class="selectionShareable"><a href="https://apex.oracle.com/" target="_blank" rel="noopener">Oracle Application Express</a> (APEX) 18.1 is now generally available! APEX enables you to develop, design and deploy beautiful, responsive, data-driven desktop and mobile applications using only a browser. This release of APEX is a dramatic leap forward in both the ease of integration with remote data sources, and the easy inclusion of robust, high-quality application features.</p>\r\n<!--more-->\r\n<p class="selectionShareable">Keeping up with the rapidly changing industry, APEX now makes it easier than ever to build attractive and scalable applications which integrate data from anywhere - within your Oracle database, from a remote Oracle database, or from any REST Service, all with no coding.  And the new APEX 18.1 enables you to quickly add higher-level features which are common to many applications - delivering a rich and powerful end-user experience without writing a line of code.</p>\r\n<p class="selectionShareable">"<em>Over a half million developers are building Oracle Database applications today using  Oracle Application Express (APEX).  Oracle APEX is a low code, high productivity app dev tool which combines rich declarative UI components with SQL data access.  With the new 18.1 release, Oracle APEX can now integrate data from REST services with data from SQL queries.  This new functionality is eagerly awaited by the APEX developer community</em>", said Andy Mendelsohn, Executive Vice President of Database Server Technologies at Oracle Corporation.</p>\r\nIt has always been easy to add components to an APEX application - a chart, a form, a report.  But in APEX 18.1, you now have the ability to add higher-level application features to your app, including access control, feedback, activity reporting, email reporting, dynamic user interface selection, and more.  In addition to the existing reporting and data visualization components, you can now create an application with a "cards" report interface, a dashboard, and a timeline report.  The result?  An easily-created powerful and rich application, all without writing a single line of code.\r\n\r\n&nbsp;\r\n\r\n<img class="size-medium wp-image-109 aligncenter" src="http://localhost/r-news/wp-content/uploads/2018/07/1_create_app_wizard_features-300x273.jpg" alt="" width="300" height="273" />\r\n<h1 class="selectionShareable">REST Enabled SQL Support</h1>\r\n<p class="selectionShareable">\r\nOracle REST Data Services (ORDS) REST-Enabled SQL Services enables the execution of SQL in remote Oracle Databases, over HTTP and REST.  You can POST SQL statements to the service, and the service then runs the SQL statements against Oracle database and returns the result to the client in a JSON format.</p>\r\n<p class="selectionShareable">In APEX 18.1, you can build charts, reports, calendars, trees and even invoke processes against Oracle REST Data Services (ORDS)-provided REST Enabled SQL Services.  No longer is a database link necessary to include data from remote database objects in your APEX application - it can all be done seamlessly via REST Enabled SQL.</p>\r\n&nbsp;\r\n\r\n&nbsp;', '', '', 'inherit', 'closed', 'closed', '', '108-revision-v1', '', '', '2018-07-02 00:05:00', '2018-07-02 00:05:00', '', 108, 'http://localhost/r-news/2018/07/02/108-revision-v1/', 0, 'revision', '', 0),
(111, 2, '2018-07-02 00:10:32', '2018-07-02 00:10:32', '<p class="selectionShareable"><a href="https://apex.oracle.com/" target="_blank" rel="noopener">Oracle Application Express</a> (APEX) 18.1 is now generally available! APEX enables you to develop, design and deploy beautiful, responsive, data-driven desktop and mobile applications using only a browser. This release of APEX is a dramatic leap forward in both the ease of integration with remote data sources, and the easy inclusion of robust, high-quality application features.</p>\r\n<!--more-->\r\n<p class="selectionShareable">Keeping up with the rapidly changing industry, APEX now makes it easier than ever to build attractive and scalable applications which integrate data from anywhere - within your Oracle database, from a remote Oracle database, or from any REST Service, all with no coding.  And the new APEX 18.1 enables you to quickly add higher-level features which are common to many applications - delivering a rich and powerful end-user experience without writing a line of code.</p>\r\n<p class="selectionShareable">"<em>Over a half million developers are building Oracle Database applications today using  Oracle Application Express (APEX).  Oracle APEX is a low code, high productivity app dev tool which combines rich declarative UI components with SQL data access.  With the new 18.1 release, Oracle APEX can now integrate data from REST services with data from SQL queries.  This new functionality is eagerly awaited by the APEX developer community</em>", said Andy Mendelsohn, Executive Vice President of Database Server Technologies at Oracle Corporation.</p>\r\nIt has always been easy to add components to an APEX application - a chart, a form, a report.  But in APEX 18.1, you now have the ability to add higher-level application features to your app, including access control, feedback, activity reporting, email reporting, dynamic user interface selection, and more.  In addition to the existing reporting and data visualization components, you can now create an application with a "cards" report interface, a dashboard, and a timeline report.  The result?  An easily-created powerful and rich application, all without writing a single line of code.\r\n\r\n&nbsp;\r\n\r\n<img class="size-medium wp-image-109 aligncenter" src="http://localhost/r-news/wp-content/uploads/2018/07/1_create_app_wizard_features-300x273.jpg" alt="" width="300" height="273" />\r\n<h1 class="selectionShareable">REST Enabled SQL Support</h1>\r\n<p class="selectionShareable">Oracle REST Data Services (ORDS) REST-Enabled SQL Services enables the execution of SQL in remote Oracle Databases, over HTTP and REST.  You can POST SQL statements to the service, and the service then runs the SQL statements against Oracle database and returns the result to the client in a JSON format.</p>\r\n<p class="selectionShareable">In APEX 18.1, you can build charts, reports, calendars, trees and even invoke processes against Oracle REST Data Services (ORDS)-provided REST Enabled SQL Services.  No longer is a database link necessary to include data from remote database objects in your APEX application - it can all be done seamlessly via REST Enabled SQL.</p>\r\n&nbsp;\r\n\r\n&nbsp;', 'Announcing Oracle APEX 18.1', '', 'inherit', 'closed', 'closed', '', '108-revision-v1', '', '', '2018-07-02 00:10:32', '2018-07-02 00:10:32', '', 108, 'http://localhost/r-news/2018/07/02/108-revision-v1/', 0, 'revision', '', 0),
(114, 1, '2018-07-04 14:25:04', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-07-04 14:25:04', '0000-00-00 00:00:00', '', 0, 'http://localhost/r-news/?p=114', 0, 'post', '', 0),
(115, 1, '2018-07-07 13:57:35', '2018-07-07 13:57:35', '', 'Facebook', '', 'publish', 'closed', 'closed', '', 'facebook', '', '', '2018-07-07 14:09:20', '2018-07-07 14:09:20', '', 0, 'http://localhost/r-news/?post_type=socialmedia&#038;p=115', 0, 'socialmedia', '', 0),
(116, 1, '2018-07-07 14:17:19', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-07-07 14:17:19', '0000-00-00 00:00:00', '', 0, 'http://localhost/r-news/?post_type=socmed&p=116', 0, 'socmed', '', 0),
(117, 1, '2018-07-07 14:17:45', '2018-07-07 14:17:45', '', '', '', 'publish', 'closed', 'closed', '', '117-2', '', '', '2018-07-07 14:17:47', '2018-07-07 14:17:47', '', 0, 'http://localhost/r-news/?post_type=socmed&#038;p=117', 0, 'socmed', '', 0),
(118, 1, '2018-07-07 16:28:21', '2018-07-07 16:28:21', '<p class="selectionShareable"><a href="https://apex.oracle.com/" target="_blank" rel="noopener">Oracle Application Express</a> (APEX) 18.1 is now generally available! APEX enables you to develop, design and deploy beautiful, responsive, data-driven desktop and mobile applications using only a browser. This release of APEX is a dramatic leap forward in both the ease of integration with remote data sources, and the easy inclusion of robust, high-quality application features.</p>\r\n<!--more-->\r\n<p class="selectionShareable">Keeping up with the rapidly changing industry, APEX now makes it easier than ever to build attractive and scalable applications which integrate data from anywhere - within your Oracle database, from a remote Oracle database, or from any REST Service, all with no coding.  And the new APEX 18.1 enables you to quickly add higher-level features which are common to many applications - delivering a rich and powerful end-user experience without writing a line of code.</p>\r\n<p class="selectionShareable">"<em>Over a half million developers are building Oracle Database applications today using  Oracle Application Express (APEX).  Oracle APEX is a low code, high productivity app dev tool which combines rich declarative UI components with SQL data access.  With the new 18.1 release, Oracle APEX can now integrate data from REST services with data from SQL queries.  This new functionality is eagerly awaited by the APEX developer community</em>", said Andy Mendelsohn, Executive Vice President of Database Server Technologies at Oracle Corporation.</p>\r\nIt has always been easy to add components to an APEX application - a chart, a form, a report.  But in APEX 18.1, you now have the ability to add higher-level application features to your app, including access control, feedback, activity reporting, email reporting, dynamic user interface selection, and more.  In addition to the existing reporting and data visualization components, you can now create an application with a "cards" report interface, a dashboard, and a timeline report.  The result?  An easily-created powerful and rich application, all without writing a single line of code.\r\n\r\n&nbsp;\r\n\r\n<img class="size-medium wp-image-109 aligncenter" src="http://localhost/r-news/wp-content/uploads/2018/07/1_create_app_wizard_features-300x273.jpg" alt="" width="300" height="273" />\r\n<h1 class="selectionShareable">REST Enabled SQL Support</h1>\r\n<p class="selectionShareable">Oracle REST Data Services (ORDS) REST-Enabled SQL Services enables the execution of SQL in remote Oracle Databases, over HTTP and REST.  You can POST SQL statements to the service, and the service then runs the SQL statements against Oracle database and returns the result to the client in a JSON format.</p>\r\n<p class="selectionShareable">In APEX 18.1, you can build charts, reports, calendars, trees and even invoke processes against Oracle REST Data Services (ORDS)-provided REST Enabled SQL Services.  No longer is a database link necessary to include data from remote database objects in your APEX application - it can all be done seamlessly via REST Enabled SQL.</p>\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n[mailtarget_form form_id=1]\r\n\r\n&nbsp;\r\n\r\n&nbsp;', 'Announcing Oracle APEX 18.1', '', 'inherit', 'closed', 'closed', '', '108-revision-v1', '', '', '2018-07-07 16:28:21', '2018-07-07 16:28:21', '', 108, 'http://localhost/r-news/2018/07/07/108-revision-v1/', 0, 'revision', '', 0),
(119, 1, '2018-07-08 03:07:15', '2018-07-08 03:07:15', 'One of the most common questions that gets asked when someone starts building a real bot is “Why am I getting strange intent resolutions”. For example, someone tests the bot with random key presses like “slkejfhlskjefhksljefh” and finds blame the intent resolution within the product.\r\n\r\n&nbsp;\r\n\r\nHowever, the reality any better. This short article gives a high level What is intelligence It is worth making clear that what we call “artificial intelligence” within any chatbot platform is, in the most part, just a whole load of mathematical and statistical probabilities. A well trained bot only know and “cab” may be considered related terms in language because there is a mathematical “closeness on the fact they are used in similar ways within a training corpus such as Goal of a good model Thus, a good chatbot model should be able to deal with all of the variances in language and able to cope with the fact that you say “order me a cab” when it was trained with phrase such a “phone a taxi for me”. The flip side to that, however, is simply because words ap resolution – “balance on the river bank” has nothin “bank” might be part of the training data meaning when used in the context of “river”. Knowledge the bot doesn’t have Finally, it’s also worth making clear that when you say “ strange because you inherently know that “slkejfhlskjefhksljefh” is a nonsense input. If you have no knowledge of the language then the model the training it has been given', 'Arrgs. My Bot Doesn''t Understand Me! Why Intent Resolutions Sometimes Appear to Be Misbehaving', '', 'inherit', 'closed', 'closed', '', '105-revision-v1', '', '', '2018-07-08 03:07:15', '2018-07-08 03:07:15', '', 105, 'http://localhost/r-news/2018/07/08/105-revision-v1/', 0, 'revision', '', 0),
(120, 1, '2018-07-08 03:07:25', '2018-07-08 03:07:25', 'One of the most common questions that gets asked when someone starts building a real bot is “Why am I getting strange intent resolutions”. For example, someone tests the bot with random key presses like “slkejfhlskjefhksljefh” and finds blame the intent resolution within the product.\r\n\r\n<!--more-->\r\n\r\nHowever, the reality any better. This short article gives a high level What is intelligence It is worth making clear that what we call “artificial intelligence” within any chatbot platform is, in the most part, just a whole load of mathematical and statistical probabilities. A well trained bot only know and “cab” may be considered related terms in language because there is a mathematical “closeness on the fact they are used in similar ways within a training corpus such as Goal of a good model Thus, a good chatbot model should be able to deal with all of the variances in language and able to cope with the fact that you say “order me a cab” when it was trained with phrase such a “phone a taxi for me”. The flip side to that, however, is simply because words ap resolution – “balance on the river bank” has nothin “bank” might be part of the training data meaning when used in the context of “river”. Knowledge the bot doesn’t have Finally, it’s also worth making clear that when you say “ strange because you inherently know that “slkejfhlskjefhksljefh” is a nonsense input. If you have no knowledge of the language then the model the training it has been given', 'Arrgs. My Bot Doesn''t Understand Me! Why Intent Resolutions Sometimes Appear to Be Misbehaving', '', 'inherit', 'closed', 'closed', '', '105-revision-v1', '', '', '2018-07-08 03:07:25', '2018-07-08 03:07:25', '', 105, 'http://localhost/r-news/2018/07/08/105-revision-v1/', 0, 'revision', '', 0),
(121, 1, '2018-07-08 06:30:57', '2018-07-08 06:30:57', 'test aja yaaaaaaaaa. ini adalah car penggunaan leads magnet\r\n\r\n<!--more-->\r\n\r\n[leadmagnet id=135]\r\n\r\nOke deh...lead magnetnya ada di atas lho ya\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\nThanks\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;', 'test', '', 'publish', 'open', 'open', '', 'test', '', '', '2018-07-09 13:17:38', '2018-07-09 13:17:38', '', 0, 'http://localhost/r-news/?p=121', 0, 'post', '', 0),
(122, 1, '2018-07-08 04:33:58', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-07-08 04:33:58', '0000-00-00 00:00:00', '', 0, 'http://localhost/r-news/?p=122', 0, 'post', '', 0),
(123, 1, '2018-07-08 04:34:33', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-07-08 04:34:33', '0000-00-00 00:00:00', '', 0, 'http://localhost/r-news/?p=123', 0, 'post', '', 0),
(124, 1, '2018-07-08 04:58:11', '2018-07-08 04:58:11', '<span class="blue-text1">asaa</span>', '', '', 'trash', 'open', 'open', '', '__trashed-2', '', '', '2018-07-08 04:58:11', '2018-07-08 04:58:11', '', 0, 'http://localhost/r-news/?p=124', 0, 'post', '', 0),
(125, 1, '2018-07-08 04:58:10', '2018-07-08 04:58:10', '<div class="warning box">\n\n<span style="color: #ff0000; font-weight: bold; text-transform: uppercase;">ZXxxzxczxcz</span>\n\n</div>', '', '', 'trash', 'open', 'open', '', '__trashed', '', '', '2018-07-08 04:58:10', '2018-07-08 04:58:10', '', 0, 'http://localhost/r-news/?p=125', 0, 'post', '', 0),
(126, 1, '2018-07-08 04:48:11', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-07-08 04:48:11', '0000-00-00 00:00:00', '', 0, 'http://localhost/r-news/?p=126', 0, 'post', '', 0),
(127, 1, '2018-07-08 04:48:42', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-07-08 04:48:42', '0000-00-00 00:00:00', '', 0, 'http://localhost/r-news/?p=127', 0, 'post', '', 0),
(128, 1, '2018-07-08 04:54:07', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-07-08 04:54:07', '0000-00-00 00:00:00', '', 0, 'http://localhost/r-news/?p=128', 0, 'post', '', 0),
(129, 1, '2018-07-08 04:54:11', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-07-08 04:54:11', '0000-00-00 00:00:00', '', 0, 'http://localhost/r-news/?p=129', 0, 'post', '', 0),
(130, 1, '2018-07-08 04:54:25', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-07-08 04:54:25', '0000-00-00 00:00:00', '', 0, 'http://localhost/r-news/?p=130', 0, 'post', '', 0),
(131, 1, '2018-07-08 04:58:10', '2018-07-08 04:58:10', '<div class="warning box">\n\n<span style="color: #ff0000; font-weight: bold; text-transform: uppercase;">ZXxxzxczxcz</span>\n\n</div>', '', '', 'inherit', 'closed', 'closed', '', '125-revision-v1', '', '', '2018-07-08 04:58:10', '2018-07-08 04:58:10', '', 125, 'http://localhost/r-news/2018/07/08/125-revision-v1/', 0, 'revision', '', 0),
(132, 1, '2018-07-08 04:58:11', '2018-07-08 04:58:11', '<span class="blue-text1">asaa</span>', '', '', 'inherit', 'closed', 'closed', '', '124-revision-v1', '', '', '2018-07-08 04:58:11', '2018-07-08 04:58:11', '', 124, 'http://localhost/r-news/2018/07/08/124-revision-v1/', 0, 'revision', '', 0),
(133, 1, '2018-07-08 06:30:57', '2018-07-08 06:30:57', '', 'test', '', 'inherit', 'closed', 'closed', '', '121-revision-v1', '', '', '2018-07-08 06:30:57', '2018-07-08 06:30:57', '', 121, 'http://localhost/r-news/2018/07/08/121-revision-v1/', 0, 'revision', '', 0),
(134, 1, '2018-07-08 10:40:33', '2018-07-08 10:40:33', 'asdlkjdaslkdasjladskadslkjdsa\n\ntest-lead-magnet-2', 'test', '', 'inherit', 'closed', 'closed', '', '121-autosave-v1', '', '', '2018-07-08 10:40:33', '2018-07-08 10:40:33', '', 121, 'http://localhost/r-news/2018/07/08/121-autosave-v1/', 0, 'revision', '', 0),
(135, 1, '2018-07-08 08:24:27', '2018-07-08 08:24:27', '[modal]INI ADALAH LINK UNTUK LEAD MAGNET 1[/modal]', 'test lead magnet', '', 'publish', 'closed', 'closed', '', 'test-lead-magnet', '', '', '2018-07-09 15:55:22', '2018-07-09 15:55:22', '', 0, 'http://localhost/r-news/?post_type=leadmagnet&#038;p=135', 0, 'leadmagnet', '', 0),
(136, 1, '2018-07-08 09:12:28', '2018-07-08 09:12:28', 'adskldasklsakldklsadklsadads\r\n\r\nadsdasadsadssadadsdsadsa\r\n\r\n<strong>Menu item 1 here!</strong>\r\n\r\n&nbsp;\r\n\r\nadsadsdsasadsadasdsad\r\n<h4>Header</h4>\r\n<em>Menu item 2 here!</em>', 'test', '', 'inherit', 'closed', 'closed', '', '121-revision-v1', '', '', '2018-07-08 09:12:28', '2018-07-08 09:12:28', '', 121, 'http://localhost/r-news/2018/07/08/121-revision-v1/', 0, 'revision', '', 0),
(137, 1, '2018-07-08 10:31:48', '2018-07-08 10:31:48', '[modal]INI adalah Link[/modal]', 'test lead magnet 2', '', 'publish', 'closed', 'closed', '', 'test-lead-magnet-2', '', '', '2018-07-09 15:54:55', '2018-07-09 15:54:55', '', 0, 'http://localhost/r-news/?post_type=leadmagnet&#038;p=137', 0, 'leadmagnet', '', 0),
(138, 1, '2018-07-08 10:21:32', '2018-07-08 10:21:32', '', 'test', '', 'inherit', 'closed', 'closed', '', '121-revision-v1', '', '', '2018-07-08 10:21:32', '2018-07-08 10:21:32', '', 121, 'http://localhost/r-news/2018/07/08/121-revision-v1/', 0, 'revision', '', 0),
(139, 1, '2018-07-09 11:24:46', '2018-07-09 11:24:46', '<div class="tile is-parent"><article class="tile is-child box post-card image-related-promo" style="background-image: url(''http://fpoimg.com/400x600?text=2:3&amp;bg_color=85c0db&amp;text_color=ffffff'');">\n<figure class=""><a class="modal-button" href="#">satu</a></figure>\n</article></div>', 'test lead magnet', '', 'inherit', 'closed', 'closed', '', '135-autosave-v1', '', '', '2018-07-09 11:24:46', '2018-07-09 11:24:46', '', 135, 'http://localhost/r-news/2018/07/08/135-autosave-v1/', 0, 'revision', '', 0),
(140, 1, '2018-07-08 15:08:46', '2018-07-08 15:08:46', '<div class="tile is-parent"><article class="tile is-child box post-card image-related-promo" style="background-image: url(''http://fpoimg.com/400x600?text=2:3&amp;bg_color=85c0db&amp;text_color=ffffff'');">\n<figure class="">dua</figure>\n</article></div>', 'test lead magnet 2', '', 'inherit', 'closed', 'closed', '', '137-autosave-v1', '', '', '2018-07-08 15:08:46', '2018-07-08 15:08:46', '', 137, 'http://localhost/r-news/2018/07/08/137-autosave-v1/', 0, 'revision', '', 0),
(141, 1, '2018-07-08 10:53:39', '2018-07-08 10:53:39', 'test aja yaaaaaaaaa. ini adalah car penggunaan leads magnet\r\n\r\n<!--more-->\r\n\r\n[leadmagnet id=137]\r\n\r\nOke deh...lead magnetnya ada di atas lho ya\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\nThanks\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;', 'test', '', 'inherit', 'closed', 'closed', '', '121-revision-v1', '', '', '2018-07-08 10:53:39', '2018-07-08 10:53:39', '', 121, 'http://localhost/r-news/2018/07/08/121-revision-v1/', 0, 'revision', '', 0),
(142, 1, '2018-07-08 15:00:27', '2018-07-08 15:00:27', '<p class="selectionShareable"><a href="https://apex.oracle.com/" target="_blank" rel="noopener">Oracle Application Express</a> (APEX) 18.1 is now generally available! APEX enables you to develop, design and deploy beautiful, responsive, data-driven desktop and mobile applications using only a browser.</p>\r\n<!--more-->\r\n<p class="selectionShareable">This release of APEX is a dramatic leap forward in both the ease of integration with remote data sources, and the easy inclusion of robust, high-quality application features. Keeping up with the rapidly changing industry, APEX now makes it easier than ever to build attractive and scalable applications which integrate data from anywhere - within your Oracle database, from a remote Oracle database, or from any REST Service, all with no coding.  And the new APEX 18.1 enables you to quickly add higher-level features which are common to many applications - delivering a rich and powerful end-user experience without writing a line of code.</p>\r\n<p class="selectionShareable">"<em>Over a half million developers are building Oracle Database applications today using  Oracle Application Express (APEX).  Oracle APEX is a low code, high productivity app dev tool which combines rich declarative UI components with SQL data access.  With the new 18.1 release, Oracle APEX can now integrate data from REST services with data from SQL queries.  This new functionality is eagerly awaited by the APEX developer community</em>", said Andy Mendelsohn, Executive Vice President of Database Server Technologies at Oracle Corporation.</p>\r\nIt has always been easy to add components to an APEX application - a chart, a form, a report.  But in APEX 18.1, you now have the ability to add higher-level application features to your app, including access control, feedback, activity reporting, email reporting, dynamic user interface selection, and more.  In addition to the existing reporting and data visualization components, you can now create an application with a "cards" report interface, a dashboard, and a timeline report.  The result?  An easily-created powerful and rich application, all without writing a single line of code.\r\n\r\n&nbsp;\r\n\r\n<img class="size-medium wp-image-109 aligncenter" src="http://localhost/r-news/wp-content/uploads/2018/07/1_create_app_wizard_features-300x273.jpg" alt="" width="300" height="273" />\r\n<h1 class="selectionShareable">REST Enabled SQL Support</h1>\r\n<p class="selectionShareable">Oracle REST Data Services (ORDS) REST-Enabled SQL Services enables the execution of SQL in remote Oracle Databases, over HTTP and REST.  You can POST SQL statements to the service, and the service then runs the SQL statements against Oracle database and returns the result to the client in a JSON format.</p>\r\n<p class="selectionShareable">In APEX 18.1, you can build charts, reports, calendars, trees and even invoke processes against Oracle REST Data Services (ORDS)-provided REST Enabled SQL Services.  No longer is a database link necessary to include data from remote database objects in your APEX application - it can all be done seamlessly via REST Enabled SQL.</p>\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n[mailtarget_form form_id=1]\r\n\r\n&nbsp;\r\n\r\n&nbsp;', 'Announcing Oracle APEX 18.1', '', 'inherit', 'closed', 'closed', '', '108-revision-v1', '', '', '2018-07-08 15:00:27', '2018-07-08 15:00:27', '', 108, 'http://localhost/r-news/2018/07/08/108-revision-v1/', 0, 'revision', '', 0),
(143, 1, '2018-07-08 15:01:10', '2018-07-08 15:01:10', '<p class="selectionShareable"><a href="https://apex.oracle.com/" target="_blank" rel="noopener">Oracle Application Express</a> (APEX) 18.1 is now generally available! <!--more--></p>\r\n<p class="selectionShareable">APEX enables you to develop, design and deploy beautiful, responsive, data-driven desktop and mobile applications using only a browser. This release of APEX is a dramatic leap forward in both the ease of integration with remote data sources, and the easy inclusion of robust, high-quality application features. Keeping up with the rapidly changing industry, APEX now makes it easier than ever to build attractive and scalable applications which integrate data from anywhere - within your Oracle database, from a remote Oracle database, or from any REST Service, all with no coding.  And the new APEX 18.1 enables you to quickly add higher-level features which are common to many applications - delivering a rich and powerful end-user experience without writing a line of code.</p>\r\n<p class="selectionShareable">"<em>Over a half million developers are building Oracle Database applications today using  Oracle Application Express (APEX).  Oracle APEX is a low code, high productivity app dev tool which combines rich declarative UI components with SQL data access.  With the new 18.1 release, Oracle APEX can now integrate data from REST services with data from SQL queries.  This new functionality is eagerly awaited by the APEX developer community</em>", said Andy Mendelsohn, Executive Vice President of Database Server Technologies at Oracle Corporation.</p>\r\nIt has always been easy to add components to an APEX application - a chart, a form, a report.  But in APEX 18.1, you now have the ability to add higher-level application features to your app, including access control, feedback, activity reporting, email reporting, dynamic user interface selection, and more.  In addition to the existing reporting and data visualization components, you can now create an application with a "cards" report interface, a dashboard, and a timeline report.  The result?  An easily-created powerful and rich application, all without writing a single line of code.\r\n\r\n&nbsp;\r\n\r\n<img class="size-medium wp-image-109 aligncenter" src="http://localhost/r-news/wp-content/uploads/2018/07/1_create_app_wizard_features-300x273.jpg" alt="" width="300" height="273" />\r\n<h1 class="selectionShareable">REST Enabled SQL Support</h1>\r\n<p class="selectionShareable">Oracle REST Data Services (ORDS) REST-Enabled SQL Services enables the execution of SQL in remote Oracle Databases, over HTTP and REST.  You can POST SQL statements to the service, and the service then runs the SQL statements against Oracle database and returns the result to the client in a JSON format.</p>\r\n<p class="selectionShareable">In APEX 18.1, you can build charts, reports, calendars, trees and even invoke processes against Oracle REST Data Services (ORDS)-provided REST Enabled SQL Services.  No longer is a database link necessary to include data from remote database objects in your APEX application - it can all be done seamlessly via REST Enabled SQL.</p>\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n[mailtarget_form form_id=1]\r\n\r\n&nbsp;\r\n\r\n&nbsp;', 'Announcing Oracle APEX 18.1', '', 'inherit', 'closed', 'closed', '', '108-revision-v1', '', '', '2018-07-08 15:01:10', '2018-07-08 15:01:10', '', 108, 'http://localhost/r-news/2018/07/08/108-revision-v1/', 0, 'revision', '', 0),
(144, 1, '2018-07-08 15:01:53', '2018-07-08 15:01:53', 'One of the most common questions that gets asked when someone starts building a real bot is “Why am I getting strange intent resolutions”. <!--more-->\r\n\r\nFor example, someone tests the bot with random key presses like “slkejfhlskjefhksljefh” and finds blame the intent resolution within the product. However, the reality any better. This short article gives a high level What is intelligence It is worth making clear that what we call “artificial intelligence” within any chatbot platform is, in the most part, just a whole load of mathematical and statistical probabilities. A well trained bot only know and “cab” may be considered related terms in language because there is a mathematical “closeness on the fact they are used in similar ways within a training corpus such as Goal of a good model Thus, a good chatbot model should be able to deal with all of the variances in language and able to cope with the fact that you say “order me a cab” when it was trained with phrase such a “phone a taxi for me”. The flip side to that, however, is simply because words ap resolution – “balance on the river bank” has nothin “bank” might be part of the training data meaning when used in the context of “river”. Knowledge the bot doesn’t have Finally, it’s also worth making clear that when you say “ strange because you inherently know that “slkejfhlskjefhksljefh” is a nonsense input. If you have no knowledge of the language then the model the training it has been given', 'Arrgs. My Bot Doesn''t Understand Me! Why Intent Resolutions Sometimes Appear to Be Misbehaving', '', 'inherit', 'closed', 'closed', '', '105-revision-v1', '', '', '2018-07-08 15:01:53', '2018-07-08 15:01:53', '', 105, 'http://localhost/r-news/2018/07/08/105-revision-v1/', 0, 'revision', '', 0),
(145, 1, '2018-07-08 15:03:01', '2018-07-08 15:03:01', '<p class="selectionShareable">Whitney Wisnom didn’t plan to go to college to study mechanical engineering.</p>\r\n<!--more-->She was a soccer player—but that’s exactly where she’s headed as one of the first students to graduate from <a href="http://www.designtechhighschool.org/">Design Tech High School</a> (d.tech). “I never expected I would do anything related to STEM. I was just that jock,” she says. But everything changed when, as part of an unusual educational partnership, Wisnom took her first wearable technology class with the Oracle Education Foundation.\r\n<p class="selectionShareable">The promising inventions Wisnom created, a heart-rate monitor sports bra and a GPS-enabled shin guard, are the products of design thinking, a human-centered problem-solving approach taught by <a href="https://oraclefoundation.org/dtech.html">d.tech</a> and by the <a href="https://oraclefoundation.org/index.html">Oracle Education Foundation</a>. The star forward is now on her way to New York’s Rensselaer Polytechnic Institute on a soccer scholarship, but she’ll never forget the feeling she and her student teammates had as they refined their wearable tech prototype until it lit up like a billboard when a certain heart rate was achieved: “It changed my whole career. I became a leader at d.tech because of that.”</p>\r\n<p class="selectionShareable"><strong>Teaching Students How to Think</strong></p>\r\n<p class="selectionShareable">Now elegantly curving along the Belmont Slough on <a href="https://www.oracle.com/corporate/index.html">Oracle’s headquarters campus in Redwood City, California</a>, d.tech moved three times since its founding in August 2014 until, in January 2018, it became the only public high school in the US to be located on a tech company’s campus.</p>\r\n<p class="selectionShareable">Here, d.tech—which is a free charter school and has no application process other than a lottery for California residents—can meld an educational model inspired by the famed <a href="http://dschool.stanford.edu/">Hasso Plattner Institute of Design at Stanford</a> (d.school) with expertise from a tech giant. Wisnom’s transformation illustrates why diversity in technology results in real-world solutions: “As a jock, I’ve come into this tech world with a new perspective because a lot of people come with the mindset that they’ve always had tech as a plan. I didn’t, and so I come with ideas that weren’t necessarily thought of before.”</p>\r\n<p class="selectionShareable"><strong>Tooling Around Campus</strong></p>\r\n<p class="selectionShareable">Though he had always been interested in programming, another new graduate, Alex Lederman, credits close proximity to technology professionals and resources for inspiring him to explore new terrain: robotics, Java, and the snazzy go-kart he engineered in d.tech’s decked-out Design Realization Garage and test-drove around the campus.</p>\r\n<p class="selectionShareable">The d.tech emphasis on personalized learning meant Alex Lederman could pursue advanced physics as a freshman, while design thinking skills helped him, like Wisnom, contribute to projects that were anything but abstract. “Last year I worked with Oracle and National Geographic on a deployable water buoy that had a bunch of sensors in it,” he says. “It was really cool to take the skills that I learned in Oracle classes and the skills I already had, like programming, and then apply them to a real-world project testing water quality in the Belmont Slough.”</p>\r\n<p class="selectionShareable">The high school realizes Oracle Executive Chairman and CTO Larry Ellison’s nearly 20-year-old goal of building “a school that teaches students how to think” on the Oracle campus, and CEO Safra Catz’s vision of involving Oracle employees in teaching. During the course of the academic year, Oracle Education Foundation instructional staff and Oracle Volunteers help students design, build, and code prototype solutions during four “intersession” periods, each lasting two weeks. Learning with real practitioners goes beyond a theoretical education in computer science or electrical engineering, because students learn from professionals who exercise those muscles every day to solve real problems for real customers.</p>\r\n<p class="selectionShareable">“Being an intern at Oracle has made me a better leader, a better public speaker, and more sociable,” says Lederman, who will study mechanical engineering at Purdue University. All that, but without any undue pressure, he says: “This school is very not focused on pressuring students to do what they <em>have</em> to, but more to do what they <em>want</em> to. So for the past four years, there hasn’t been a single time when I’ve had to sit in my room and hate being in school. It’s more that the homework that I’m doing is a project that I’m super interested in.”</p>\r\n<p class="selectionShareable">At the June 23 graduation ceremony, Catz praised the founding families and staff for their courage in creating d.tech, and the Education Foundation for creating the backbone of the Intersession program. “This follows something I learned a long time ago about my mentor, Larry Ellison,” she said. “What I’ve learned about him all these years—what distinguishes great entrepreneurs and leaders and people—is the courage that they show to see something that was not there and believe that it is possible.”</p>\r\n<p class="selectionShareable">Indeed, Wisnom can point to something tangible that she first saw in her mind’s eye four years ago, when the founding class of 2018 began to help design the purpose-built school facility. It was the vision she and a friend had for a catwalk across the open ceiling in the building’s entrance—conceived during her “architecture phase” when she was 14—that is now a reality: “Every day we walk in and see that and go <em>snap</em> that was us.”</p>', 'Graduates from d.tech Show the Life-Changing Potential of Design Thinking', '', 'inherit', 'closed', 'closed', '', '100-revision-v1', '', '', '2018-07-08 15:03:01', '2018-07-08 15:03:01', '', 100, 'http://localhost/r-news/2018/07/08/100-revision-v1/', 0, 'revision', '', 0),
(146, 1, '2018-07-08 15:03:33', '2018-07-08 15:03:33', 'A common problem when you need to set up a new database instance is to import the initial data.\r\n\r\n<!--more-->\r\n\r\nThis can particularly be an issue, if you are converting an existing database so there is a large amount of data to import. In MySQL NDB Cluster 7.6 which just was announced as <a href="https://mysqlhighavailability.com/mysql-cluster-7-6-is-ga/" target="_blank" rel="noopener">general available (GA)</a> this week, there is a new tool to help with such imports: <a href="https://dev.mysql.com/doc/refman/5.7/en/mysql-cluster-programs-ndb-import.html">ndb_import</a>.\r\n\r\n<img class="size-medium wp-image-92 aligncenter" src="http://localhost/r-news/wp-content/uploads/2018/06/DSC_9659-300x157.jpg" alt="" width="300" height="157" />\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\nThe ndb_import utility takes a CSV file and imports the data into a table. (While C stands for comma, the tool is not limited to comma-separated files, in fact tabs is the default delimiter.) But hey, does that not sound familiar? It sure does. MySQL Server has “for ever” included the mysqlimport utility and LOAD DATA statement. So why do we need another utility and what does ndb_import do that we cannot already do with the existing tools?\r\n\r\nThe big advantage of ndb_import is that it is a native NDB tool. It does not connect to any of the SQL nodes; instead it connects directly to the data nodes as an NDB API program. This alone allows you to bypass the overhead of connecting to the SQL node and parse SQL statements. However, it is even better than that. The ndb_import tool can also take advantage of the parallelism offered by MySQL NDB Cluster. This means that in the end, the overall performance is expected to be quite a bit better than loading the data using mysqlimport or LOAD DATA.', 'MySQL NDB Cluster 7.6: Fast Import with ndb_import', '', 'inherit', 'closed', 'closed', '', '97-revision-v1', '', '', '2018-07-08 15:03:33', '2018-07-08 15:03:33', '', 97, 'http://localhost/r-news/2018/07/08/97-revision-v1/', 0, 'revision', '', 0),
(147, 1, '2018-07-08 15:03:59', '2018-07-08 15:03:59', 'Masalah kabel mengelupas seperti ini sepertinya sudah jamak terjadi di kalangan pengguna MacBook.\r\n\r\n<!--more-->\r\n\r\nSelain membeli power adaptor baru, solusi lain yang banyak ditemukan di internet adalah menggunakan <a href="https://sugru.com/about">Sugru</a>. Suatu material yang menyerupai permen karet dan akan mengeras setelah beberapa saat. Sayangnya Sugru tidak mudah ditemukan di sini. Kalaupun ada, harganya tidak terlalu murah. Tapi jangan khawatir, saya punya solusi hemat untuk mengatasi masalah tersebut.\r\n\r\nAdalah No Drop, cat pelapis anti bocor yang memiliki sifat elastis, kedap air serta sangat tahan cuaca. Tenang, ini bukan iklan. Anda mungkin bisa mencoba menggunakan cat pelapis lain yang hasil  akhirnya elastis untuk keperluan ini.\r\n\r\nPertama-tama, bersihkan permukaan kabel yang akan diperbaiki. Lalu bungkus power adaptor MacBook dengan plastik agar tidak belepotan. Kalau Anda bisa berhati-hati, silakan untuk tidak membungkusnya dengan plastik.\r\n\r\nAmbil secolek cat No Drop..\r\n\r\nOleskan secara merata ke bagian kabel yang mengelupas. Tambahkan No Drop secukupnya sampai membungkus seluruh permukaan kabel.\r\n\r\nSetelah itu angin-anginkan/jemur agar No Drop mengering. Waktu saya coba, No Drop baru mengering sempurna setelah sekitar 24 jam. Mungkin bisa lebih cepat jika dijemur terus-terusan atau pengolesan dilakukan secara berlapis.\r\n\r\nUsahakan untuk tidak memindah/menggerakkan kabelnya saat No Drop belum kering benar agar hasil akhirnya memuaskan.\r\n\r\nNah, sangat mudah dan murah bukan? Power adaptor MacBook pun bisa digunakan kembali tanpa harus khawatir kabelnya putus dan mengeluarkan biaya untuk membeli yang baru.\r\n\r\nBerikut ini kelebihan dan kekurangan dalam pemakaian No Drop untuk memperpanjang umur kabel power adaptor MacBook:\r\n\r\n<strong>Pros:</strong>\r\n<ul>\r\n 	<li>Hemat, dengan uang 50 ribu kita bisa memperbaiki ratusan kabel adaptor MacBook.</li>\r\n 	<li>Banyak pilihan warna.</li>\r\n 	<li>Puas jiwa raga.</li>\r\n</ul>\r\n<strong>Cons:</strong>\r\n<ul>\r\n 	<li>Proses pengeringan butuh waktu agak lama.</li>\r\n</ul>', 'MEMPERBAIKI KABEL ADAPTOR MACBOOK YANG MENGELUPAS', '', 'inherit', 'closed', 'closed', '', '93-revision-v1', '', '', '2018-07-08 15:03:59', '2018-07-08 15:03:59', '', 93, 'http://localhost/r-news/2018/07/08/93-revision-v1/', 0, 'revision', '', 0),
(148, 1, '2018-07-08 15:04:26', '2018-07-08 15:04:26', 'Nggak usah galau kalau liburan belum punya pilihan tempat wisata.\r\n\r\n<!--more-->\r\n\r\nNyatanya, tempat wisata air terjun memang nggak pernah ada matinya.\r\n\r\nBiasanya, kepopuleran tempat wisata air terjun bergantian membentuk sebuah siklus yang nggak terputus. Kalau salah satu air terjun udah terlalu populer dan dipadati banyak pengunjung, maka air terjun baru akan ditemukan dan menyebar popularitasnya dari mulut ke mulut. <em>Bener</em>, kan?\r\n\r\nNah, salah satu pulau yang memiliki banyak air terjun cantik adalah Pulau Lombok. Ternyata nggak cuma pantai dan Gunung Rinjani aja yang bikin Lombok memesona, beberapa air terjun cantik ini juga bakal bikin kamu makin tertarik buat datang ke sana.\r\n\r\nApa aja sih?\r\n<ol>\r\n 	<li><b>Air Terjun Mangku Sakti</b>Air Terjun Mangku Sakti adalah salah satu tempat wisata di Lombok yang mengandung legenda. Konon kabarnya, pada zaman dahulu di daerah sekitar ini hidup seorang mangku (juru kunci). Setelah mangku tersebut meninggal dunia, warga di sekitar daerah ini menemukan air terjun indah yang dikepung bebatuan.Uniknya, bebatuan yang mengepung air terjun ini membentuk wajah mirip sang mangku yang telah meninggal.Pesona Air Terjun Mangku Sakti nggak hanya terletak pada keindahan panoramanya saja. Air terjun ini juga memiliki aliran yang mengandung belerang dengan kolam di bawahnya.Lokasi Air Terjun Mangku Sakti adalah di Sajang, Sembalun, Lombok Timur.</li>\r\n 	<li><b>Air Terjun Dewi Selendang</b>Air terjun yang satu ini punya nama secantik pemandangannya.Nama Air Terjun Dewi Selendang sangat cocok diberikan pada air terjun dengan aliran air melengkung seperti selendang ini. Ada bebatuan alam besar yang mengepung keindahan Air Terjun Dewi Selendang. Airnya pun sangat sejuk sehingga sangat cocok untuk berenang atau mandi.Lokasi dari Air Terjun Dewi Selendang adalah di Bilok Petung, Sembalun, Lombok Timur.</li>\r\n 	<li><b>Air Terjun Madu</b>Pemandangan yang bisa kamu temukan di Air Terjun Madu ini memang semanis namanya. Air Terjun Madu ini berlokasi tidak jauh dari tempat wisata air terjun lainnya yang disebut Air Terjun Umar Maya.Pemandangan di tempat wisata Air Terjun Madu dikepung oleh tebing-tebing tinggi dengan bebatuan yang indah.Nah, di sela-sela tebing dan bebatuan ini, aliran sungai jernih dari Air Terjun Madu mengalir deras.</li>\r\n</ol>\r\nSebenarnya, Pulau Lombok masih punya banyak air terjun menawan yang bisa kamu kunjungi saat liburan. Biar kamu nggak penasaran, lebih baik kamu segera merencanakan liburan serumu ke Pulau Lombok.\r\n\r\nPesan <a href="https://www.tiket.com/pesawat?utm_source=sandalian-com&amp;utm_medium=lb-mei-18&amp;utm_content=tiket-pesawat-murah">tiket pesawat murah</a> biar kamu segera mendarat di pulau yang cantik ini. Kamu bisa pesan tiket pesawat dari maskapai nasional seperti <a href="https://www.tiket.com/pesawat/tiket-garuda-indonesia?utm_source=sandalian-com&amp;utm_medium=lb-mei-18&amp;utm_content=garuda-indonesia">garuda indonesia</a> supaya perjalananmu menyenangkan.\r\n\r\n<i>Yuk, </i>berangkat!', 'TIGA AIR TERJUN DI LOMBOK INI BAKAL BIKIN KAMU TERPANA', '', 'inherit', 'closed', 'closed', '', '85-revision-v1', '', '', '2018-07-08 15:04:26', '2018-07-08 15:04:26', '', 85, 'http://localhost/r-news/2018/07/08/85-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(149, 1, '2018-07-08 15:04:56', '2018-07-08 15:04:56', 'Writing a blog post is a little like driving.\r\n\r\n<!--more-->\r\n\r\nYou can study the highway code (or read articles telling you how to write a blog post) for months, but nothing can prepare you for the real thing like getting behind the wheel and hitting the open road. Or something.\r\n\r\nNow that I’m done thoroughly mangling that vague metaphor, let’s get down to business. You know you need to start blogging to grow your business, but you don’t know how. In this post, I’ll show you how to write a blog post in five simple steps that people will actually want to read. Ready? Let’s get started.\r\n<h3>How to Write a Blog Post in Five Easy Steps [Summary]:</h3>\r\n<ol>\r\n 	<li>Step 1: Plan your blog post by choosing a topic, creating an outline, conducting research, and checking facts.</li>\r\n 	<li>Step 2: Craft a headline that is both informative and will capture readers’ attentions.</li>\r\n 	<li>Step 3: Write your post, either writing a draft in a single session or gradually word on parts of it.</li>\r\n 	<li>Step 4: Use images to enhance your post, improve its flow, add humor, and explain complex topics.</li>\r\n 	<li>Step 5: Edit your blog post. Make sure to avoid repetition, read your post aloud to check its flow, have someone else read it and provide feedback, keep sentences and paragraphs short, don’t be a perfectionist, don’t be afraid to cut out text or adapt your writing last minute.</li>\r\n</ol>\r\nNow let''s review each step in more detail.\r\n\r\n&nbsp;\r\n<h2>How to Write a Blog Post, Step 1: Planning</h2>\r\nFirst, a disclaimer – the entire process of writing a blog post often takes more than a couple of hours, even if you can type eighty words per minute and your <a href="https://www.wordstream.com/blog/ws/2014/08/07/improve-writing-skills">writing skills</a> are sharp. From the seed of the idea to finally hitting “Publish,” you might spend several days or maybe even a week “writing” a blog post, but it’s important to spend those vital hours planning your post and even thinking about your post (yes, thinking counts as working if you’re a blogger) before you actually write it.\r\n\r\n&nbsp;\r\n\r\nLong before you sit down to put digital pen to paper, you need to make sure you have everything you need to sit down and write. Many new bloggers overlook the planning process, and while you might be able to get away with skipping the planning stage, doing your homework will actually save you time further down the road and help you develop good blogging habits.', 'How to Write an Awesome Blog Post in 5 Steps', '', 'inherit', 'closed', 'closed', '', '83-revision-v1', '', '', '2018-07-08 15:04:56', '2018-07-08 15:04:56', '', 83, 'http://localhost/r-news/2018/07/08/83-revision-v1/', 0, 'revision', '', 0),
(150, 1, '2018-07-08 22:52:52', '2018-07-08 22:52:52', 'According to a recent <a href="https://www.affili.net/uk/about-affilinet/press-centre/2015/bloggers-trusted-more-than-celebrities-journalist" target="_blank" rel="noopener">U.K. survey</a>, bloggers have ranked as the third most trustworthy source of information, <!--more-->\r\n\r\nfollowing only friends and family. That''s right -- bloggers are trusted more than celebrities, journalists, brands, and politicians.\r\n\r\nBut how do you get people to fall in love with your blog in the first place? (Aside from remarkable content, of course.)\r\n\r\nWell, just as your <a title="website homepage" href="https://blog.hubspot.com/blog/tabid/6307/bid/34006/15-Examples-of-Brilliant-Homepage-Design.aspx" target="_blank" rel="noopener">website homepage</a> is like the front door to your business, your blog''s design -- much like a welcome mat -- is the front door to your business blog.<span id="hs-cta-wrapper-c791aced-6180-48a5-916d-b2d76cec1836" class="hs-cta-wrapper"><span id="hs-cta-c791aced-6180-48a5-916d-b2d76cec1836" class="hs-cta-node hs-cta-c791aced-6180-48a5-916d-b2d76cec1836" data-hs-drop="true"><a id="cta_button_53_876c8edc-bcdf-4621-9b23-a828909453df" class="cta_button " title="Download our full collection of homepage, blog, and landing page examples here to inspire your own website design. " href="https://cta-service-cms2.hubspot.com/ctas/v2/public/cs/c/?cta_guid=876c8edc-bcdf-4621-9b23-a828909453df&amp;placement_guid=c791aced-6180-48a5-916d-b2d76cec1836&amp;portal_id=53&amp;redirect_url=APefjpFqyXAV5Y2th_hmIXmdlAi7XD4c-9BtKbozUYb97JTZEpyvbFCnWHJN6iOBuMtekkuUIr6mLjV_sFzuxuzGXD2EmAWab074WVRXgZNsjM5E51fcoqrGK_4lqBQg-rlW9m6RBYsUuzx8GXdq-wOHT3XmfTEYTvHKphtTvewjG6TtteyWNKLNSIgapTkpoQNYH1cscdlZ&amp;hsutk=c6e8bebafa7b0bad2746f19e3b447e5d&amp;canon=https%3A%2F%2Fblog.hubspot.com%2Fblog%2Ftabid%2F6307%2Fbid%2F34143%2F12-inspiring-examples-of-beautiful-blog-homepage-designs.aspx&amp;click=0ac8691a-e528-47b7-bc22-de0c07e12d10&amp;utm_referrer=https%3A%2F%2Fwww.google.co.id%2F&amp;pageId=24326359&amp;__hstc=20629287.c6e8bebafa7b0bad2746f19e3b447e5d.1530196391193.1530196391193.1530196391193.1&amp;__hssc=20629287.1.1530196391193&amp;__hsfp=298557263" target="_blank" rel="noopener"></a></span></span>\r\n<h3><a id="cta_button_53_876c8edc-bcdf-4621-9b23-a828909453df" class="cta_button " title="Download our full collection of homepage, blog, and landing page examples here to inspire your own website design. " href="https://cta-service-cms2.hubspot.com/ctas/v2/public/cs/c/?cta_guid=876c8edc-bcdf-4621-9b23-a828909453df&amp;placement_guid=c791aced-6180-48a5-916d-b2d76cec1836&amp;portal_id=53&amp;redirect_url=APefjpFqyXAV5Y2th_hmIXmdlAi7XD4c-9BtKbozUYb97JTZEpyvbFCnWHJN6iOBuMtekkuUIr6mLjV_sFzuxuzGXD2EmAWab074WVRXgZNsjM5E51fcoqrGK_4lqBQg-rlW9m6RBYsUuzx8GXdq-wOHT3XmfTEYTvHKphtTvewjG6TtteyWNKLNSIgapTkpoQNYH1cscdlZ&amp;hsutk=c6e8bebafa7b0bad2746f19e3b447e5d&amp;canon=https%3A%2F%2Fblog.hubspot.com%2Fblog%2Ftabid%2F6307%2Fbid%2F34143%2F12-inspiring-examples-of-beautiful-blog-homepage-designs.aspx&amp;click=0ac8691a-e528-47b7-bc22-de0c07e12d10&amp;utm_referrer=https%3A%2F%2Fwww.google.co.id%2F&amp;pageId=24326359&amp;__hstc=20629287.c6e8bebafa7b0bad2746f19e3b447e5d.1530196391193.1530196391193.1530196391193.1&amp;__hssc=20629287.1.1530196391193&amp;__hsfp=298557263" target="_blank" rel="noopener">Download our full collection of homepage, blog, and landing page examples here to inspire your own website design. </a></h3>\r\nIf you''re not attracting people visually, how will you get them to take the next steps to actually read (and, hopefully, <a title="subscribe to" href="https://blog.hubspot.com/blog/tabid/6307/bid/33700/How-to-Convert-Casual-Blog-Visitors-Into-Dedicated-Subscribers.aspx" target="_blank" rel="noopener">subscribe to</a>) your content?\r\n\r\n&nbsp;\r\n\r\nOnce you''re done creating the quality content, you still have the challenge of presenting it that clearly dictates what your blog is about. Images, text, and links need to be shown off just right -- otherwise, readers might abandon your content, if it''s not aesthetically showcased in a way that''s both appealing and easy to follow.\r\n\r\nThat''s why we''ve compiled some examples of <a href="https://library.hubspot.com/blog-editorial-calendar" target="_blank" rel="noopener">blog</a> homepages to get you on the right track to designing the perfect blog for your readers. Check ''em out.', '16 of the Best Examples of Beautiful Blog Design', '', 'inherit', 'closed', 'closed', '', '73-revision-v1', '', '', '2018-07-08 22:52:52', '2018-07-08 22:52:52', '', 73, 'http://localhost/r-news/2018/07/08/73-revision-v1/', 0, 'revision', '', 0),
(151, 1, '2018-07-09 02:54:28', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-07-09 02:54:28', '0000-00-00 00:00:00', '', 0, 'http://localhost/r-news/?post_type=relatedpromo&p=151', 0, 'relatedpromo', '', 0),
(152, 1, '2018-07-09 02:55:59', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-07-09 02:55:59', '0000-00-00 00:00:00', '', 0, 'http://localhost/r-news/?post_type=relatedpromo&p=152', 0, 'relatedpromo', '', 0),
(153, 1, '2018-07-09 02:56:07', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-07-09 02:56:07', '0000-00-00 00:00:00', '', 0, 'http://localhost/r-news/?post_type=relatedpromo&p=153', 0, 'relatedpromo', '', 0),
(154, 1, '2018-07-09 02:56:42', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-07-09 02:56:42', '0000-00-00 00:00:00', '', 0, 'http://localhost/r-news/?post_type=relatedpromo&p=154', 0, 'relatedpromo', '', 0),
(155, 1, '2018-07-09 02:56:45', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-07-09 02:56:45', '0000-00-00 00:00:00', '', 0, 'http://localhost/r-news/?post_type=relatedpromo&p=155', 0, 'relatedpromo', '', 0),
(156, 1, '2018-07-09 02:56:46', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-07-09 02:56:46', '0000-00-00 00:00:00', '', 0, 'http://localhost/r-news/?post_type=relatedpromo&p=156', 0, 'relatedpromo', '', 0),
(157, 1, '2018-07-09 02:57:06', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-07-09 02:57:06', '0000-00-00 00:00:00', '', 0, 'http://localhost/r-news/?post_type=relatedpromo&p=157', 0, 'relatedpromo', '', 0),
(158, 1, '2018-07-09 02:59:19', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-07-09 02:59:19', '0000-00-00 00:00:00', '', 0, 'http://localhost/r-news/?post_type=relatedpromo&p=158', 0, 'relatedpromo', '', 0),
(159, 1, '2018-07-09 02:59:21', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-07-09 02:59:21', '0000-00-00 00:00:00', '', 0, 'http://localhost/r-news/?post_type=relatedpromo&p=159', 0, 'relatedpromo', '', 0),
(160, 1, '2018-07-09 03:03:31', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-07-09 03:03:31', '0000-00-00 00:00:00', '', 0, 'http://localhost/r-news/?post_type=relatedpromo&p=160', 0, 'relatedpromo', '', 0),
(161, 1, '2018-07-09 03:04:07', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-07-09 03:04:07', '0000-00-00 00:00:00', '', 0, 'http://localhost/r-news/?post_type=leadmagnet&p=161', 0, 'leadmagnet', '', 0),
(162, 1, '2018-07-09 03:04:20', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-07-09 03:04:20', '0000-00-00 00:00:00', '', 0, 'http://localhost/r-news/?post_type=leadmagnet&p=162', 0, 'leadmagnet', '', 0),
(163, 1, '2018-07-09 03:04:32', '2018-07-09 03:04:32', '', 'test related promo', '', 'publish', 'closed', 'closed', '', 'test', '', '', '2018-07-09 12:24:30', '2018-07-09 12:24:30', '', 0, 'http://localhost/r-news/?post_type=relatedpromo&#038;p=163', 0, 'relatedpromo', '', 0),
(164, 1, '2018-07-09 03:05:58', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-07-09 03:05:58', '0000-00-00 00:00:00', '', 0, 'http://localhost/r-news/?post_type=relatedpromo&p=164', 0, 'relatedpromo', '', 0),
(165, 1, '2018-07-09 03:07:23', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-07-09 03:07:23', '0000-00-00 00:00:00', '', 0, 'http://localhost/r-news/?post_type=relatedpromo&p=165', 0, 'relatedpromo', '', 0),
(166, 1, '2018-07-09 03:07:41', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-07-09 03:07:41', '0000-00-00 00:00:00', '', 0, 'http://localhost/r-news/?post_type=relatedpromo&p=166', 0, 'relatedpromo', '', 0),
(167, 1, '2018-07-09 03:08:25', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-07-09 03:08:25', '0000-00-00 00:00:00', '', 0, 'http://localhost/r-news/?post_type=relatedpromo&p=167', 0, 'relatedpromo', '', 0),
(168, 1, '2018-07-09 03:08:44', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-07-09 03:08:44', '0000-00-00 00:00:00', '', 0, 'http://localhost/r-news/?post_type=relatedpromo&p=168', 0, 'relatedpromo', '', 0),
(169, 1, '2018-07-09 03:10:08', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-07-09 03:10:08', '0000-00-00 00:00:00', '', 0, 'http://localhost/r-news/?post_type=relatedpromo&p=169', 0, 'relatedpromo', '', 0),
(170, 1, '2018-07-09 03:10:09', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-07-09 03:10:09', '0000-00-00 00:00:00', '', 0, 'http://localhost/r-news/?post_type=relatedpromo&p=170', 0, 'relatedpromo', '', 0),
(171, 1, '2018-07-09 03:10:12', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-07-09 03:10:12', '0000-00-00 00:00:00', '', 0, 'http://localhost/r-news/?post_type=relatedpromo&p=171', 0, 'relatedpromo', '', 0),
(172, 1, '2018-07-09 03:10:24', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-07-09 03:10:24', '0000-00-00 00:00:00', '', 0, 'http://localhost/r-news/?post_type=relatedpromo&p=172', 0, 'relatedpromo', '', 0),
(173, 1, '2018-07-09 03:12:54', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-07-09 03:12:54', '0000-00-00 00:00:00', '', 0, 'http://localhost/r-news/?post_type=relatedpromo&p=173', 0, 'relatedpromo', '', 0),
(174, 1, '2018-07-09 03:31:00', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-07-09 03:31:00', '0000-00-00 00:00:00', '', 0, 'http://localhost/r-news/?post_type=leadmagnet&p=174', 0, 'leadmagnet', '', 0),
(175, 1, '2018-07-09 03:31:28', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-07-09 03:31:28', '0000-00-00 00:00:00', '', 0, 'http://localhost/r-news/?post_type=leadmagnet&p=175', 0, 'leadmagnet', '', 0),
(176, 1, '2018-07-09 03:51:21', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-07-09 03:51:21', '0000-00-00 00:00:00', '', 0, 'http://localhost/r-news/?post_type=leadmagnet&p=176', 0, 'leadmagnet', '', 0),
(177, 1, '2018-07-09 03:53:35', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-07-09 03:53:35', '0000-00-00 00:00:00', '', 0, 'http://localhost/r-news/?post_type=leadmagnet&p=177', 0, 'leadmagnet', '', 0),
(178, 1, '2018-07-09 03:53:58', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-07-09 03:53:58', '0000-00-00 00:00:00', '', 0, 'http://localhost/r-news/?post_type=leadmagnet&p=178', 0, 'leadmagnet', '', 0),
(179, 1, '2018-07-09 03:58:59', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-07-09 03:58:59', '0000-00-00 00:00:00', '', 0, 'http://localhost/r-news/?post_type=leadmagnet&p=179', 0, 'leadmagnet', '', 0),
(180, 1, '2018-07-09 03:59:05', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-07-09 03:59:05', '0000-00-00 00:00:00', '', 0, 'http://localhost/r-news/?post_type=leadmagnet&p=180', 0, 'leadmagnet', '', 0),
(181, 1, '2018-07-09 03:59:18', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-07-09 03:59:18', '0000-00-00 00:00:00', '', 0, 'http://localhost/r-news/?post_type=relatedpromo&p=181', 0, 'relatedpromo', '', 0),
(182, 1, '2018-07-09 03:59:34', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-07-09 03:59:34', '0000-00-00 00:00:00', '', 0, 'http://localhost/r-news/?p=182', 0, 'post', '', 0),
(183, 1, '2018-07-09 04:07:30', '2018-07-09 04:07:30', 'One of the most common questions that gets asked when someone starts building a real bot is “Why am I getting strange intent resolutions”. <!--more-->\r\n\r\nFor example, someone tests the bot with random key presses like “slkejfhlskjefhksljefh” and finds blame the intent resolution within the product. However, the reality any better. This short article gives a high level What is intelligence It is worth making clear that what we call “artificial intelligence” within any chatbot platform is, in the most part, just a whole load of mathematical and statistical probabilities. A well trained bot only know and “cab” may be considered related terms in language because there is a mathematical “closeness on the fact they are used in similar ways within a training corpus such as Goal of a good model Thus, a good chatbot model should be able to deal with all of the variances in language and able to cope with the fact that you say “order me a cab” when it was trained with phrase such a “phone a taxi for me”. The flip side to that, however, is simply because words ap resolution – “balance on the river bank” has nothin “bank” might be part of the training data meaning when used in the context of “river”. Knowledge the bot doesn’t have Finally, it’s also worth making clear that when you say “ strange because you inherently know that “slkejfhlskjefhksljefh” is a nonsense input. If you have no knowledge of the language then the model the training it has been given', 'aaaaa', '', 'inherit', 'closed', 'closed', '', '105-revision-v1', '', '', '2018-07-09 04:07:30', '2018-07-09 04:07:30', '', 105, 'http://localhost/r-news/2018/07/09/105-revision-v1/', 0, 'revision', '', 0),
(184, 1, '2018-07-09 04:07:57', '2018-07-09 04:07:57', 'One of the most common questions that gets asked when someone starts building a real bot is “Why am I getting strange intent resolutions”. <!--more-->\r\n\r\nFor example, someone tests the bot with random key presses like “slkejfhlskjefhksljefh” and finds blame the intent resolution within the product. However, the reality any better. This short article gives a high level What is intelligence It is worth making clear that what we call “artificial intelligence” within any chatbot platform is, in the most part, just a whole load of mathematical and statistical probabilities. A well trained bot only know and “cab” may be considered related terms in language because there is a mathematical “closeness on the fact they are used in similar ways within a training corpus such as Goal of a good model Thus, a good chatbot model should be able to deal with all of the variances in language and able to cope with the fact that you say “order me a cab” when it was trained with phrase such a “phone a taxi for me”. The flip side to that, however, is simply because words ap resolution – “balance on the river bank” has nothin “bank” might be part of the training data meaning when used in the context of “river”. Knowledge the bot doesn’t have Finally, it’s also worth making clear that when you say “ strange because you inherently know that “slkejfhlskjefhksljefh” is a nonsense input. If you have no knowledge of the language then the model the training it has been given', 'Arrgs. My Bot Doesn''t Understand Me! Why Intent Resolutions Sometimes Appear to Be Misbehaving', '', 'inherit', 'closed', 'closed', '', '105-revision-v1', '', '', '2018-07-09 04:07:57', '2018-07-09 04:07:57', '', 105, 'http://localhost/r-news/2018/07/09/105-revision-v1/', 0, 'revision', '', 0),
(185, 1, '2018-07-09 04:08:24', '2018-07-09 04:08:24', 'One of the most common questions that gets asked when someone starts building a real bot is “Why am I getting strange intent resolutions”. <!--more-->\r\n\r\nFor example, someone tests the bot with random key presses like “slkejfhlskjefhksljefh” and finds blame the intent resolution within the product. However, the reality any better. This short article gives a high level What is intelligence It is worth making clear that what we call “artificial intelligence” within any chatbot platform is, in the most part, just a whole load of mathematical and statistical probabilities. A well trained bot only know and “cab” may be considered related terms in language because there is a mathematical “closeness on the fact they are used in similar ways within a training corpus such as Goal of a good model Thus, a good chatbot model should be able to deal with all of the variances in language and able to cope with the fact that you say “order me a cab” when it was trained with phrase such a “phone a taxi for me”. The flip side to that, however, is simply because words ap resolution – “balance on the river bank” has nothin “bank” might be part of the training data meaning when used in the context of “river”. Knowledge the bot doesn’t have Finally, it’s also worth making clear that when you say “ strange because you inherently know that “slkejfhlskjefhksljefh” is a nonsense input. If you have no knowledge of the language then the model the training it has been given', 'Arrgs. My Bot Doesn''t Understand Me!', '', 'inherit', 'closed', 'closed', '', '105-revision-v1', '', '', '2018-07-09 04:08:24', '2018-07-09 04:08:24', '', 105, 'http://localhost/r-news/2018/07/09/105-revision-v1/', 0, 'revision', '', 0),
(186, 1, '2018-07-09 04:13:49', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-07-09 04:13:49', '0000-00-00 00:00:00', '', 0, 'http://localhost/r-news/?p=186', 0, 'post', '', 0),
(187, 1, '2018-07-09 04:24:41', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-07-09 04:24:41', '0000-00-00 00:00:00', '', 0, 'http://localhost/r-news/?p=187', 0, 'post', '', 0),
(188, 1, '2018-07-09 04:30:08', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-07-09 04:30:08', '0000-00-00 00:00:00', '', 0, 'http://localhost/r-news/?post_type=leadmagnet&p=188', 0, 'leadmagnet', '', 0),
(189, 1, '2018-07-09 04:30:27', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-07-09 04:30:27', '0000-00-00 00:00:00', '', 0, 'http://localhost/r-news/?p=189', 0, 'post', '', 0),
(190, 1, '2018-07-09 04:31:14', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-07-09 04:31:14', '0000-00-00 00:00:00', '', 0, 'http://localhost/r-news/?p=190', 0, 'post', '', 0),
(191, 1, '2018-07-09 04:31:38', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-07-09 04:31:38', '0000-00-00 00:00:00', '', 0, 'http://localhost/r-news/?post_type=leadmagnet&p=191', 0, 'leadmagnet', '', 0),
(192, 1, '2018-07-09 04:32:00', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-07-09 04:32:00', '0000-00-00 00:00:00', '', 0, 'http://localhost/r-news/?post_type=leadmagnet&p=192', 0, 'leadmagnet', '', 0),
(193, 1, '2018-07-09 04:32:20', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-07-09 04:32:20', '0000-00-00 00:00:00', '', 0, 'http://localhost/r-news/?p=193', 0, 'post', '', 0),
(195, 1, '2018-07-09 11:06:48', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-07-09 11:06:48', '0000-00-00 00:00:00', '', 0, 'http://localhost/r-news/?post_type=leadmagnet&p=195', 0, 'leadmagnet', '', 0),
(196, 1, '2018-07-09 11:08:41', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-07-09 11:08:41', '0000-00-00 00:00:00', '', 0, 'http://localhost/r-news/?post_type=leadmagnet&p=196', 0, 'leadmagnet', '', 0),
(197, 1, '2018-07-09 11:10:36', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-07-09 11:10:36', '0000-00-00 00:00:00', '', 0, 'http://localhost/r-news/?post_type=leadmagnet&p=197', 0, 'leadmagnet', '', 0),
(198, 1, '2018-07-09 11:10:37', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-07-09 11:10:37', '0000-00-00 00:00:00', '', 0, 'http://localhost/r-news/?post_type=leadmagnet&p=198', 0, 'leadmagnet', '', 0),
(199, 1, '2018-07-09 11:10:38', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-07-09 11:10:38', '0000-00-00 00:00:00', '', 0, 'http://localhost/r-news/?post_type=leadmagnet&p=199', 0, 'leadmagnet', '', 0),
(200, 1, '2018-07-09 11:14:04', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-07-09 11:14:04', '0000-00-00 00:00:00', '', 0, 'http://localhost/r-news/?p=200', 0, 'post', '', 0),
(201, 1, '2018-07-09 12:14:30', '2018-07-09 12:14:30', 'test aja yaaaaaaaaa. ini adalah car penggunaan leads magnet\r\n\r\n<!--more-->\r\n\r\n[leadmagnet id=135]\r\n\r\nOke deh...lead magnetnya ada di atas lho ya\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\nThanks\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;', 'test', '', 'inherit', 'closed', 'closed', '', '121-revision-v1', '', '', '2018-07-09 12:14:30', '2018-07-09 12:14:30', '', 121, 'http://localhost/r-news/2018/07/09/121-revision-v1/', 0, 'revision', '', 0),
(202, 1, '2018-07-09 12:22:12', '2018-07-09 12:22:12', 'test aja yaaaaaaaaa. ini adalah car penggunaan leads magnet\r\n\r\n<!--more-->\r\n\r\n[leadmagnet id=135]\r\n\r\n[leadmagnet id=137]\r\n\r\nOke deh...lead magnetnya ada di atas lho ya\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\nThanks\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;', 'test', '', 'inherit', 'closed', 'closed', '', '121-revision-v1', '', '', '2018-07-09 12:22:12', '2018-07-09 12:22:12', '', 121, 'http://localhost/r-news/2018/07/09/121-revision-v1/', 0, 'revision', '', 0),
(203, 1, '2018-07-09 12:22:35', '2018-07-09 12:22:35', 'test aja yaaaaaaaaa. ini adalah car penggunaan leads magnet\r\n\r\n<!--more-->\r\n\r\n[leadmagnet id=137]\r\n\r\nOke deh...lead magnetnya ada di atas lho ya\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\nThanks\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;', 'test', '', 'inherit', 'closed', 'closed', '', '121-revision-v1', '', '', '2018-07-09 12:22:35', '2018-07-09 12:22:35', '', 121, 'http://localhost/r-news/2018/07/09/121-revision-v1/', 0, 'revision', '', 0),
(204, 1, '2018-07-09 13:16:34', '2018-07-09 13:16:34', 'test aja yaaaaaaaaa. ini adalah car penggunaan leads magnet\r\n\r\n<!--more-->\r\n\r\n[leadmagnet id=135]\r\n\r\nOke deh...lead magnetnya ada di atas lho ya\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\nThanks\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;', 'test', '', 'inherit', 'closed', 'closed', '', '121-revision-v1', '', '', '2018-07-09 13:16:34', '2018-07-09 13:16:34', '', 121, 'http://localhost/r-news/2018/07/09/121-revision-v1/', 0, 'revision', '', 0),
(205, 1, '2018-07-09 16:31:44', '2018-07-09 16:31:44', '', 'test...related promo 2', '', 'publish', 'closed', 'closed', '', 'test-related-promo-2', '', '', '2018-07-09 16:34:03', '2018-07-09 16:34:03', '', 0, 'http://localhost/r-news/?post_type=relatedpromo&#038;p=205', 0, 'relatedpromo', '', 0),
(206, 1, '2018-07-09 16:32:17', '2018-07-09 16:32:17', '', 'related promo 3', '', 'publish', 'closed', 'closed', '', 'related-promo-3', '', '', '2018-07-10 23:13:03', '2018-07-10 23:13:03', '', 0, 'http://localhost/r-news/?post_type=relatedpromo&#038;p=206', 0, 'relatedpromo', '', 0),
(207, 1, '2018-07-09 16:33:05', '2018-07-09 16:33:05', '', 'test related promo 4', '', 'publish', 'closed', 'closed', '', 'test-related-promo-4', '', '', '2018-07-09 16:33:18', '2018-07-09 16:33:18', '', 0, 'http://localhost/r-news/?post_type=relatedpromo&#038;p=207', 0, 'relatedpromo', '', 0),
(208, 1, '2018-07-10 22:55:57', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-07-10 22:55:57', '0000-00-00 00:00:00', '', 0, 'http://localhost/r-news/?post_type=relatedpromo&p=208', 0, 'relatedpromo', '', 0),
(209, 1, '2018-07-10 22:57:04', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-07-10 22:57:04', '0000-00-00 00:00:00', '', 0, 'http://localhost/r-news/?post_type=relatedpromo&p=209', 0, 'relatedpromo', '', 0),
(210, 1, '2018-07-10 22:57:07', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-07-10 22:57:07', '0000-00-00 00:00:00', '', 0, 'http://localhost/r-news/?post_type=relatedpromo&p=210', 0, 'relatedpromo', '', 0),
(211, 1, '2018-07-10 22:57:27', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-07-10 22:57:27', '0000-00-00 00:00:00', '', 0, 'http://localhost/r-news/?post_type=relatedpromo&p=211', 0, 'relatedpromo', '', 0),
(212, 1, '2018-07-10 23:07:32', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-07-10 23:07:32', '0000-00-00 00:00:00', '', 0, 'http://localhost/r-news/?post_type=relatedpromo&p=212', 0, 'relatedpromo', '', 0),
(213, 1, '2018-07-10 23:07:35', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-07-10 23:07:35', '0000-00-00 00:00:00', '', 0, 'http://localhost/r-news/?post_type=relatedpromo&p=213', 0, 'relatedpromo', '', 0),
(214, 1, '2018-07-10 23:08:05', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-07-10 23:08:05', '0000-00-00 00:00:00', '', 0, 'http://localhost/r-news/?post_type=relatedpromo&p=214', 0, 'relatedpromo', '', 0),
(215, 1, '2018-07-10 23:08:31', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-07-10 23:08:31', '0000-00-00 00:00:00', '', 0, 'http://localhost/r-news/?post_type=relatedpromo&p=215', 0, 'relatedpromo', '', 0),
(216, 1, '2018-07-10 23:08:38', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-07-10 23:08:38', '0000-00-00 00:00:00', '', 0, 'http://localhost/r-news/?post_type=relatedpromo&p=216', 0, 'relatedpromo', '', 0),
(217, 1, '2018-07-10 23:08:41', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-07-10 23:08:41', '0000-00-00 00:00:00', '', 0, 'http://localhost/r-news/?post_type=relatedpromo&p=217', 0, 'relatedpromo', '', 0),
(218, 1, '2018-07-10 23:08:42', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-07-10 23:08:42', '0000-00-00 00:00:00', '', 0, 'http://localhost/r-news/?post_type=relatedpromo&p=218', 0, 'relatedpromo', '', 0),
(219, 1, '2018-07-10 23:08:43', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-07-10 23:08:43', '0000-00-00 00:00:00', '', 0, 'http://localhost/r-news/?post_type=relatedpromo&p=219', 0, 'relatedpromo', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE IF NOT EXISTS `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(4, 'Business', 'business', 0),
(5, 'Entrepreneurs', 'entrepreneurs', 0),
(6, 'Mindset', 'mindset', 0),
(7, 'Business Story', 'business-story', 0),
(8, 'Inspiration', 'inspiration', 0),
(9, 'Technology', 'technology', 0),
(10, 'Info', 'info', 0),
(11, 'Tips &amp; Trick', 'tips-trick', 0),
(12, '#WhatTheFacts', 'whatthefacts', 0),
(13, 'Video', 'video', 0),
(14, 'Infographic', 'infographic', 0),
(15, 'Main Menu', 'main-menu', 0),
(16, 'programming', 'programming', 0),
(17, 'coba-coba', 'coba-coba', 0),
(18, 'oracle', 'oracle', 0),
(19, 'database', 'database', 0),
(20, 'mysql', 'mysql', 0),
(21, 'computer', 'computer', 0),
(22, 'design', 'design', 0),
(23, 'hardware', 'hardware', 0),
(24, 'education', 'education', 0),
(25, 'technology', 'technology', 0),
(27, 'science', 'science', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(46, 15, 0),
(47, 15, 0),
(48, 15, 0),
(49, 15, 0),
(50, 15, 0),
(51, 15, 0),
(52, 15, 0),
(53, 15, 0),
(54, 15, 0),
(55, 15, 0),
(57, 15, 0),
(58, 15, 0),
(68, 4, 0),
(70, 7, 0),
(73, 4, 0),
(73, 10, 0),
(73, 16, 0),
(73, 17, 0),
(80, 16, 0),
(80, 17, 0),
(81, 16, 0),
(81, 17, 0),
(83, 8, 0),
(83, 10, 0),
(83, 14, 0),
(85, 11, 0),
(85, 12, 0),
(93, 5, 0),
(93, 8, 0),
(93, 10, 0),
(93, 14, 0),
(93, 21, 0),
(93, 22, 0),
(93, 23, 0),
(97, 7, 0),
(97, 9, 0),
(97, 11, 0),
(97, 18, 0),
(97, 19, 0),
(97, 20, 0),
(100, 8, 0),
(100, 9, 0),
(100, 11, 0),
(100, 18, 0),
(100, 19, 0),
(100, 20, 0),
(103, 18, 0),
(103, 19, 0),
(103, 20, 0),
(104, 18, 0),
(104, 19, 0),
(104, 20, 0),
(105, 6, 0),
(105, 8, 0),
(105, 9, 0),
(105, 11, 0),
(105, 18, 0),
(105, 19, 0),
(105, 21, 0),
(105, 24, 0),
(106, 18, 0),
(108, 6, 0),
(108, 9, 0),
(108, 10, 0),
(108, 11, 0),
(108, 14, 0),
(108, 19, 0),
(108, 24, 0),
(110, 18, 0),
(110, 19, 0),
(110, 20, 0),
(110, 24, 0),
(110, 25, 0),
(110, 27, 0),
(111, 18, 0),
(111, 19, 0),
(111, 20, 0),
(111, 24, 0),
(111, 25, 0),
(111, 27, 0),
(118, 19, 0),
(118, 24, 0),
(119, 18, 0),
(119, 19, 0),
(119, 21, 0),
(119, 24, 0),
(120, 18, 0),
(120, 19, 0),
(120, 21, 0),
(120, 24, 0),
(121, 4, 0),
(124, 1, 0),
(125, 1, 0),
(135, 4, 0),
(137, 12, 0),
(142, 19, 0),
(142, 24, 0),
(143, 19, 0),
(143, 24, 0),
(144, 18, 0),
(144, 19, 0),
(144, 21, 0),
(144, 24, 0),
(145, 18, 0),
(145, 19, 0),
(145, 20, 0),
(146, 18, 0),
(146, 19, 0),
(146, 20, 0),
(147, 21, 0),
(147, 22, 0),
(147, 23, 0),
(150, 16, 0),
(150, 17, 0),
(163, 4, 0),
(183, 18, 0),
(183, 19, 0),
(183, 21, 0),
(183, 24, 0),
(184, 18, 0),
(184, 19, 0),
(184, 21, 0),
(184, 24, 0),
(185, 18, 0),
(185, 19, 0),
(185, 21, 0),
(185, 24, 0),
(205, 12, 0),
(206, 4, 0),
(207, 12, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(4, 4, 'category', '', 0, 6),
(5, 5, 'category', '', 0, 1),
(6, 6, 'category', '', 0, 2),
(7, 7, 'category', '', 0, 2),
(8, 8, 'category', '', 0, 4),
(9, 9, 'category', '', 0, 4),
(10, 10, 'category', '', 0, 4),
(11, 11, 'category', '', 0, 5),
(12, 12, 'category', '', 0, 4),
(13, 13, 'category', '', 0, 0),
(14, 14, 'category', '', 0, 3),
(15, 15, 'nav_menu', '', 0, 12),
(16, 16, 'post_tag', '', 0, 1),
(17, 17, 'post_tag', '', 0, 1),
(18, 18, 'post_tag', '', 0, 3),
(19, 19, 'post_tag', '', 0, 4),
(20, 20, 'post_tag', '', 0, 2),
(21, 21, 'post_tag', '', 0, 2),
(22, 22, 'post_tag', '', 0, 1),
(23, 23, 'post_tag', '', 0, 1),
(24, 24, 'post_tag', '', 0, 2),
(25, 25, 'post_tag', '', 0, 0),
(27, 27, 'post_tag', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', 'Sandy'),
(3, 1, 'last_name', 'Haryono'),
(4, 1, 'description', 'Biographical Information'),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy'),
(15, 1, 'show_welcome_panel', '1'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '186'),
(19, 1, 'wp_media_library_mode', 'list'),
(21, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(22, 1, 'metaboxhidden_nav-menus', 'a:11:{i:0;s:22:"add-post-type-business";i:1;s:26:"add-post-type-enterpreneur";i:2;s:21:"add-post-type-mindset";i:3;s:27:"add-post-type-businessstory";i:4;s:25:"add-post-type-inspiration";i:5;s:24:"add-post-type-technology";i:6;s:18:"add-post-type-info";i:7;s:26:"add-post-type-tipsandtrick";i:8;s:19:"add-post-type-video";i:9;s:25:"add-post-type-infographic";i:10;s:12:"add-post_tag";}'),
(30, 1, 'wp_user-settings', 'mfold=o&libraryContent=browse&post_dfw=off&editor=html&hidetb=1&editor_plain_text_paste_warning=1'),
(31, 1, 'wp_user-settings-time', '1531142465'),
(32, 2, 'nickname', 'sandy'),
(33, 2, 'first_name', 'Sandy'),
(34, 2, 'last_name', 'H'),
(35, 2, 'description', 'Biographical Information'),
(36, 2, 'rich_editing', 'true'),
(37, 2, 'syntax_highlighting', 'true'),
(38, 2, 'comment_shortcuts', 'false'),
(39, 2, 'admin_color', 'fresh'),
(40, 2, 'use_ssl', '0'),
(41, 2, 'show_admin_bar_front', 'true'),
(42, 2, 'locale', ''),
(43, 2, 'wp_capabilities', 'a:1:{s:6:"editor";b:1;}'),
(44, 2, 'wp_user_level', '7'),
(45, 2, 'dismissed_wp_pointers', 'wp496_privacy'),
(53, 1, 'closedpostboxes_business', 'a:0:{}'),
(54, 1, 'metaboxhidden_business', 'a:1:{i:0;s:7:"slugdiv";}'),
(55, 1, 'closedpostboxes_info', 'a:0:{}'),
(56, 1, 'metaboxhidden_info', 'a:1:{i:0;s:7:"slugdiv";}'),
(57, 3, 'nickname', 'modja'),
(58, 3, 'first_name', 'Endra'),
(59, 3, 'last_name', 'Indriyanto'),
(60, 3, 'description', ''),
(61, 3, 'rich_editing', 'true'),
(62, 3, 'syntax_highlighting', 'true'),
(63, 3, 'comment_shortcuts', 'false'),
(64, 3, 'admin_color', 'fresh'),
(65, 3, 'use_ssl', '0'),
(66, 3, 'show_admin_bar_front', 'true'),
(67, 3, 'locale', ''),
(68, 3, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(69, 3, 'wp_user_level', '10'),
(70, 3, 'dismissed_wp_pointers', 'wp496_privacy'),
(71, 3, 'session_tokens', 'a:1:{s:64:"1f425bb70f7c9b78fd7d3ed3ea7a8d94a7fb6bc6ea79450d68dd04d5989a0668";a:4:{s:10:"expiration";i:1530315978;s:2:"ip";s:3:"::1";s:2:"ua";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36";s:5:"login";i:1530143178;}}'),
(72, 3, 'wp_dashboard_quick_press_last_post_id', '45'),
(73, 3, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(74, 3, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:"add-post_tag";}'),
(75, 3, 'nav_menu_recently_edited', '15'),
(76, 1, 'nav_menu_recently_edited', '15'),
(77, 1, 'closedpostboxes_post', 'a:0:{}'),
(78, 1, 'metaboxhidden_post', 'a:7:{i:0;s:11:"postexcerpt";i:1;s:13:"trackbacksdiv";i:2;s:10:"postcustom";i:3;s:16:"commentstatusdiv";i:4;s:11:"commentsdiv";i:5;s:7:"slugdiv";i:6;s:9:"authordiv";}'),
(79, 2, 'wp_user-settings', 'libraryContent=browse'),
(80, 2, 'wp_user-settings-time', '1530489528'),
(81, 2, 'wp_dashboard_quick_press_last_post_id', '112'),
(82, 1, 'session_tokens', 'a:3:{s:64:"fc8a915f02fe724fb89a03c0d7644aff2600e3863f590f91c455d364637d1a43";a:4:{s:10:"expiration";i:1531306822;s:2:"ip";s:3:"::1";s:2:"ua";s:104:"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36";s:5:"login";i:1531134022;}s:64:"3badfb12defaf80afad1b3815767d283df285bab10ba5081a54460c1e4baad9f";a:4:{s:10:"expiration";i:1531324464;s:2:"ip";s:3:"::1";s:2:"ua";s:104:"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36";s:5:"login";i:1531151664;}s:64:"abdfcfd480d5aa43961c3d02be19378762ccfa8f143b57f940e8b567d437ce1d";a:4:{s:10:"expiration";i:1531437530;s:2:"ip";s:3:"::1";s:2:"ua";s:104:"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36";s:5:"login";i:1531264730;}}'),
(83, 1, 'closedpostboxes_leadmagnet', 'a:3:{i:0;s:19:"simpletags-settings";i:1;s:16:"heateor_ffc_meta";i:2;s:16:"heateor_sss_meta";}'),
(84, 1, 'metaboxhidden_leadmagnet', 'a:1:{i:0;s:7:"slugdiv";}'),
(85, 1, 'meta-box-order_relatedpromo', 'a:3:{s:4:"side";s:41:"submitdiv,categorydiv,simpletags-settings";s:6:"normal";s:50:"postimagediv,layers_relatedpromo_sectionid,slugdiv";s:8:"advanced";s:33:"heateor_ffc_meta,heateor_sss_meta";}'),
(86, 1, 'screen_layout_relatedpromo', '2');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE IF NOT EXISTS `wp_users` (
  `ID` bigint(20) unsigned NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BS8Wlr/CWoLhpn4bxgCoI95rQfeU1b0', 'admin', 'sandyharyono@gmail.com', '', '2018-06-08 14:54:29', '', 0, 'admin'),
(2, 'sandy', '$P$BTOvQPiJEz9zsywombutw0g707qd6g.', 'sandy', 'sandy@onewaymail.com', '', '2018-06-24 03:39:30', '1529811571:$P$BzVn7qXjwg5jSpKbwO0TYcQLq49qJt/', 0, 'Sandy H'),
(3, 'modja', '$P$B9UfU6OBPoWNjWQaDus.xLqdBy7.a5.', 'modja', 'modja@wakwaw.com', 'https://wakwaw.com', '2018-06-26 02:43:31', '1529981012:$P$BB.v3RQhUItIvW9fv1T3sFZ.cSNcq81', 0, 'Endra Indriyanto');

-- --------------------------------------------------------

--
-- Table structure for table `wp_xyz_ihs_short_code`
--

CREATE TABLE IF NOT EXISTS `wp_xyz_ihs_short_code` (
  `id` int(11) NOT NULL,
  `title` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `short_code` varchar(2000) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `wp_xyz_ihs_short_code`
--

INSERT INTO `wp_xyz_ihs_short_code` (`id`, `title`, `content`, `short_code`, `status`) VALUES
(1, 'test', 'test', '[xyz-ihs snippet="test"]', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_cbxwpbookmark`
--
ALTER TABLE `wp_cbxwpbookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_cbxwpbookmarkcat`
--
ALTER TABLE `wp_cbxwpbookmarkcat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_mailtarget_forms`
--
ALTER TABLE `wp_mailtarget_forms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Indexes for table `wp_xyz_ihs_short_code`
--
ALTER TABLE `wp_xyz_ihs_short_code`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_cbxwpbookmark`
--
ALTER TABLE `wp_cbxwpbookmark`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_cbxwpbookmarkcat`
--
ALTER TABLE `wp_cbxwpbookmarkcat`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_mailtarget_forms`
--
ALTER TABLE `wp_mailtarget_forms`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=847;
--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=662;
--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=220;
--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=87;
--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `wp_xyz_ihs_short_code`
--
ALTER TABLE `wp_xyz_ihs_short_code`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
