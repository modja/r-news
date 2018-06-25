-- phpMyAdmin SQL Dump
-- version 4.4.7
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 25, 2018 at 11:32 PM
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-06-08 14:54:30', '2018-06-08 14:54:30', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href="https://gravatar.com">Gravatar</a>.', 0, '1', '', '', 0, 0);

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
-- Table structure for table `wp_options`
--

CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB AUTO_INCREMENT=228 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/ralali', 'yes'),
(2, 'home', 'http://localhost/ralali', 'yes'),
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
(29, 'rewrite_rules', 'a:199:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:34:"business/.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:44:"business/.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:64:"business/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"business/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"business/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:40:"business/.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:23:"business/(.+?)/embed/?$";s:41:"index.php?business=$matches[1]&embed=true";s:27:"business/(.+?)/trackback/?$";s:35:"index.php?business=$matches[1]&tb=1";s:35:"business/(.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?business=$matches[1]&paged=$matches[2]";s:42:"business/(.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?business=$matches[1]&cpage=$matches[2]";s:31:"business/(.+?)(?:/([0-9]+))?/?$";s:47:"index.php?business=$matches[1]&page=$matches[2]";s:38:"enterpreneur/.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:48:"enterpreneur/.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:68:"enterpreneur/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:63:"enterpreneur/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:63:"enterpreneur/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:44:"enterpreneur/.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:27:"enterpreneur/(.+?)/embed/?$";s:45:"index.php?enterpreneur=$matches[1]&embed=true";s:31:"enterpreneur/(.+?)/trackback/?$";s:39:"index.php?enterpreneur=$matches[1]&tb=1";s:39:"enterpreneur/(.+?)/page/?([0-9]{1,})/?$";s:52:"index.php?enterpreneur=$matches[1]&paged=$matches[2]";s:46:"enterpreneur/(.+?)/comment-page-([0-9]{1,})/?$";s:52:"index.php?enterpreneur=$matches[1]&cpage=$matches[2]";s:35:"enterpreneur/(.+?)(?:/([0-9]+))?/?$";s:51:"index.php?enterpreneur=$matches[1]&page=$matches[2]";s:33:"mindset/.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:43:"mindset/.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:63:"mindset/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:58:"mindset/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:58:"mindset/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:39:"mindset/.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:22:"mindset/(.+?)/embed/?$";s:40:"index.php?mindset=$matches[1]&embed=true";s:26:"mindset/(.+?)/trackback/?$";s:34:"index.php?mindset=$matches[1]&tb=1";s:34:"mindset/(.+?)/page/?([0-9]{1,})/?$";s:47:"index.php?mindset=$matches[1]&paged=$matches[2]";s:41:"mindset/(.+?)/comment-page-([0-9]{1,})/?$";s:47:"index.php?mindset=$matches[1]&cpage=$matches[2]";s:30:"mindset/(.+?)(?:/([0-9]+))?/?$";s:46:"index.php?mindset=$matches[1]&page=$matches[2]";s:39:"businessstory/.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:49:"businessstory/.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:69:"businessstory/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:64:"businessstory/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:64:"businessstory/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:45:"businessstory/.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:28:"businessstory/(.+?)/embed/?$";s:46:"index.php?businessstory=$matches[1]&embed=true";s:32:"businessstory/(.+?)/trackback/?$";s:40:"index.php?businessstory=$matches[1]&tb=1";s:40:"businessstory/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?businessstory=$matches[1]&paged=$matches[2]";s:47:"businessstory/(.+?)/comment-page-([0-9]{1,})/?$";s:53:"index.php?businessstory=$matches[1]&cpage=$matches[2]";s:36:"businessstory/(.+?)(?:/([0-9]+))?/?$";s:52:"index.php?businessstory=$matches[1]&page=$matches[2]";s:37:"inspiration/.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:47:"inspiration/.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:67:"inspiration/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:62:"inspiration/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:62:"inspiration/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:43:"inspiration/.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:26:"inspiration/(.+?)/embed/?$";s:44:"index.php?inspiration=$matches[1]&embed=true";s:30:"inspiration/(.+?)/trackback/?$";s:38:"index.php?inspiration=$matches[1]&tb=1";s:38:"inspiration/(.+?)/page/?([0-9]{1,})/?$";s:51:"index.php?inspiration=$matches[1]&paged=$matches[2]";s:45:"inspiration/(.+?)/comment-page-([0-9]{1,})/?$";s:51:"index.php?inspiration=$matches[1]&cpage=$matches[2]";s:34:"inspiration/(.+?)(?:/([0-9]+))?/?$";s:50:"index.php?inspiration=$matches[1]&page=$matches[2]";s:36:"technology/.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:46:"technology/.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:66:"technology/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:61:"technology/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:61:"technology/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:42:"technology/.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:25:"technology/(.+?)/embed/?$";s:43:"index.php?technology=$matches[1]&embed=true";s:29:"technology/(.+?)/trackback/?$";s:37:"index.php?technology=$matches[1]&tb=1";s:37:"technology/(.+?)/page/?([0-9]{1,})/?$";s:50:"index.php?technology=$matches[1]&paged=$matches[2]";s:44:"technology/(.+?)/comment-page-([0-9]{1,})/?$";s:50:"index.php?technology=$matches[1]&cpage=$matches[2]";s:33:"technology/(.+?)(?:/([0-9]+))?/?$";s:49:"index.php?technology=$matches[1]&page=$matches[2]";s:30:"info/.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:40:"info/.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:60:"info/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:55:"info/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:55:"info/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:36:"info/.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:19:"info/(.+?)/embed/?$";s:37:"index.php?info=$matches[1]&embed=true";s:23:"info/(.+?)/trackback/?$";s:31:"index.php?info=$matches[1]&tb=1";s:31:"info/(.+?)/page/?([0-9]{1,})/?$";s:44:"index.php?info=$matches[1]&paged=$matches[2]";s:38:"info/(.+?)/comment-page-([0-9]{1,})/?$";s:44:"index.php?info=$matches[1]&cpage=$matches[2]";s:27:"info/(.+?)(?:/([0-9]+))?/?$";s:43:"index.php?info=$matches[1]&page=$matches[2]";s:38:"tipsandtrick/.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:48:"tipsandtrick/.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:68:"tipsandtrick/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:63:"tipsandtrick/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:63:"tipsandtrick/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:44:"tipsandtrick/.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:27:"tipsandtrick/(.+?)/embed/?$";s:45:"index.php?tipsandtrick=$matches[1]&embed=true";s:31:"tipsandtrick/(.+?)/trackback/?$";s:39:"index.php?tipsandtrick=$matches[1]&tb=1";s:39:"tipsandtrick/(.+?)/page/?([0-9]{1,})/?$";s:52:"index.php?tipsandtrick=$matches[1]&paged=$matches[2]";s:46:"tipsandtrick/(.+?)/comment-page-([0-9]{1,})/?$";s:52:"index.php?tipsandtrick=$matches[1]&cpage=$matches[2]";s:35:"tipsandtrick/(.+?)(?:/([0-9]+))?/?$";s:51:"index.php?tipsandtrick=$matches[1]&page=$matches[2]";s:31:"video/.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:41:"video/.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:61:"video/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:56:"video/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:56:"video/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:37:"video/.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:20:"video/(.+?)/embed/?$";s:38:"index.php?video=$matches[1]&embed=true";s:24:"video/(.+?)/trackback/?$";s:32:"index.php?video=$matches[1]&tb=1";s:32:"video/(.+?)/page/?([0-9]{1,})/?$";s:45:"index.php?video=$matches[1]&paged=$matches[2]";s:39:"video/(.+?)/comment-page-([0-9]{1,})/?$";s:45:"index.php?video=$matches[1]&cpage=$matches[2]";s:28:"video/(.+?)(?:/([0-9]+))?/?$";s:44:"index.php?video=$matches[1]&page=$matches[2]";s:37:"infographic/.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:47:"infographic/.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:67:"infographic/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:62:"infographic/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:62:"infographic/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:43:"infographic/.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:26:"infographic/(.+?)/embed/?$";s:44:"index.php?infographic=$matches[1]&embed=true";s:30:"infographic/(.+?)/trackback/?$";s:38:"index.php?infographic=$matches[1]&tb=1";s:38:"infographic/(.+?)/page/?([0-9]{1,})/?$";s:51:"index.php?infographic=$matches[1]&paged=$matches[2]";s:45:"infographic/(.+?)/comment-page-([0-9]{1,})/?$";s:51:"index.php?infographic=$matches[1]&cpage=$matches[2]";s:34:"infographic/(.+?)(?:/([0-9]+))?/?$";s:50:"index.php?infographic=$matches[1]&page=$matches[2]";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:58:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:68:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:88:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:64:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:53:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$";s:91:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:77:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:65:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:61:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:47:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:57:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:77:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:53:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:51:"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:38:"([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:0:{}', 'yes'),
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
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
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
(93, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(94, 'fresh_site', '0', 'yes'),
(95, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(100, 'sidebars_widgets', 'a:3:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:13:"array_version";i:3;}', 'yes'),
(101, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'widget_media_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(105, 'widget_media_gallery', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(106, 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(107, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(108, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(109, 'widget_custom_html', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(110, 'cron', 'a:6:{i:1529945672;a:1:{s:34:"wp_privacy_delete_old_export_files";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"hourly";s:4:"args";a:0:{}s:8:"interval";i:3600;}}}i:1529972996;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1529981672;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1530024975;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1530024976;a:1:{s:25:"delete_expired_transients";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(111, 'theme_mods_twentyseventeen', 'a:2:{s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1529379393;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes'),
(115, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.9.6.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.9.6.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.9.6-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.9.6-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.9.6";s:7:"version";s:5:"4.9.6";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1529938884;s:15:"version_checked";s:5:"4.9.6";s:12:"translations";a:0:{}}', 'no'),
(120, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1529938888;s:7:"checked";a:4:{s:6:"r-news";s:0:"";s:13:"twentyfifteen";s:3:"2.0";s:15:"twentyseventeen";s:3:"1.6";s:13:"twentysixteen";s:3:"1.5";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}', 'no'),
(124, 'can_compress_scripts', '0', 'no'),
(140, 'recently_activated', 'a:0:{}', 'yes'),
(159, 'category_children', 'a:0:{}', 'yes'),
(176, 'current_theme', 'r-news', 'yes'),
(177, 'theme_mods_r-news', 'a:3:{i:0;b:0;s:18:"nav_menu_locations";a:0:{}s:18:"custom_css_post_id";i:-1;}', 'yes'),
(178, 'theme_switched', '', 'yes'),
(206, '_site_transient_timeout_browser_fcf9f700615c94559ffe3206a839a5f2', '1530414137', 'no'),
(207, '_site_transient_browser_fcf9f700615c94559ffe3206a839a5f2', 'a:10:{s:4:"name";s:6:"Chrome";s:7:"version";s:12:"67.0.3396.87";s:8:"platform";s:5:"Linux";s:10:"update_url";s:29:"https://www.google.com/chrome";s:7:"img_src";s:43:"http://s.w.org/images/browsers/chrome.png?1";s:11:"img_src_ssl";s:44:"https://s.w.org/images/browsers/chrome.png?1";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;s:6:"mobile";b:0;}', 'no'),
(224, '_site_transient_timeout_theme_roots', '1529940686', 'no'),
(225, '_site_transient_theme_roots', 'a:4:{s:6:"r-news";s:7:"/themes";s:13:"twentyfifteen";s:7:"/themes";s:15:"twentyseventeen";s:7:"/themes";s:13:"twentysixteen";s:7:"/themes";}', 'no'),
(226, '_site_transient_update_plugins', 'O:8:"stdClass":5:{s:12:"last_checked";i:1529938890;s:7:"checked";a:2:{s:19:"akismet/akismet.php";s:5:"4.0.3";s:9:"hello.php";s:3:"1.7";}s:8:"response";a:1:{s:19:"akismet/akismet.php";O:8:"stdClass":12:{s:2:"id";s:21:"w.org/plugins/akismet";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:5:"4.0.8";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/akismet.4.0.8.zip";s:5:"icons";a:2:{s:2:"2x";s:59:"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272";s:2:"1x";s:59:"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272";}s:7:"banners";a:1:{s:2:"1x";s:61:"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904";}s:11:"banners_rtl";a:0:{}s:6:"tested";s:5:"4.9.6";s:12:"requires_php";b:0;s:13:"compatibility";O:8:"stdClass":0:{}}}s:12:"translations";a:0:{}s:9:"no_update";a:1:{s:9:"hello.php";O:8:"stdClass":9:{s:2:"id";s:25:"w.org/plugins/hello-dolly";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:3:"1.6";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:58:"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip";s:5:"icons";a:2:{s:2:"2x";s:63:"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907";s:2:"1x";s:63:"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907";}s:7:"banners";a:1:{s:2:"1x";s:65:"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342";}s:11:"banners_rtl";a:0:{}}}}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB AUTO_INCREMENT=159 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
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
(16, 10, '_menu_item_type', 'post_type'),
(17, 10, '_menu_item_menu_item_parent', '0'),
(18, 10, '_menu_item_object_id', '2'),
(19, 10, '_menu_item_object', 'page'),
(20, 10, '_menu_item_target', ''),
(21, 10, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(22, 10, '_menu_item_xfn', ''),
(23, 10, '_menu_item_url', ''),
(24, 10, '_menu_item_orphaned', '1529380271'),
(25, 12, '_edit_last', '1'),
(26, 12, '_edit_lock', '1529808583:1'),
(27, 12, '_wp_trash_meta_status', 'publish'),
(28, 12, '_wp_trash_meta_time', '1529808731'),
(29, 12, '_wp_desired_post_slug', 'test'),
(30, 1, '_edit_lock', '1529808616:1'),
(31, 15, '_edit_last', '1'),
(32, 15, '_edit_lock', '1529943082:1'),
(33, 16, '_edit_last', '1'),
(34, 16, '_edit_lock', '1529943098:1'),
(35, 3, '_wp_trash_meta_status', 'draft'),
(36, 3, '_wp_trash_meta_time', '1529809316'),
(37, 3, '_wp_desired_post_slug', 'privacy-policy'),
(38, 2, '_wp_trash_meta_status', 'publish'),
(39, 2, '_wp_trash_meta_time', '1529809316'),
(40, 2, '_wp_desired_post_slug', 'sample-page'),
(41, 20, '_edit_lock', '1529811454:2'),
(42, 20, '_edit_last', '2'),
(43, 20, '_wp_trash_meta_status', 'publish'),
(44, 20, '_wp_trash_meta_time', '1529811619'),
(45, 20, '_wp_desired_post_slug', 'test'),
(46, 26, '_edit_lock', '1529813487:2'),
(47, 28, '_edit_lock', '1529943027:1'),
(48, 28, '_edit_last', '1'),
(49, 29, '_edit_lock', '1529940710:1'),
(50, 31, '_edit_lock', '1529940750:1'),
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
(158, 39, '_edit_lock', '1529944295:1');

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
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-06-08 14:54:30', '2018-06-08 14:54:30', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2018-06-08 14:54:30', '2018-06-08 14:54:30', '', 0, 'http://localhost/ralali/?p=1', 0, 'post', '', 1),
(2, 1, '2018-06-08 14:54:30', '2018-06-08 14:54:30', 'This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin'' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://localhost/ralali/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'trash', 'closed', 'open', '', 'sample-page__trashed', '', '', '2018-06-24 03:01:56', '2018-06-24 03:01:56', '', 0, 'http://localhost/ralali/?page_id=2', 0, 'page', '', 0),
(3, 1, '2018-06-08 14:54:30', '2018-06-08 14:54:30', '<h2>Who we are</h2><p>Our website address is: http://localhost/ralali.</p><h2>What personal data we collect and why we collect it</h2><h3>Comments</h3><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><h3>Media</h3><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><h3>Contact forms</h3><h3>Cookies</h3><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><p>If you have an account and you log in to this site, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><h3>Embedded content from other websites</h3><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracing your interaction with the embedded content if you have an account and are logged in to that website.</p><h3>Analytics</h3><h2>Who we share your data with</h2><h2>How long we retain your data</h2><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><h2>What rights you have over your data</h2><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><h2>Where we send your data</h2><p>Visitor comments may be checked through an automated spam detection service.</p><h2>Your contact information</h2><h2>Additional information</h2><h3>How we protect your data</h3><h3>What data breach procedures we have in place</h3><h3>What third parties we receive data from</h3><h3>What automated decision making and/or profiling we do with user data</h3><h3>Industry regulatory disclosure requirements</h3>', 'Privacy Policy', '', 'trash', 'closed', 'open', '', 'privacy-policy__trashed', '', '', '2018-06-24 03:01:56', '2018-06-24 03:01:56', '', 0, 'http://localhost/ralali/?page_id=3', 0, 'page', '', 0),
(6, 1, '2018-06-17 01:38:11', '2018-06-17 01:38:11', '', 'tes info graphic', '', 'publish', 'closed', 'closed', '', 'tes-info-graphic', '', '', '2018-06-17 01:38:11', '2018-06-17 01:38:11', '', 0, 'http://localhost/ralali/?post_type=infographic&#038;p=6', 0, 'infographic', '', 0),
(7, 1, '2018-06-17 01:38:26', '2018-06-17 01:38:26', '', 'sandy', '', 'publish', 'closed', 'closed', '', 'sandy', '', '', '2018-06-25 16:15:28', '2018-06-25 16:15:28', '', 0, 'http://localhost/ralali/?post_type=infographic&#038;p=7', 0, 'infographic', '', 0),
(9, 1, '2018-06-19 03:51:10', '0000-00-00 00:00:00', '', 'Home', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-06-19 03:51:10', '0000-00-00 00:00:00', '', 0, 'http://localhost/ralali/?p=9', 1, 'nav_menu_item', '', 0),
(10, 1, '2018-06-19 03:51:10', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-06-19 03:51:10', '0000-00-00 00:00:00', '', 0, 'http://localhost/ralali/?p=10', 1, 'nav_menu_item', '', 0),
(11, 1, '2018-06-24 02:51:35', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-06-24 02:51:35', '0000-00-00 00:00:00', '', 0, 'http://localhost/ralali/?post_type=mindset&p=11', 0, 'mindset', '', 0),
(12, 1, '2018-06-24 02:51:49', '2018-06-24 02:51:49', '', 'test', '', 'trash', 'closed', 'closed', '', 'test__trashed', '', '', '2018-06-24 02:52:11', '2018-06-24 02:52:11', '', 0, 'http://localhost/ralali/?post_type=businessstory&#038;p=12', 0, 'businessstory', '', 0),
(13, 1, '2018-06-24 02:52:48', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-06-24 02:52:48', '0000-00-00 00:00:00', '', 0, 'http://localhost/ralali/?post_type=mindset&p=13', 0, 'mindset', '', 0),
(14, 1, '2018-06-24 02:54:49', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-06-24 02:54:49', '0000-00-00 00:00:00', '', 0, 'http://localhost/ralali/?post_type=business&p=14', 0, 'business', '', 0),
(15, 1, '2018-06-24 02:55:22', '2018-06-24 02:55:22', 'test', 'test business story', '', 'publish', 'closed', 'closed', '', 'test-business-story', '', '', '2018-06-25 16:13:42', '2018-06-25 16:13:42', '', 0, 'http://localhost/ralali/?post_type=businessstory&#038;p=15', 0, 'businessstory', '', 0),
(16, 1, '2018-06-24 03:00:54', '2018-06-24 03:00:54', 'asddsadsa', 'inspiration 1', '', 'publish', 'closed', 'closed', '', 'inspiration-1', '', '', '2018-06-25 16:13:57', '2018-06-25 16:13:57', '', 0, 'http://localhost/ralali/?post_type=inspiration&#038;p=16', 0, 'inspiration', '', 0),
(17, 1, '2018-06-24 03:01:56', '2018-06-24 03:01:56', '<h2>Who we are</h2><p>Our website address is: http://localhost/ralali.</p><h2>What personal data we collect and why we collect it</h2><h3>Comments</h3><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><h3>Media</h3><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><h3>Contact forms</h3><h3>Cookies</h3><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><p>If you have an account and you log in to this site, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><h3>Embedded content from other websites</h3><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracing your interaction with the embedded content if you have an account and are logged in to that website.</p><h3>Analytics</h3><h2>Who we share your data with</h2><h2>How long we retain your data</h2><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><h2>What rights you have over your data</h2><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><h2>Where we send your data</h2><p>Visitor comments may be checked through an automated spam detection service.</p><h2>Your contact information</h2><h2>Additional information</h2><h3>How we protect your data</h3><h3>What data breach procedures we have in place</h3><h3>What third parties we receive data from</h3><h3>What automated decision making and/or profiling we do with user data</h3><h3>Industry regulatory disclosure requirements</h3>', 'Privacy Policy', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2018-06-24 03:01:56', '2018-06-24 03:01:56', '', 3, 'http://localhost/ralali/2018/06/24/3-revision-v1/', 0, 'revision', '', 0),
(18, 1, '2018-06-24 03:01:56', '2018-06-24 03:01:56', 'This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin'' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://localhost/ralali/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-06-24 03:01:56', '2018-06-24 03:01:56', '', 2, 'http://localhost/ralali/2018/06/24/2-revision-v1/', 0, 'revision', '', 0),
(19, 1, '2018-06-24 03:02:17', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-06-24 03:02:17', '0000-00-00 00:00:00', '', 0, 'http://localhost/ralali/?p=19', 0, 'post', '', 0),
(20, 2, '2018-06-24 03:39:55', '2018-06-24 03:39:55', 'test', 'test', '', 'trash', 'closed', 'closed', '', 'test__trashed', '', '', '2018-06-24 03:40:19', '2018-06-24 03:40:19', '', 0, 'http://localhost/ralali/?page_id=20', 0, 'page', '', 0),
(21, 2, '2018-06-24 03:39:55', '2018-06-24 03:39:55', 'test', 'test', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2018-06-24 03:39:55', '2018-06-24 03:39:55', '', 20, 'http://localhost/ralali/2018/06/24/20-revision-v1/', 0, 'revision', '', 0),
(22, 2, '2018-06-24 03:58:01', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-06-24 03:58:01', '0000-00-00 00:00:00', '', 0, 'http://localhost/ralali/?post_type=enterpreneur&p=22', 0, 'enterpreneur', '', 0),
(23, 2, '2018-06-24 04:02:14', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-06-24 04:02:14', '0000-00-00 00:00:00', '', 0, 'http://localhost/ralali/?post_type=info&p=23', 0, 'info', '', 0),
(24, 2, '2018-06-24 04:10:20', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-06-24 04:10:20', '0000-00-00 00:00:00', '', 0, 'http://localhost/ralali/?post_type=mindset&p=24', 0, 'mindset', '', 0),
(25, 2, '2018-06-24 04:10:31', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-06-24 04:10:31', '0000-00-00 00:00:00', '', 0, 'http://localhost/ralali/?post_type=enterpreneur&p=25', 0, 'enterpreneur', '', 0),
(26, 2, '2018-06-24 04:10:41', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-06-24 04:10:41', '0000-00-00 00:00:00', '', 0, 'http://localhost/ralali/?post_type=enterpreneur&p=26', 0, 'enterpreneur', '', 0),
(27, 2, '2018-06-24 04:23:12', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-06-24 04:23:12', '0000-00-00 00:00:00', '', 0, 'http://localhost/ralali/?post_type=enterpreneur&p=27', 0, 'enterpreneur', '', 0),
(28, 1, '2018-06-25 15:09:09', '2018-06-25 15:09:09', 'test', 'Business 1', '', 'publish', 'closed', 'closed', '', 'business-1', '', '', '2018-06-25 15:53:17', '2018-06-25 15:53:17', '', 0, 'http://localhost/ralali/?post_type=business&#038;p=28', 0, 'business', '', 0),
(29, 1, '2018-06-25 15:26:39', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-06-25 15:26:39', '0000-00-00 00:00:00', '', 0, 'http://localhost/ralali/?post_type=business&p=29', 0, 'business', '', 0),
(30, 1, '2018-06-25 15:31:52', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-06-25 15:31:52', '0000-00-00 00:00:00', '', 0, 'http://localhost/ralali/?post_type=business&p=30', 0, 'business', '', 0),
(31, 1, '2018-06-25 15:31:59', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-06-25 15:31:59', '0000-00-00 00:00:00', '', 0, 'http://localhost/ralali/?post_type=business&p=31', 0, 'business', '', 0),
(32, 1, '2018-06-25 15:35:38', '2018-06-25 15:35:38', '', 'qweqweqew', '', 'publish', 'closed', 'closed', '', 'qweqweqew', '', '', '2018-06-25 15:45:20', '2018-06-25 15:45:20', '', 0, 'http://localhost/ralali/?post_type=business&#038;p=32', 0, 'business', '', 0),
(33, 1, '2018-06-25 16:13:06', '2018-06-25 16:13:06', 'sddsdsasaddsa', 'tessss', '', 'publish', 'closed', 'closed', '', 'tessss', '', '', '2018-06-25 16:13:11', '2018-06-25 16:13:11', '', 0, 'http://localhost/ralali/?post_type=enterpreneur&#038;p=33', 0, 'enterpreneur', '', 0),
(34, 1, '2018-06-25 16:13:27', '2018-06-25 16:13:27', 'asddsadasads', 'asddsasadsad', '', 'publish', 'closed', 'closed', '', 'asddsasadsad', '', '', '2018-06-25 16:13:31', '2018-06-25 16:13:31', '', 0, 'http://localhost/ralali/?post_type=mindset&#038;p=34', 0, 'mindset', '', 0),
(35, 1, '2018-06-25 16:14:17', '2018-06-25 16:14:17', 'asasdsasad', 'etsadasadsdsa', '', 'publish', 'closed', 'closed', '', 'etsadasadsdsa', '', '', '2018-06-25 16:14:23', '2018-06-25 16:14:23', '', 0, 'http://localhost/ralali/?post_type=technology&#038;p=35', 0, 'technology', '', 0),
(36, 1, '2018-06-25 16:14:41', '2018-06-25 16:14:41', 'asddsadssdasdadsaa', 'asddsadasdsaa', '', 'publish', 'closed', 'closed', '', 'asddsadasdsaa', '', '', '2018-06-25 16:14:41', '2018-06-25 16:14:41', '', 0, 'http://localhost/ralali/?post_type=info&#038;p=36', 0, 'info', '', 0),
(37, 1, '2018-06-25 16:14:55', '2018-06-25 16:14:55', '', 'satu1', '', 'publish', 'closed', 'closed', '', 'satu1', '', '', '2018-06-25 16:14:55', '2018-06-25 16:14:55', '', 0, 'http://localhost/ralali/?post_type=tipsandtrick&#038;p=37', 0, 'tipsandtrick', '', 0),
(38, 1, '2018-06-25 16:15:08', '2018-06-25 16:15:08', 'SSASADSASADSAD', 'asdadssadsad', '', 'publish', 'closed', 'closed', '', 'asdadssadsad', '', '', '2018-06-25 16:15:15', '2018-06-25 16:15:15', '', 0, 'http://localhost/ralali/?post_type=video&#038;p=38', 0, 'video', '', 0),
(39, 1, '2018-06-25 16:16:25', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-06-25 16:16:25', '0000-00-00 00:00:00', '', 0, 'http://localhost/ralali/?page_id=39', 0, 'page', '', 0);

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'apa aja', 'apa-aja', 0),
(3, 'testq', 'testq', 0);

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
(1, 1, 0);

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'post_tag', '', 0, 0),
(3, 3, 'post_tag', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
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
(17, 1, 'wp_dashboard_quick_press_last_post_id', '19'),
(19, 1, 'wp_media_library_mode', 'list'),
(21, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(22, 1, 'metaboxhidden_nav-menus', 'a:11:{i:0;s:22:"add-post-type-business";i:1;s:26:"add-post-type-enterpreneur";i:2;s:21:"add-post-type-mindset";i:3;s:27:"add-post-type-businessstory";i:4;s:25:"add-post-type-inspiration";i:5;s:24:"add-post-type-technology";i:6;s:18:"add-post-type-info";i:7;s:26:"add-post-type-tipsandtrick";i:8;s:19:"add-post-type-video";i:9;s:25:"add-post-type-infographic";i:10;s:12:"add-post_tag";}'),
(30, 1, 'wp_user-settings', 'mfold=o&libraryContent=browse'),
(31, 1, 'wp_user-settings-time', '1529941981'),
(32, 2, 'nickname', 'sandy'),
(33, 2, 'first_name', 'Sandy'),
(34, 2, 'last_name', 'H'),
(35, 2, 'description', ''),
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
(51, 1, 'session_tokens', 'a:2:{s:64:"5817e3f15f3bde769e830dc20857cab21d0f8aa22bbf70f1192c9a61ae0e9916";a:4:{s:10:"expiration";i:1529987504;s:2:"ip";s:3:"::1";s:2:"ua";s:104:"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36";s:5:"login";i:1529814704;}s:64:"55b67dce3a4f0a165897d9383deffb0a5d3739ef16a58db184e1fac7ec690a72";a:4:{s:10:"expiration";i:1530111927;s:2:"ip";s:3:"::1";s:2:"ua";s:104:"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36";s:5:"login";i:1529939127;}}'),
(52, 2, 'session_tokens', 'a:1:{s:64:"565f24fd06c231b2cb1c91ae9d0cad930ea48070444fc7067ac6f3bebda2872c";a:4:{s:10:"expiration";i:1530111764;s:2:"ip";s:3:"::1";s:2:"ua";s:104:"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36";s:5:"login";i:1529938964;}}'),
(53, 1, 'closedpostboxes_business', 'a:0:{}'),
(54, 1, 'metaboxhidden_business', 'a:1:{i:0;s:7:"slugdiv";}'),
(55, 1, 'closedpostboxes_info', 'a:0:{}'),
(56, 1, 'metaboxhidden_info', 'a:1:{i:0;s:7:"slugdiv";}');

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BS8Wlr/CWoLhpn4bxgCoI95rQfeU1b0', 'admin', 'sandyharyono@gmail.com', '', '2018-06-08 14:54:29', '', 0, 'admin'),
(2, 'sandy', '$P$BTOvQPiJEz9zsywombutw0g707qd6g.', 'sandy', 'sandy@onewaymail.com', '', '2018-06-24 03:39:30', '1529811571:$P$BzVn7qXjwg5jSpKbwO0TYcQLq49qJt/', 0, 'Sandy H');

--
-- Indexes for dumped tables
--

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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=228;
--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=159;
--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=57;
--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

