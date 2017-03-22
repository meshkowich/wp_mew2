# WordPress MySQL database migration
#
# Generated: Tuesday 21. March 2017 23:57 UTC
# Hostname: localhost
# Database: `wp_mew2`
# --------------------------------------------------------

/*!40101 SET NAMES utf8mb4 */;

SET sql_mode='NO_AUTO_VALUE_ON_ZERO';



#
# Delete any existing table `wp_commentmeta`
#

DROP TABLE IF EXISTS `wp_commentmeta`;


#
# Table structure of table `wp_commentmeta`
#

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_commentmeta`
#

#
# End of data contents of table `wp_commentmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_comments`
#

DROP TABLE IF EXISTS `wp_comments`;


#
# Table structure of table `wp_comments`
#

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_comments`
#
INSERT INTO `wp_comments` ( `comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2017-03-03 09:42:05', '2017-03-03 09:42:05', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href="https://gravatar.com">Gravatar</a>.', 0, '1', '', '', 0, 0) ;

#
# End of data contents of table `wp_comments`
# --------------------------------------------------------



#
# Delete any existing table `wp_links`
#

DROP TABLE IF EXISTS `wp_links`;


#
# Table structure of table `wp_links`
#

CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_links`
#

#
# End of data contents of table `wp_links`
# --------------------------------------------------------



#
# Delete any existing table `wp_options`
#

DROP TABLE IF EXISTS `wp_options`;


#
# Table structure of table `wp_options`
#

CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB AUTO_INCREMENT=673 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_options`
#
INSERT INTO `wp_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/vcs-2/ilja-shum', 'yes'),
(2, 'home', 'http://localhost/vcs-2/ilja-shum', 'yes'),
(3, 'blogname', 'Mew2', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'lomonosow@gmail.com', 'yes'),
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
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:194:{s:24:"^wc-auth/v([1]{1})/(.*)?";s:63:"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]";s:22:"^wc-api/v([1-3]{1})/?$";s:51:"index.php?wc-api-version=$matches[1]&wc-api-route=/";s:24:"^wc-api/v([1-3]{1})(.*)?";s:61:"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]";s:7:"shop/?$";s:27:"index.php?post_type=product";s:37:"shop/feed/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?post_type=product&feed=$matches[1]";s:32:"shop/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?post_type=product&feed=$matches[1]";s:24:"shop/page/([0-9]{1,})/?$";s:45:"index.php?post_type=product&paged=$matches[1]";s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:32:"category/(.+?)/wc-api(/(.*))?/?$";s:54:"index.php?category_name=$matches[1]&wc-api=$matches[3]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:29:"tag/([^/]+)/wc-api(/(.*))?/?$";s:44:"index.php?tag=$matches[1]&wc-api=$matches[3]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:55:"product-category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_cat=$matches[1]&feed=$matches[2]";s:50:"product-category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_cat=$matches[1]&feed=$matches[2]";s:31:"product-category/(.+?)/embed/?$";s:44:"index.php?product_cat=$matches[1]&embed=true";s:43:"product-category/(.+?)/page/?([0-9]{1,})/?$";s:51:"index.php?product_cat=$matches[1]&paged=$matches[2]";s:25:"product-category/(.+?)/?$";s:33:"index.php?product_cat=$matches[1]";s:52:"product-tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_tag=$matches[1]&feed=$matches[2]";s:47:"product-tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_tag=$matches[1]&feed=$matches[2]";s:28:"product-tag/([^/]+)/embed/?$";s:44:"index.php?product_tag=$matches[1]&embed=true";s:40:"product-tag/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?product_tag=$matches[1]&paged=$matches[2]";s:22:"product-tag/([^/]+)/?$";s:33:"index.php?product_tag=$matches[1]";s:35:"product/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:45:"product/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:65:"product/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"product/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"product/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:41:"product/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:24:"product/([^/]+)/embed/?$";s:40:"index.php?product=$matches[1]&embed=true";s:28:"product/([^/]+)/trackback/?$";s:34:"index.php?product=$matches[1]&tb=1";s:48:"product/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?product=$matches[1]&feed=$matches[2]";s:43:"product/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?product=$matches[1]&feed=$matches[2]";s:36:"product/([^/]+)/page/?([0-9]{1,})/?$";s:47:"index.php?product=$matches[1]&paged=$matches[2]";s:43:"product/([^/]+)/comment-page-([0-9]{1,})/?$";s:47:"index.php?product=$matches[1]&cpage=$matches[2]";s:33:"product/([^/]+)/wc-api(/(.*))?/?$";s:48:"index.php?product=$matches[1]&wc-api=$matches[3]";s:39:"product/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:50:"product/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:32:"product/([^/]+)(?:/([0-9]+))?/?$";s:46:"index.php?product=$matches[1]&page=$matches[2]";s:24:"product/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:34:"product/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:54:"product/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:49:"product/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:49:"product/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:30:"product/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:45:"product_variation/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:55:"product_variation/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:75:"product_variation/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:70:"product_variation/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:70:"product_variation/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:51:"product_variation/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:34:"product_variation/([^/]+)/embed/?$";s:50:"index.php?product_variation=$matches[1]&embed=true";s:38:"product_variation/([^/]+)/trackback/?$";s:44:"index.php?product_variation=$matches[1]&tb=1";s:46:"product_variation/([^/]+)/page/?([0-9]{1,})/?$";s:57:"index.php?product_variation=$matches[1]&paged=$matches[2]";s:53:"product_variation/([^/]+)/comment-page-([0-9]{1,})/?$";s:57:"index.php?product_variation=$matches[1]&cpage=$matches[2]";s:43:"product_variation/([^/]+)/wc-api(/(.*))?/?$";s:58:"index.php?product_variation=$matches[1]&wc-api=$matches[3]";s:49:"product_variation/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:60:"product_variation/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:42:"product_variation/([^/]+)(?:/([0-9]+))?/?$";s:56:"index.php?product_variation=$matches[1]&page=$matches[2]";s:34:"product_variation/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:44:"product_variation/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:64:"product_variation/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"product_variation/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"product_variation/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:40:"product_variation/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:45:"shop_order_refund/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:55:"shop_order_refund/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:75:"shop_order_refund/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:70:"shop_order_refund/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:70:"shop_order_refund/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:51:"shop_order_refund/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:34:"shop_order_refund/([^/]+)/embed/?$";s:50:"index.php?shop_order_refund=$matches[1]&embed=true";s:38:"shop_order_refund/([^/]+)/trackback/?$";s:44:"index.php?shop_order_refund=$matches[1]&tb=1";s:46:"shop_order_refund/([^/]+)/page/?([0-9]{1,})/?$";s:57:"index.php?shop_order_refund=$matches[1]&paged=$matches[2]";s:53:"shop_order_refund/([^/]+)/comment-page-([0-9]{1,})/?$";s:57:"index.php?shop_order_refund=$matches[1]&cpage=$matches[2]";s:43:"shop_order_refund/([^/]+)/wc-api(/(.*))?/?$";s:58:"index.php?shop_order_refund=$matches[1]&wc-api=$matches[3]";s:49:"shop_order_refund/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:60:"shop_order_refund/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:42:"shop_order_refund/([^/]+)(?:/([0-9]+))?/?$";s:56:"index.php?shop_order_refund=$matches[1]&page=$matches[2]";s:34:"shop_order_refund/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:44:"shop_order_refund/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:64:"shop_order_refund/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"shop_order_refund/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"shop_order_refund/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:40:"shop_order_refund/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:39:"index.php?&page_id=21&cpage=$matches[1]";s:17:"wc-api(/(.*))?/?$";s:29:"index.php?&wc-api=$matches[2]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:26:"comments/wc-api(/(.*))?/?$";s:29:"index.php?&wc-api=$matches[2]";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:29:"search/(.+)/wc-api(/(.*))?/?$";s:42:"index.php?s=$matches[1]&wc-api=$matches[3]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:32:"author/([^/]+)/wc-api(/(.*))?/?$";s:52:"index.php?author_name=$matches[1]&wc-api=$matches[3]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:54:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$";s:82:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:41:"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$";s:66:"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:28:"([0-9]{4})/wc-api(/(.*))?/?$";s:45:"index.php?year=$matches[1]&wc-api=$matches[3]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:25:"(.?.+?)/wc-api(/(.*))?/?$";s:49:"index.php?pagename=$matches[1]&wc-api=$matches[3]";s:28:"(.?.+?)/order-pay(/(.*))?/?$";s:52:"index.php?pagename=$matches[1]&order-pay=$matches[3]";s:33:"(.?.+?)/order-received(/(.*))?/?$";s:57:"index.php?pagename=$matches[1]&order-received=$matches[3]";s:25:"(.?.+?)/orders(/(.*))?/?$";s:49:"index.php?pagename=$matches[1]&orders=$matches[3]";s:29:"(.?.+?)/view-order(/(.*))?/?$";s:53:"index.php?pagename=$matches[1]&view-order=$matches[3]";s:28:"(.?.+?)/downloads(/(.*))?/?$";s:52:"index.php?pagename=$matches[1]&downloads=$matches[3]";s:31:"(.?.+?)/edit-account(/(.*))?/?$";s:55:"index.php?pagename=$matches[1]&edit-account=$matches[3]";s:31:"(.?.+?)/edit-address(/(.*))?/?$";s:55:"index.php?pagename=$matches[1]&edit-address=$matches[3]";s:34:"(.?.+?)/payment-methods(/(.*))?/?$";s:58:"index.php?pagename=$matches[1]&payment-methods=$matches[3]";s:32:"(.?.+?)/lost-password(/(.*))?/?$";s:56:"index.php?pagename=$matches[1]&lost-password=$matches[3]";s:34:"(.?.+?)/customer-logout(/(.*))?/?$";s:58:"index.php?pagename=$matches[1]&customer-logout=$matches[3]";s:37:"(.?.+?)/add-payment-method(/(.*))?/?$";s:61:"index.php?pagename=$matches[1]&add-payment-method=$matches[3]";s:40:"(.?.+?)/delete-payment-method(/(.*))?/?$";s:64:"index.php?pagename=$matches[1]&delete-payment-method=$matches[3]";s:45:"(.?.+?)/set-default-payment-method(/(.*))?/?$";s:69:"index.php?pagename=$matches[1]&set-default-payment-method=$matches[3]";s:31:".?.+?/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:42:".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";s:27:"[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:"[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"([^/]+)/embed/?$";s:37:"index.php?name=$matches[1]&embed=true";s:20:"([^/]+)/trackback/?$";s:31:"index.php?name=$matches[1]&tb=1";s:40:"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:35:"([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:28:"([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&paged=$matches[2]";s:35:"([^/]+)/comment-page-([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&cpage=$matches[2]";s:25:"([^/]+)/wc-api(/(.*))?/?$";s:45:"index.php?name=$matches[1]&wc-api=$matches[3]";s:31:"[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:42:"[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:24:"([^/]+)(?:/([0-9]+))?/?$";s:43:"index.php?name=$matches[1]&page=$matches[2]";s:16:"[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:26:"[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:46:"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:22:"[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:7:{i:0;s:30:"advanced-custom-fields/acf.php";i:1;s:36:"contact-form-7/wp-contact-form-7.php";i:2;s:87:"show-all-products-shortcode-for-woocommerce/show-all-products-shortcode-woocommerce.php";i:3;s:41:"widget-css-classes/widget-css-classes.php";i:4;s:91:"woocommerce-gateway-paypal-express-checkout/woocommerce-gateway-paypal-express-checkout.php";i:5;s:27:"woocommerce/woocommerce.php";i:6;s:31:"wp-migrate-db/wp-migrate-db.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:5:{i:0;s:134:"C:\\Wamp\\www\\vcs-2\\ilja-shum/wp-content/plugins/show-all-products-shortcode-for-woocommerce/show-all-products-shortcode-woocommerce.php";i:1;s:77:"C:\\Wamp\\www\\vcs-2\\ilja-shum/wp-content/plugins/advanced-custom-fields/acf.php";i:3;s:101:"C:\\Wamp\\www\\vcs-2\\ilja-shum/wp-content/plugins/show-all-products-shortcode-for-woocommerce/README.txt";i:4;s:67:"C:\\Wamp\\www\\vcs-2\\ilja-shum/wp-content/themes/vcs-starter/style.css";i:5;s:67:"C:\\Wamp\\www\\vcs-2\\ilja-shum/wp-content/themes/vcs-starter/index.php";}', 'no'),
(40, 'template', 'vcs-starter', 'yes'),
(41, 'stylesheet', 'vcs-starter', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
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
(66, 'image_default_link_type', '', 'yes'),
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
(78, 'widget_categories', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:5:{i:1;a:0:{}i:2;a:4:{s:5:"title";s:0:"";s:4:"text";s:9:"<i></i>\r\n";s:6:"filter";b:0;s:7:"classes";s:19:"fa fa-youtube fa-4x";}i:4;a:4:{s:5:"title";s:0:"";s:4:"text";s:7:"<i></i>";s:6:"filter";b:0;s:7:"classes";s:20:"fa fa-facebook fa-4x";}i:5;a:4:{s:5:"title";s:0:"";s:4:"text";s:7:"<i></i>";s:6:"filter";b:0;s:7:"classes";s:21:"fa fa-instagram fa-4x";}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '21', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'wp_user_roles', 'a:7:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:131:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:18:"manage_woocommerce";b:1;s:24:"view_woocommerce_reports";b:1;s:12:"edit_product";b:1;s:12:"read_product";b:1;s:14:"delete_product";b:1;s:13:"edit_products";b:1;s:20:"edit_others_products";b:1;s:16:"publish_products";b:1;s:21:"read_private_products";b:1;s:15:"delete_products";b:1;s:23:"delete_private_products";b:1;s:25:"delete_published_products";b:1;s:22:"delete_others_products";b:1;s:21:"edit_private_products";b:1;s:23:"edit_published_products";b:1;s:20:"manage_product_terms";b:1;s:18:"edit_product_terms";b:1;s:20:"delete_product_terms";b:1;s:20:"assign_product_terms";b:1;s:15:"edit_shop_order";b:1;s:15:"read_shop_order";b:1;s:17:"delete_shop_order";b:1;s:16:"edit_shop_orders";b:1;s:23:"edit_others_shop_orders";b:1;s:19:"publish_shop_orders";b:1;s:24:"read_private_shop_orders";b:1;s:18:"delete_shop_orders";b:1;s:26:"delete_private_shop_orders";b:1;s:28:"delete_published_shop_orders";b:1;s:25:"delete_others_shop_orders";b:1;s:24:"edit_private_shop_orders";b:1;s:26:"edit_published_shop_orders";b:1;s:23:"manage_shop_order_terms";b:1;s:21:"edit_shop_order_terms";b:1;s:23:"delete_shop_order_terms";b:1;s:23:"assign_shop_order_terms";b:1;s:16:"edit_shop_coupon";b:1;s:16:"read_shop_coupon";b:1;s:18:"delete_shop_coupon";b:1;s:17:"edit_shop_coupons";b:1;s:24:"edit_others_shop_coupons";b:1;s:20:"publish_shop_coupons";b:1;s:25:"read_private_shop_coupons";b:1;s:19:"delete_shop_coupons";b:1;s:27:"delete_private_shop_coupons";b:1;s:29:"delete_published_shop_coupons";b:1;s:26:"delete_others_shop_coupons";b:1;s:25:"edit_private_shop_coupons";b:1;s:27:"edit_published_shop_coupons";b:1;s:24:"manage_shop_coupon_terms";b:1;s:22:"edit_shop_coupon_terms";b:1;s:24:"delete_shop_coupon_terms";b:1;s:24:"assign_shop_coupon_terms";b:1;s:17:"edit_shop_webhook";b:1;s:17:"read_shop_webhook";b:1;s:19:"delete_shop_webhook";b:1;s:18:"edit_shop_webhooks";b:1;s:25:"edit_others_shop_webhooks";b:1;s:21:"publish_shop_webhooks";b:1;s:26:"read_private_shop_webhooks";b:1;s:20:"delete_shop_webhooks";b:1;s:28:"delete_private_shop_webhooks";b:1;s:30:"delete_published_shop_webhooks";b:1;s:27:"delete_others_shop_webhooks";b:1;s:26:"edit_private_shop_webhooks";b:1;s:28:"edit_published_shop_webhooks";b:1;s:25:"manage_shop_webhook_terms";b:1;s:23:"edit_shop_webhook_terms";b:1;s:25:"delete_shop_webhook_terms";b:1;s:25:"assign_shop_webhook_terms";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}s:8:"customer";a:2:{s:4:"name";s:8:"Customer";s:12:"capabilities";a:1:{s:4:"read";b:1;}}s:12:"shop_manager";a:2:{s:4:"name";s:12:"Shop Manager";s:12:"capabilities";a:110:{s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:4:"read";b:1;s:18:"read_private_pages";b:1;s:18:"read_private_posts";b:1;s:10:"edit_users";b:1;s:10:"edit_posts";b:1;s:10:"edit_pages";b:1;s:20:"edit_published_posts";b:1;s:20:"edit_published_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"edit_private_posts";b:1;s:17:"edit_others_posts";b:1;s:17:"edit_others_pages";b:1;s:13:"publish_posts";b:1;s:13:"publish_pages";b:1;s:12:"delete_posts";b:1;s:12:"delete_pages";b:1;s:20:"delete_private_pages";b:1;s:20:"delete_private_posts";b:1;s:22:"delete_published_pages";b:1;s:22:"delete_published_posts";b:1;s:19:"delete_others_posts";b:1;s:19:"delete_others_pages";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:17:"moderate_comments";b:1;s:15:"unfiltered_html";b:1;s:12:"upload_files";b:1;s:6:"export";b:1;s:6:"import";b:1;s:10:"list_users";b:1;s:18:"manage_woocommerce";b:1;s:24:"view_woocommerce_reports";b:1;s:12:"edit_product";b:1;s:12:"read_product";b:1;s:14:"delete_product";b:1;s:13:"edit_products";b:1;s:20:"edit_others_products";b:1;s:16:"publish_products";b:1;s:21:"read_private_products";b:1;s:15:"delete_products";b:1;s:23:"delete_private_products";b:1;s:25:"delete_published_products";b:1;s:22:"delete_others_products";b:1;s:21:"edit_private_products";b:1;s:23:"edit_published_products";b:1;s:20:"manage_product_terms";b:1;s:18:"edit_product_terms";b:1;s:20:"delete_product_terms";b:1;s:20:"assign_product_terms";b:1;s:15:"edit_shop_order";b:1;s:15:"read_shop_order";b:1;s:17:"delete_shop_order";b:1;s:16:"edit_shop_orders";b:1;s:23:"edit_others_shop_orders";b:1;s:19:"publish_shop_orders";b:1;s:24:"read_private_shop_orders";b:1;s:18:"delete_shop_orders";b:1;s:26:"delete_private_shop_orders";b:1;s:28:"delete_published_shop_orders";b:1;s:25:"delete_others_shop_orders";b:1;s:24:"edit_private_shop_orders";b:1;s:26:"edit_published_shop_orders";b:1;s:23:"manage_shop_order_terms";b:1;s:21:"edit_shop_order_terms";b:1;s:23:"delete_shop_order_terms";b:1;s:23:"assign_shop_order_terms";b:1;s:16:"edit_shop_coupon";b:1;s:16:"read_shop_coupon";b:1;s:18:"delete_shop_coupon";b:1;s:17:"edit_shop_coupons";b:1;s:24:"edit_others_shop_coupons";b:1;s:20:"publish_shop_coupons";b:1;s:25:"read_private_shop_coupons";b:1;s:19:"delete_shop_coupons";b:1;s:27:"delete_private_shop_coupons";b:1;s:29:"delete_published_shop_coupons";b:1;s:26:"delete_others_shop_coupons";b:1;s:25:"edit_private_shop_coupons";b:1;s:27:"edit_published_shop_coupons";b:1;s:24:"manage_shop_coupon_terms";b:1;s:22:"edit_shop_coupon_terms";b:1;s:24:"delete_shop_coupon_terms";b:1;s:24:"assign_shop_coupon_terms";b:1;s:17:"edit_shop_webhook";b:1;s:17:"read_shop_webhook";b:1;s:19:"delete_shop_webhook";b:1;s:18:"edit_shop_webhooks";b:1;s:25:"edit_others_shop_webhooks";b:1;s:21:"publish_shop_webhooks";b:1;s:26:"read_private_shop_webhooks";b:1;s:20:"delete_shop_webhooks";b:1;s:28:"delete_private_shop_webhooks";b:1;s:30:"delete_published_shop_webhooks";b:1;s:27:"delete_others_shop_webhooks";b:1;s:26:"edit_private_shop_webhooks";b:1;s:28:"edit_published_shop_webhooks";b:1;s:25:"manage_shop_webhook_terms";b:1;s:23:"edit_shop_webhook_terms";b:1;s:25:"delete_shop_webhook_terms";b:1;s:25:"assign_shop_webhook_terms";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'widget_search', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_recent-posts', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_recent-comments', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_archives', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_meta', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'sidebars_widgets', 'a:3:{s:19:"wp_inactive_widgets";a:0:{}s:14:"footer-widgets";a:3:{i:0;s:6:"text-4";i:1;s:6:"text-5";i:2;s:6:"text-2";}s:13:"array_version";i:3;}', 'yes'),
(100, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes') ;
INSERT INTO `wp_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(101, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'cron', 'a:9:{i:1490140800;a:1:{s:27:"woocommerce_scheduled_sales";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1490143749;a:1:{s:32:"woocommerce_cancel_unpaid_orders";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}}i:1490175725;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1490175737;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1490181375;a:1:{s:28:"woocommerce_cleanup_sessions";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1490192156;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1490224575;a:1:{s:30:"woocommerce_tracker_send_event";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1491264000;a:1:{s:25:"woocommerce_geoip_updater";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:7:"monthly";s:4:"args";a:0:{}s:8:"interval";i:2635200;}}}s:7:"version";i:2;}', 'yes'),
(105, 'theme_mods_twentyseventeen', 'a:3:{s:18:"custom_css_post_id";i:-1;s:18:"nav_menu_locations";a:2:{s:21:"primaryyyy-navigation";i:0;s:18:"primary-navigation";i:2;}s:16:"sidebars_widgets";a:2:{s:4:"time";i:1489691041;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:3:{i:0;s:6:"text-2";i:1;s:6:"text-4";i:2;s:6:"text-5";}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes'),
(119, 'can_compress_scripts', '1', 'no'),
(144, 'auto_core_update_notified', 'a:4:{s:4:"type";s:7:"success";s:5:"email";s:19:"lomonosow@gmail.com";s:7:"version";s:5:"4.7.3";s:9:"timestamp";i:1489410515;}', 'no'),
(163, 'current_theme', 'VCS Starter', 'yes'),
(164, 'theme_mods_vcs-starter', 'a:4:{i:0;b:0;s:18:"custom_css_post_id";i:-1;s:18:"nav_menu_locations";a:2:{s:21:"primaryyyy-navigation";i:0;s:18:"primary-navigation";i:2;}s:11:"custom_logo";i:89;}', 'yes'),
(165, 'theme_switched', '', 'yes'),
(166, 'recently_activated', 'a:1:{s:51:"static-html-output-plugin/wp-static-html-output.php";i:1489943476;}', 'yes'),
(174, 'acf_version', '4.4.11', 'yes'),
(229, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(242, 'WCSSC_options', 'a:6:{s:7:"show_id";i:0;s:4:"type";i:1;s:15:"defined_classes";s:0:"";s:11:"show_number";i:1;s:13:"show_location";i:1;s:12:"show_evenodd";i:1;}', 'yes'),
(243, 'WCSSC_db_version', '1.3', 'yes'),
(254, 'woocommerce_default_country', 'LT', 'yes'),
(255, 'woocommerce_allowed_countries', 'all', 'yes'),
(256, 'woocommerce_all_except_countries', '', 'yes'),
(257, 'woocommerce_specific_allowed_countries', '', 'yes'),
(258, 'woocommerce_ship_to_countries', '', 'yes'),
(259, 'woocommerce_specific_ship_to_countries', '', 'yes'),
(260, 'woocommerce_default_customer_address', 'geolocation', 'yes'),
(261, 'woocommerce_calc_taxes', 'no', 'yes'),
(262, 'woocommerce_demo_store', 'no', 'yes'),
(263, 'woocommerce_demo_store_notice', 'This is a demo store for testing purposes &mdash; no orders shall be fulfilled.', 'no'),
(264, 'woocommerce_currency', 'EUR', 'yes'),
(265, 'woocommerce_currency_pos', 'right', 'yes'),
(266, 'woocommerce_price_thousand_sep', ',', 'yes'),
(267, 'woocommerce_price_decimal_sep', '.', 'yes'),
(268, 'woocommerce_price_num_decimals', '2', 'yes'),
(269, 'woocommerce_weight_unit', 'kg', 'yes'),
(270, 'woocommerce_dimension_unit', 'cm', 'yes'),
(271, 'woocommerce_enable_review_rating', 'yes', 'yes'),
(272, 'woocommerce_review_rating_required', 'yes', 'no'),
(273, 'woocommerce_review_rating_verification_label', 'yes', 'no'),
(274, 'woocommerce_review_rating_verification_required', 'no', 'no'),
(275, 'woocommerce_shop_page_id', '35', 'yes'),
(276, 'woocommerce_shop_page_display', '', 'yes'),
(277, 'woocommerce_category_archive_display', '', 'yes'),
(278, 'woocommerce_default_catalog_orderby', 'menu_order', 'yes'),
(279, 'woocommerce_cart_redirect_after_add', 'no', 'yes'),
(280, 'woocommerce_enable_ajax_add_to_cart', 'no', 'yes'),
(281, 'shop_catalog_image_size', 'a:3:{s:5:"width";s:3:"300";s:6:"height";s:3:"300";s:4:"crop";i:1;}', 'yes'),
(282, 'shop_single_image_size', 'a:3:{s:5:"width";s:3:"600";s:6:"height";s:3:"600";s:4:"crop";i:1;}', 'yes'),
(283, 'shop_thumbnail_image_size', 'a:3:{s:5:"width";s:3:"180";s:6:"height";s:3:"180";s:4:"crop";i:1;}', 'yes'),
(284, 'woocommerce_enable_lightbox', 'no', 'yes'),
(285, 'woocommerce_manage_stock', 'yes', 'yes'),
(286, 'woocommerce_hold_stock_minutes', '60', 'no'),
(287, 'woocommerce_notify_low_stock', 'yes', 'no'),
(288, 'woocommerce_notify_no_stock', 'yes', 'no'),
(289, 'woocommerce_stock_email_recipient', 'lomonosow@gmail.com', 'no'),
(290, 'woocommerce_notify_low_stock_amount', '2', 'no'),
(291, 'woocommerce_notify_no_stock_amount', '0', 'yes'),
(292, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(293, 'woocommerce_stock_format', '', 'yes'),
(294, 'woocommerce_file_download_method', 'force', 'no'),
(295, 'woocommerce_downloads_require_login', 'no', 'no'),
(296, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(297, 'woocommerce_prices_include_tax', 'no', 'yes'),
(298, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(299, 'woocommerce_shipping_tax_class', '', 'yes'),
(300, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(301, 'woocommerce_tax_classes', 'Reduced Rate\r\nZero Rate', 'yes'),
(302, 'woocommerce_tax_display_shop', 'excl', 'yes'),
(303, 'woocommerce_tax_display_cart', 'excl', 'no'),
(304, 'woocommerce_price_display_suffix', '', 'yes'),
(305, 'woocommerce_tax_total_display', 'itemized', 'no'),
(306, 'woocommerce_enable_shipping_calc', 'yes', 'no'),
(307, 'woocommerce_shipping_cost_requires_address', 'no', 'no'),
(308, 'woocommerce_ship_to_destination', 'billing', 'no'),
(309, 'woocommerce_enable_coupons', 'yes', 'yes'),
(310, 'woocommerce_calc_discounts_sequentially', 'no', 'no'),
(311, 'woocommerce_enable_guest_checkout', 'yes', 'no'),
(312, 'woocommerce_force_ssl_checkout', 'no', 'yes'),
(313, 'woocommerce_unforce_ssl_checkout', 'no', 'yes'),
(314, 'woocommerce_cart_page_id', '36', 'yes'),
(315, 'woocommerce_checkout_page_id', '37', 'yes'),
(316, 'woocommerce_terms_page_id', '', 'no'),
(317, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
(318, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes'),
(319, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
(320, 'woocommerce_myaccount_delete_payment_method_endpoint', 'delete-payment-method', 'yes'),
(321, 'woocommerce_myaccount_set_default_payment_method_endpoint', 'set-default-payment-method', 'yes'),
(322, 'woocommerce_myaccount_page_id', '38', 'yes'),
(323, 'woocommerce_enable_signup_and_login_from_checkout', 'yes', 'no'),
(324, 'woocommerce_enable_myaccount_registration', 'no', 'no'),
(325, 'woocommerce_enable_checkout_login_reminder', 'yes', 'no'),
(326, 'woocommerce_registration_generate_username', 'yes', 'no'),
(327, 'woocommerce_registration_generate_password', 'no', 'no'),
(328, 'woocommerce_myaccount_orders_endpoint', 'orders', 'yes'),
(329, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'yes'),
(330, 'woocommerce_myaccount_downloads_endpoint', 'downloads', 'yes'),
(331, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'yes'),
(332, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'yes'),
(333, 'woocommerce_myaccount_payment_methods_endpoint', 'payment-methods', 'yes'),
(334, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(335, 'woocommerce_logout_endpoint', 'customer-logout', 'yes'),
(336, 'woocommerce_email_from_name', 'Mew2', 'no'),
(337, 'woocommerce_email_from_address', 'lomonosow@gmail.com', 'no'),
(338, 'woocommerce_email_header_image', '', 'no') ;
INSERT INTO `wp_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(339, 'woocommerce_email_footer_text', 'Mew2 - Powered by WooCommerce', 'no'),
(340, 'woocommerce_email_base_color', '#557da1', 'no'),
(341, 'woocommerce_email_background_color', '#f5f5f5', 'no'),
(342, 'woocommerce_email_body_background_color', '#fdfdfd', 'no'),
(343, 'woocommerce_email_text_color', '#505050', 'no'),
(344, 'woocommerce_api_enabled', 'yes', 'yes'),
(350, 'woocommerce_admin_notices', 'a:1:{i:0;s:13:"theme_support";}', 'yes'),
(353, 'widget_woocommerce_widget_cart', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(354, 'widget_woocommerce_layered_nav_filters', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(355, 'widget_woocommerce_layered_nav', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(356, 'widget_woocommerce_price_filter', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(357, 'widget_woocommerce_product_categories', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(358, 'widget_woocommerce_product_search', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(359, 'widget_woocommerce_product_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(360, 'widget_woocommerce_products', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(361, 'widget_woocommerce_rating_filter', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(362, 'widget_woocommerce_recent_reviews', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(363, 'widget_woocommerce_recently_viewed_products', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(364, 'widget_woocommerce_top_rated_products', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(368, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes'),
(376, 'woocommerce_paypal-ec_settings', 'a:1:{s:7:"enabled";s:3:"yes";}', 'yes'),
(377, 'woocommerce_stripe_settings', 'a:1:{s:7:"enabled";s:2:"no";}', 'yes'),
(378, 'woocommerce_paypal_settings', 'a:2:{s:7:"enabled";s:2:"no";s:5:"email";s:19:"lomonosow@gmail.com";}', 'yes'),
(379, 'woocommerce_cheque_settings', 'a:1:{s:7:"enabled";s:2:"no";}', 'yes'),
(380, 'woocommerce_bacs_settings', 'a:1:{s:7:"enabled";s:2:"no";}', 'yes'),
(381, 'woocommerce_cod_settings', 'a:1:{s:7:"enabled";s:2:"no";}', 'yes'),
(386, 'wc_ppec_version', '1.1.2', 'yes'),
(391, 'category_children', 'a:0:{}', 'yes'),
(441, 'product_cat_children', 'a:0:{}', 'yes'),
(475, 'wpcf7', 'a:2:{s:7:"version";s:3:"4.7";s:13:"bulk_validate";a:4:{s:9:"timestamp";i:1489758585;s:7:"version";s:3:"4.7";s:11:"count_valid";i:1;s:13:"count_invalid";i:0;}}', 'yes'),
(545, 'wp-static-html-output-options', 'a:2:{s:7:"version";s:3:"1.6";s:22:"static_export_settings";s:3:"1.6";}', 'yes'),
(583, 'woocommerce_db_version', '2.6.14', 'yes'),
(584, 'woocommerce_version', '2.6.14', 'yes') ;

#
# End of data contents of table `wp_options`
# --------------------------------------------------------



#
# Delete any existing table `wp_postmeta`
#

DROP TABLE IF EXISTS `wp_postmeta`;


#
# Table structure of table `wp_postmeta`
#

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=550 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_postmeta`
#
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 2, '_edit_lock', '1489414412:1'),
(3, 4, '_wp_trash_meta_status', 'publish'),
(4, 4, '_wp_trash_meta_time', '1489413558'),
(5, 5, '_wp_attached_file', '2017/03/Untitled-compressor.png'),
(6, 5, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:1080;s:4:"file";s:31:"2017/03/Untitled-compressor.png";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:31:"Untitled-compressor-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:31:"Untitled-compressor-300x169.png";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:31:"Untitled-compressor-768x432.png";s:5:"width";i:768;s:6:"height";i:432;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:32:"Untitled-compressor-1024x576.png";s:5:"width";i:1024;s:6:"height";i:576;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(7, 2, '_edit_last', '1'),
(8, 7, '_edit_last', '1'),
(9, 7, '_edit_lock', '1489414429:1'),
(10, 7, '_wp_page_template', 'default'),
(11, 9, '_wp_trash_meta_status', 'publish'),
(12, 9, '_wp_trash_meta_time', '1489414585'),
(13, 10, '_wp_trash_meta_status', 'publish'),
(14, 10, '_wp_trash_meta_time', '1489414716'),
(15, 1, '_edit_lock', '1489485112:1'),
(16, 12, '_wp_trash_meta_status', 'publish'),
(17, 12, '_wp_trash_meta_time', '1489496835'),
(18, 13, '_wp_trash_meta_status', 'publish'),
(19, 13, '_wp_trash_meta_time', '1489497367'),
(20, 15, '_menu_item_type', 'custom'),
(21, 15, '_menu_item_menu_item_parent', '0'),
(22, 15, '_menu_item_object_id', '15'),
(23, 15, '_menu_item_object', 'custom'),
(24, 15, '_menu_item_target', ''),
(25, 15, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(26, 15, '_menu_item_xfn', ''),
(27, 15, '_menu_item_url', 'http://localhost/vcs-2/ilja-shum/'),
(28, 15, '_menu_item_orphaned', '1489564172'),
(29, 16, '_menu_item_type', 'post_type'),
(30, 16, '_menu_item_menu_item_parent', '0'),
(31, 16, '_menu_item_object_id', '7'),
(32, 16, '_menu_item_object', 'page'),
(33, 16, '_menu_item_target', ''),
(34, 16, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(35, 16, '_menu_item_xfn', ''),
(36, 16, '_menu_item_url', ''),
(37, 16, '_menu_item_orphaned', '1489564172'),
(38, 17, '_menu_item_type', 'post_type'),
(39, 17, '_menu_item_menu_item_parent', '0'),
(40, 17, '_menu_item_object_id', '2'),
(41, 17, '_menu_item_object', 'page'),
(42, 17, '_menu_item_target', ''),
(43, 17, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(44, 17, '_menu_item_xfn', ''),
(45, 17, '_menu_item_url', ''),
(46, 17, '_menu_item_orphaned', '1489564172'),
(47, 18, '_menu_item_type', 'custom'),
(48, 18, '_menu_item_menu_item_parent', '0'),
(49, 18, '_menu_item_object_id', '18'),
(50, 18, '_menu_item_object', 'custom'),
(51, 18, '_menu_item_target', ''),
(52, 18, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(53, 18, '_menu_item_xfn', ''),
(54, 18, '_menu_item_url', '/wp_mew2/#products'),
(56, 19, '_menu_item_type', 'custom'),
(57, 19, '_menu_item_menu_item_parent', '0'),
(58, 19, '_menu_item_object_id', '19'),
(59, 19, '_menu_item_object', 'custom'),
(60, 19, '_menu_item_target', ''),
(61, 19, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(62, 19, '_menu_item_xfn', ''),
(63, 19, '_menu_item_url', '/wp_mew2/#contact-form'),
(74, 7, '_wp_trash_meta_status', 'publish'),
(75, 7, '_wp_trash_meta_time', '1489567027'),
(76, 7, '_wp_desired_post_slug', 'aaaaa'),
(77, 2, '_wp_trash_meta_status', 'publish'),
(78, 2, '_wp_trash_meta_time', '1489567027'),
(79, 2, '_wp_desired_post_slug', 'sample-page'),
(80, 21, '_edit_last', '1'),
(81, 21, '_edit_lock', '1489763785:1'),
(82, 21, '_wp_page_template', 'default'),
(83, 23, '_edit_last', '1'),
(84, 23, 'field_58c8fefc6c160', 'a:14:{s:3:"key";s:19:"field_58c8fefc6c160";s:5:"label";s:9:"Link Text";s:4:"name";s:14:"t_fl_link_text";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:4:"Link";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"none";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(85, 23, 'field_58c8ff646c161', 'a:14:{s:3:"key";s:19:"field_58c8ff646c161";s:5:"label";s:8:"Link URL";s:4:"name";s:13:"t_fl_link_url";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"1";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"none";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:1;}'),
(86, 23, 'rule', 'a:5:{s:5:"param";s:4:"page";s:8:"operator";s:2:"==";s:5:"value";s:2:"21";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(87, 23, 'position', 'normal'),
(88, 23, 'layout', 'default'),
(89, 23, 'hide_on_screen', ''),
(90, 23, '_edit_lock', '1489586241:1'),
(91, 21, '_thumbnail_id', '5'),
(92, 25, 't_fl_link_text', 'Link'),
(93, 25, '_t_fl_link_text', 'field_58c8fefc6c160'),
(94, 25, 't_fl_link_url', '#'),
(95, 25, '_t_fl_link_url', 'field_58c8ff646c161'),
(96, 21, 't_fl_link_text', 'Link'),
(97, 21, '_t_fl_link_text', 'field_58c8fefc6c160'),
(98, 21, 't_fl_link_url', '#'),
(99, 21, '_t_fl_link_url', 'field_58c8ff646c161'),
(100, 27, 't_fl_link_text', 'Link'),
(101, 27, '_t_fl_link_text', 'field_58c8fefc6c160'),
(102, 27, 't_fl_link_url', '#'),
(103, 27, '_t_fl_link_url', 'field_58c8ff646c161'),
(104, 28, '_menu_item_type', 'post_type'),
(105, 28, '_menu_item_menu_item_parent', '0'),
(106, 28, '_menu_item_object_id', '21'),
(107, 28, '_menu_item_object', 'page'),
(108, 28, '_menu_item_target', ''),
(109, 28, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(110, 28, '_menu_item_xfn', ''),
(111, 28, '_menu_item_url', '') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(112, 28, '_menu_item_orphaned', '1489579317'),
(167, 39, '_edit_last', '1'),
(168, 39, '_edit_lock', '1489940186:1'),
(169, 39, '_visibility', 'visible'),
(170, 39, '_stock_status', 'instock'),
(171, 39, '_thumbnail_id', '66'),
(172, 39, 'total_sales', '0'),
(173, 39, '_downloadable', 'no'),
(174, 39, '_virtual', 'no'),
(175, 39, '_purchase_note', ''),
(176, 39, '_featured', 'no'),
(177, 39, '_weight', ''),
(178, 39, '_length', ''),
(179, 39, '_width', ''),
(180, 39, '_height', ''),
(181, 39, '_sku', ''),
(182, 39, '_product_attributes', 'a:0:{}'),
(183, 39, '_regular_price', '4'),
(184, 39, '_sale_price', '3'),
(185, 39, '_sale_price_dates_from', ''),
(186, 39, '_sale_price_dates_to', ''),
(187, 39, '_price', '3'),
(188, 39, '_sold_individually', ''),
(189, 39, '_manage_stock', 'no'),
(190, 39, '_backorders', 'no'),
(191, 39, '_stock', ''),
(192, 39, '_upsell_ids', 'a:0:{}'),
(193, 39, '_crosssell_ids', 'a:0:{}'),
(194, 39, '_product_version', '2.6.14'),
(195, 39, '_product_image_gallery', '70,71'),
(196, 35, '_edit_lock', '1489931323:1'),
(197, 39, '_wc_rating_count', 'a:0:{}'),
(198, 39, '_wc_average_rating', '0'),
(199, 40, '_edit_last', '1'),
(200, 40, 'field_58ca5a4f48a7c', 'a:14:{s:3:"key";s:19:"field_58ca5a4f48a7c";s:5:"label";s:9:"Section 1";s:4:"name";s:15:"t_hps_section_1";s:4:"type";s:12:"relationship";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"return_format";s:2:"id";s:9:"post_type";a:1:{i:0;s:4:"page";}s:8:"taxonomy";a:1:{i:0;s:3:"all";}s:7:"filters";a:1:{i:0;s:6:"search";}s:15:"result_elements";a:1:{i:0;s:9:"post_type";}s:3:"max";s:1:"1";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(201, 40, 'rule', 'a:5:{s:5:"param";s:9:"page_type";s:8:"operator";s:2:"==";s:5:"value";s:10:"front_page";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(202, 40, 'position', 'normal'),
(203, 40, 'layout', 'no_box'),
(204, 40, 'hide_on_screen', ''),
(205, 40, '_edit_lock', '1489656362:1'),
(206, 41, '_edit_last', '1'),
(207, 41, '_edit_lock', '1489670320:1'),
(208, 41, '_wp_page_template', 'default'),
(209, 43, 't_fl_link_text', 'Link'),
(210, 43, '_t_fl_link_text', 'field_58c8fefc6c160'),
(211, 43, 't_fl_link_url', '#'),
(212, 43, '_t_fl_link_url', 'field_58c8ff646c161'),
(213, 43, 't_hps_section_1', 'a:1:{i:0;s:2:"41";}'),
(214, 43, '_t_hps_section_1', 'field_58ca5a4f48a7c'),
(215, 21, 't_hps_section_1', 'a:1:{i:0;s:2:"41";}'),
(216, 21, '_t_hps_section_1', 'field_58ca5a4f48a7c'),
(222, 47, '_wp_trash_meta_status', 'publish'),
(223, 47, '_wp_trash_meta_time', '1489665533'),
(224, 48, '_wp_attached_file', 'logo.png'),
(225, 48, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:129;s:6:"height";i:88;s:4:"file";s:8:"logo.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(226, 49, '_wp_trash_meta_status', 'publish'),
(227, 49, '_wp_trash_meta_time', '1489668930'),
(228, 50, '_wp_attached_file', '2017/03/cropped-Untitled-compressor.png'),
(229, 50, '_wp_attachment_context', 'custom-logo'),
(230, 50, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:461;s:6:"height";i:425;s:4:"file";s:39:"2017/03/cropped-Untitled-compressor.png";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:39:"cropped-Untitled-compressor-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:39:"cropped-Untitled-compressor-300x277.png";s:5:"width";i:300;s:6:"height";i:277;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:39:"cropped-Untitled-compressor-180x180.png";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:39:"cropped-Untitled-compressor-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(231, 51, '_wp_trash_meta_status', 'publish'),
(232, 51, '_wp_trash_meta_time', '1489669267'),
(233, 36, '_edit_lock', '1489997978:1'),
(234, 39, '_wc_review_count', '0'),
(235, 37, '_edit_lock', '1489997884:1'),
(236, 36, '_edit_last', '1'),
(237, 36, '_wp_page_template', 'templates/cart.php'),
(238, 38, '_edit_lock', '1489675551:1'),
(239, 37, '_edit_last', '1'),
(240, 37, '_wp_page_template', 'templates/checkout.php'),
(241, 54, '_edit_last', '1'),
(242, 54, '_edit_lock', '1489737778:1'),
(243, 55, '_wp_attached_file', 'artworks-000088403795-zu4l07-t500x500.jpg'),
(244, 55, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:500;s:6:"height";i:500;s:4:"file";s:41:"artworks-000088403795-zu4l07-t500x500.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:49:"artworks-000088403795-zu4l07-t500x500-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:49:"artworks-000088403795-zu4l07-t500x500-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:49:"artworks-000088403795-zu4l07-t500x500-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:49:"artworks-000088403795-zu4l07-t500x500-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(245, 54, '_visibility', 'visible'),
(246, 54, '_stock_status', 'instock'),
(247, 54, '_thumbnail_id', '55'),
(248, 54, 'total_sales', '0'),
(249, 54, '_downloadable', 'no'),
(250, 54, '_virtual', 'no'),
(251, 54, '_purchase_note', ''),
(252, 54, '_featured', 'no'),
(253, 54, '_weight', ''),
(254, 54, '_length', ''),
(255, 54, '_width', ''),
(256, 54, '_height', ''),
(257, 54, '_sku', ''),
(258, 54, '_product_attributes', 'a:0:{}'),
(259, 54, '_regular_price', '1.5'),
(260, 54, '_sale_price', ''),
(261, 54, '_sale_price_dates_from', ''),
(262, 54, '_sale_price_dates_to', ''),
(263, 54, '_price', '1.5'),
(264, 54, '_sold_individually', ''),
(265, 54, '_manage_stock', 'no'),
(266, 54, '_backorders', 'no'),
(267, 54, '_stock', ''),
(268, 54, '_upsell_ids', 'a:0:{}'),
(269, 54, '_crosssell_ids', 'a:0:{}'),
(270, 54, '_product_version', '2.6.14') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(271, 54, '_product_image_gallery', ''),
(272, 54, '_wc_rating_count', 'a:0:{}'),
(273, 54, '_wc_average_rating', '0'),
(274, 35, '_edit_last', '1'),
(275, 35, '_wp_page_template', 'templates/_tpl.php'),
(276, 57, '_form', '<label> Your Name (required)\n    [text* your-name] </label>\n\n<label> Your Email (required)\n    [email* your-email] </label>\n\n<label> Your Message\n    [textarea your-message] </label>\n\n[submit "Send"]'),
(277, 57, '_mail', 'a:9:{s:6:"active";b:1;s:7:"subject";s:16:"Mew2 reikaliukai";s:6:"sender";s:33:"[your-name] <lomonosow@gmail.com>";s:9:"recipient";s:19:"lomonosow@gmail.com";s:4:"body";s:177:"From: [your-name] <[your-email]>\nSubject: Mew2 reikaliukai\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Mew2 (http://localhost/vcs-2/ilja-shum)";s:18:"additional_headers";s:22:"Reply-To: [your-email]";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:1;}'),
(278, 57, '_mail_2', 'a:9:{s:6:"active";b:0;s:7:"subject";s:21:"Mew2 "[your-subject]"";s:6:"sender";s:26:"Mew2 <lomonosow@gmail.com>";s:9:"recipient";s:12:"[your-email]";s:4:"body";s:117:"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Mew2 (http://localhost/vcs-2/ilja-shum)";s:18:"additional_headers";s:29:"Reply-To: lomonosow@gmail.com";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
(279, 57, '_messages', 'a:23:{s:12:"mail_sent_ok";s:45:"Thank you for your message. It has been sent.";s:12:"mail_sent_ng";s:71:"There was an error trying to send your message. Please try again later.";s:16:"validation_error";s:61:"One or more fields have an error. Please check and try again.";s:4:"spam";s:71:"There was an error trying to send your message. Please try again later.";s:12:"accept_terms";s:69:"You must accept the terms and conditions before sending your message.";s:16:"invalid_required";s:22:"The field is required.";s:16:"invalid_too_long";s:22:"The field is too long.";s:17:"invalid_too_short";s:23:"The field is too short.";s:12:"invalid_date";s:29:"The date format is incorrect.";s:14:"date_too_early";s:44:"The date is before the earliest one allowed.";s:13:"date_too_late";s:41:"The date is after the latest one allowed.";s:13:"upload_failed";s:46:"There was an unknown error uploading the file.";s:24:"upload_file_type_invalid";s:49:"You are not allowed to upload files of this type.";s:21:"upload_file_too_large";s:20:"The file is too big.";s:23:"upload_failed_php_error";s:38:"There was an error uploading the file.";s:14:"invalid_number";s:29:"The number format is invalid.";s:16:"number_too_small";s:47:"The number is smaller than the minimum allowed.";s:16:"number_too_large";s:46:"The number is larger than the maximum allowed.";s:23:"quiz_answer_not_correct";s:36:"The answer to the quiz is incorrect.";s:17:"captcha_not_match";s:31:"Your entered code is incorrect.";s:13:"invalid_email";s:38:"The e-mail address entered is invalid.";s:11:"invalid_url";s:19:"The URL is invalid.";s:11:"invalid_tel";s:32:"The telephone number is invalid.";}'),
(280, 57, '_additional_settings', ''),
(281, 57, '_locale', 'en_US'),
(282, 58, '_edit_last', '1'),
(283, 58, '_wp_page_template', 'default'),
(284, 58, '_edit_lock', '1489760034:1'),
(285, 60, 't_fl_link_text', 'Link'),
(286, 60, '_t_fl_link_text', 'field_58c8fefc6c160'),
(287, 60, 't_fl_link_url', '#'),
(288, 60, '_t_fl_link_url', 'field_58c8ff646c161'),
(289, 60, 't_hps_section_1', 'a:1:{i:0;s:2:"41";}'),
(290, 60, '_t_hps_section_1', 'field_58ca5a4f48a7c'),
(291, 61, 't_fl_link_text', 'Link'),
(292, 61, '_t_fl_link_text', 'field_58c8fefc6c160'),
(293, 61, 't_fl_link_url', '#'),
(294, 61, '_t_fl_link_url', 'field_58c8ff646c161'),
(295, 61, 't_hps_section_1', 'a:1:{i:0;s:2:"41";}'),
(296, 61, '_t_hps_section_1', 'field_58ca5a4f48a7c'),
(297, 58, '_wp_trash_meta_status', 'publish'),
(298, 58, '_wp_trash_meta_time', '1489760194'),
(299, 58, '_wp_desired_post_slug', 'contact-form'),
(300, 66, '_wp_attached_file', 'palms-malibu2.jpg'),
(301, 66, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1715;s:6:"height";i:1822;s:4:"file";s:17:"palms-malibu2.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"palms-malibu2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:25:"palms-malibu2-282x300.jpg";s:5:"width";i:282;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:25:"palms-malibu2-768x816.jpg";s:5:"width";i:768;s:6:"height";i:816;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:26:"palms-malibu2-964x1024.jpg";s:5:"width";i:964;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:25:"palms-malibu2-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:25:"palms-malibu2-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:25:"palms-malibu2-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"2";s:6:"credit";s:0:"";s:6:"camera";s:6:"XT1562";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1486559744";s:9:"copyright";s:0:"";s:12:"focal_length";s:4:"4.67";s:3:"iso";s:2:"64";s:13:"shutter_speed";s:7:"0.01999";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(302, 67, '_wp_attached_file', '1calls-codeine.jpg'),
(303, 67, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1715;s:6:"height";i:1822;s:4:"file";s:18:"1calls-codeine.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"1calls-codeine-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:26:"1calls-codeine-282x300.jpg";s:5:"width";i:282;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:26:"1calls-codeine-768x816.jpg";s:5:"width";i:768;s:6:"height";i:816;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:27:"1calls-codeine-964x1024.jpg";s:5:"width";i:964;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:26:"1calls-codeine-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:26:"1calls-codeine-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:26:"1calls-codeine-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(304, 68, '_wp_attached_file', 'clrx3.jpg'),
(305, 68, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1715;s:6:"height";i:1822;s:4:"file";s:9:"clrx3.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:17:"clrx3-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:17:"clrx3-282x300.jpg";s:5:"width";i:282;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:17:"clrx3-768x816.jpg";s:5:"width";i:768;s:6:"height";i:816;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:18:"clrx3-964x1024.jpg";s:5:"width";i:964;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:17:"clrx3-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:17:"clrx3-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:17:"clrx3-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:3:"1.7";s:6:"credit";s:0:"";s:6:"camera";s:8:"SM-G935F";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1478783913";s:9:"copyright";s:0:"";s:12:"focal_length";s:3:"4.2";s:3:"iso";s:3:"160";s:13:"shutter_speed";s:4:"0.04";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(306, 70, '_wp_attached_file', 'palms2.jpg'),
(307, 70, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:3280;s:6:"height";i:2752;s:4:"file";s:10:"palms2.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"palms2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:18:"palms2-300x252.jpg";s:5:"width";i:300;s:6:"height";i:252;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:18:"palms2-768x644.jpg";s:5:"width";i:768;s:6:"height";i:644;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:19:"palms2-1024x859.jpg";s:5:"width";i:1024;s:6:"height";i:859;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:18:"palms2-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:18:"palms2-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:18:"palms2-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:2:"13";s:6:"credit";s:0:"";s:6:"camera";s:10:"NIKON D600";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1481220635";s:9:"copyright";s:0:"";s:12:"focal_length";s:2:"70";s:3:"iso";s:3:"100";s:13:"shutter_speed";s:7:"0.00625";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(308, 71, '_wp_attached_file', 'palms3.jpg'),
(309, 71, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1424;s:6:"height";i:1616;s:4:"file";s:10:"palms3.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"palms3-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:18:"palms3-264x300.jpg";s:5:"width";i:264;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:18:"palms3-768x872.jpg";s:5:"width";i:768;s:6:"height";i:872;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:19:"palms3-902x1024.jpg";s:5:"width";i:902;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:18:"palms3-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:18:"palms3-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:18:"palms3-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:2:"13";s:6:"credit";s:0:"";s:6:"camera";s:10:"NIKON D600";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1481220520";s:9:"copyright";s:0:"";s:12:"focal_length";s:2:"70";s:3:"iso";s:3:"100";s:13:"shutter_speed";s:7:"0.00625";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(310, 39, '_wp_old_slug', 'first-product'),
(311, 72, '_edit_last', '1'),
(312, 72, '_edit_lock', '1489940930:1'),
(313, 73, '_wp_attached_file', '0calls1.jpg'),
(314, 73, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2749;s:6:"height";i:2528;s:4:"file";s:11:"0calls1.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"0calls1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:19:"0calls1-300x276.jpg";s:5:"width";i:300;s:6:"height";i:276;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:19:"0calls1-768x706.jpg";s:5:"width";i:768;s:6:"height";i:706;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:20:"0calls1-1024x942.jpg";s:5:"width";i:1024;s:6:"height";i:942;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:19:"0calls1-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:19:"0calls1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:19:"0calls1-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:2:"13";s:6:"credit";s:0:"";s:6:"camera";s:10:"NIKON D600";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1481219653";s:9:"copyright";s:0:"";s:12:"focal_length";s:3:"116";s:3:"iso";s:3:"160";s:13:"shutter_speed";s:7:"0.00625";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(315, 74, '_wp_attached_file', '0calls2.jpg'),
(316, 74, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2266;s:6:"height";i:2277;s:4:"file";s:11:"0calls2.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"0calls2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:19:"0calls2-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:19:"0calls2-768x772.jpg";s:5:"width";i:768;s:6:"height";i:772;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:21:"0calls2-1019x1024.jpg";s:5:"width";i:1019;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:19:"0calls2-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:19:"0calls2-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:19:"0calls2-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:2:"13";s:6:"credit";s:0:"";s:6:"camera";s:10:"NIKON D600";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1481219765";s:9:"copyright";s:0:"";s:12:"focal_length";s:2:"86";s:3:"iso";s:3:"160";s:13:"shutter_speed";s:7:"0.00625";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(317, 72, '_visibility', 'visible'),
(318, 72, '_stock_status', 'instock'),
(319, 72, '_thumbnail_id', '67'),
(320, 72, 'total_sales', '0'),
(321, 72, '_downloadable', 'no'),
(322, 72, '_virtual', 'no'),
(323, 72, '_purchase_note', ''),
(324, 72, '_featured', 'no'),
(325, 72, '_weight', ''),
(326, 72, '_length', ''),
(327, 72, '_width', ''),
(328, 72, '_height', ''),
(329, 72, '_sku', ''),
(330, 72, '_product_attributes', 'a:0:{}'),
(331, 72, '_regular_price', '4'),
(332, 72, '_sale_price', ''),
(333, 72, '_sale_price_dates_from', ''),
(334, 72, '_sale_price_dates_to', ''),
(335, 72, '_price', '4'),
(336, 72, '_sold_individually', ''),
(337, 72, '_manage_stock', 'no'),
(338, 72, '_backorders', 'no'),
(339, 72, '_stock', ''),
(340, 72, '_upsell_ids', 'a:0:{}'),
(341, 72, '_crosssell_ids', 'a:0:{}'),
(342, 72, '_product_version', '2.6.14'),
(343, 72, '_product_image_gallery', '73,74,77'),
(344, 72, '_wc_rating_count', 'a:0:{}'),
(345, 72, '_wc_average_rating', '0'),
(346, 75, '_edit_last', '1'),
(347, 75, '_edit_lock', '1489943774:1'),
(348, 76, '_wp_attached_file', 'clorox.jpg'),
(349, 76, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2064;s:6:"height";i:2000;s:4:"file";s:10:"clorox.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"clorox-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:18:"clorox-300x291.jpg";s:5:"width";i:300;s:6:"height";i:291;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:18:"clorox-768x744.jpg";s:5:"width";i:768;s:6:"height";i:744;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:19:"clorox-1024x992.jpg";s:5:"width";i:1024;s:6:"height";i:992;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:18:"clorox-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:18:"clorox-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:18:"clorox-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:2:"13";s:6:"credit";s:0:"";s:6:"camera";s:10:"NIKON D600";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1481223401";s:9:"copyright";s:0:"";s:12:"focal_length";s:2:"70";s:3:"iso";s:3:"100";s:13:"shutter_speed";s:5:"0.008";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(350, 75, '_visibility', 'visible'),
(351, 75, '_stock_status', 'instock'),
(352, 75, '_thumbnail_id', '68'),
(353, 75, 'total_sales', '0'),
(354, 75, '_downloadable', 'no'),
(355, 75, '_virtual', 'no'),
(356, 75, '_purchase_note', ''),
(357, 75, '_featured', 'no'),
(358, 75, '_weight', ''),
(359, 75, '_length', ''),
(360, 75, '_width', ''),
(361, 75, '_height', ''),
(362, 75, '_sku', ''),
(363, 75, '_product_attributes', 'a:0:{}'),
(364, 75, '_regular_price', '4'),
(365, 75, '_sale_price', ''),
(366, 75, '_sale_price_dates_from', ''),
(367, 75, '_sale_price_dates_to', ''),
(368, 75, '_price', '4'),
(369, 75, '_sold_individually', ''),
(370, 75, '_manage_stock', 'no') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(371, 75, '_backorders', 'no'),
(372, 75, '_stock', ''),
(373, 75, '_upsell_ids', 'a:0:{}'),
(374, 75, '_crosssell_ids', 'a:0:{}'),
(375, 75, '_product_version', '2.6.14'),
(376, 75, '_product_image_gallery', '76'),
(377, 75, '_wc_rating_count', 'a:0:{}'),
(378, 75, '_wc_review_count', '0'),
(379, 75, '_wc_average_rating', '0'),
(380, 77, '_wp_attached_file', 'woman-1calls.jpg'),
(381, 77, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2500;s:6:"height";i:3235;s:4:"file";s:16:"woman-1calls.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"woman-1calls-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:24:"woman-1calls-232x300.jpg";s:5:"width";i:232;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:24:"woman-1calls-768x994.jpg";s:5:"width";i:768;s:6:"height";i:994;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:25:"woman-1calls-791x1024.jpg";s:5:"width";i:791;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:24:"woman-1calls-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:24:"woman-1calls-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:24:"woman-1calls-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(382, 79, '_edit_last', '1'),
(383, 79, '_edit_lock', '1490020108:1'),
(384, 80, '_wp_attached_file', '12725035_1690169294563654_1927161651_n.jpg'),
(385, 80, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1065;s:6:"height";i:1065;s:4:"file";s:42:"12725035_1690169294563654_1927161651_n.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:50:"12725035_1690169294563654_1927161651_n-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:50:"12725035_1690169294563654_1927161651_n-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:50:"12725035_1690169294563654_1927161651_n-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:52:"12725035_1690169294563654_1927161651_n-1024x1024.jpg";s:5:"width";i:1024;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:50:"12725035_1690169294563654_1927161651_n-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:50:"12725035_1690169294563654_1927161651_n-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:50:"12725035_1690169294563654_1927161651_n-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1474471178";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(386, 81, '_wp_attached_file', '12728475_1656054941311273_832264152_n.jpg'),
(387, 81, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:494;s:6:"height";i:451;s:4:"file";s:41:"12728475_1656054941311273_832264152_n.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:49:"12728475_1656054941311273_832264152_n-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:49:"12728475_1656054941311273_832264152_n-300x274.jpg";s:5:"width";i:300;s:6:"height";i:274;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:49:"12728475_1656054941311273_832264152_n-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:49:"12728475_1656054941311273_832264152_n-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1474471251";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(388, 82, '_wp_attached_file', '12224141_1491713804492322_848021224_n.jpg'),
(389, 82, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1027;s:6:"height";i:1027;s:4:"file";s:41:"12224141_1491713804492322_848021224_n.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:49:"12224141_1491713804492322_848021224_n-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:49:"12224141_1491713804492322_848021224_n-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:49:"12224141_1491713804492322_848021224_n-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:51:"12224141_1491713804492322_848021224_n-1024x1024.jpg";s:5:"width";i:1024;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:49:"12224141_1491713804492322_848021224_n-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:49:"12224141_1491713804492322_848021224_n-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:49:"12224141_1491713804492322_848021224_n-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1474480766";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(390, 79, '_visibility', 'visible'),
(391, 79, '_stock_status', 'instock'),
(392, 79, '_thumbnail_id', '80'),
(393, 79, 'total_sales', '0'),
(394, 79, '_downloadable', 'no'),
(395, 79, '_virtual', 'no'),
(396, 79, '_purchase_note', ''),
(397, 79, '_featured', 'no'),
(398, 79, '_weight', ''),
(399, 79, '_length', ''),
(400, 79, '_width', ''),
(401, 79, '_height', ''),
(402, 79, '_sku', ''),
(403, 79, '_product_attributes', 'a:0:{}'),
(404, 79, '_regular_price', '10'),
(405, 79, '_sale_price', ''),
(406, 79, '_sale_price_dates_from', ''),
(407, 79, '_sale_price_dates_to', ''),
(408, 79, '_price', '10'),
(409, 79, '_sold_individually', ''),
(410, 79, '_manage_stock', 'no'),
(411, 79, '_backorders', 'no'),
(412, 79, '_stock', ''),
(413, 79, '_upsell_ids', 'a:0:{}'),
(414, 79, '_crosssell_ids', 'a:0:{}'),
(415, 79, '_product_version', '2.6.14'),
(416, 79, '_product_image_gallery', '81,82,103,104'),
(417, 79, '_wc_rating_count', 'a:0:{}'),
(418, 79, '_wc_average_rating', '0'),
(419, 83, '_wp_attached_file', 'header-logo.png'),
(420, 83, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:514;s:6:"height";i:444;s:4:"file";s:15:"header-logo.png";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"header-logo-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:23:"header-logo-300x259.png";s:5:"width";i:300;s:6:"height";i:259;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:23:"header-logo-180x180.png";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:23:"header-logo-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(421, 84, '_wp_trash_meta_status', 'publish'),
(422, 84, '_wp_trash_meta_time', '1489941442'),
(423, 79, '_wc_review_count', '0'),
(424, 72, '_wc_review_count', '0'),
(425, 54, '_wc_review_count', '0'),
(426, 85, '_edit_last', '1'),
(427, 85, '_edit_lock', '1490010019:1'),
(428, 86, '_wp_attached_file', 'meow.jpg'),
(429, 86, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:640;s:6:"height";i:640;s:4:"file";s:8:"meow.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:16:"meow-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:16:"meow-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:16:"meow-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:16:"meow-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:16:"meow-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(430, 85, '_visibility', 'visible'),
(431, 85, '_stock_status', 'instock'),
(432, 85, '_thumbnail_id', '86'),
(433, 85, 'total_sales', '0'),
(434, 85, '_downloadable', 'no'),
(435, 85, '_virtual', 'no'),
(436, 85, '_purchase_note', ''),
(437, 85, '_featured', 'no'),
(438, 85, '_weight', ''),
(439, 85, '_length', ''),
(440, 85, '_width', ''),
(441, 85, '_height', ''),
(442, 85, '_sku', ''),
(443, 85, '_product_attributes', 'a:0:{}'),
(444, 85, '_regular_price', '10'),
(445, 85, '_sale_price', ''),
(446, 85, '_sale_price_dates_from', ''),
(447, 85, '_sale_price_dates_to', ''),
(448, 85, '_price', '10'),
(449, 85, '_sold_individually', ''),
(450, 85, '_manage_stock', 'no'),
(451, 85, '_backorders', 'no'),
(452, 85, '_stock', ''),
(453, 85, '_upsell_ids', 'a:0:{}'),
(454, 85, '_crosssell_ids', 'a:0:{}'),
(455, 85, '_product_version', '2.6.14'),
(456, 85, '_product_image_gallery', '102'),
(457, 85, '_wc_rating_count', 'a:0:{}'),
(458, 85, '_wc_review_count', '0'),
(459, 85, '_wc_average_rating', '0'),
(462, 88, '_wp_trash_meta_status', 'publish'),
(463, 88, '_wp_trash_meta_time', '1489945084'),
(464, 89, '_wp_attached_file', 'header-logo-smalll-compressor.png'),
(465, 89, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:113;s:6:"height";i:100;s:4:"file";s:33:"header-logo-smalll-compressor.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(466, 90, '_wp_trash_meta_status', 'publish'),
(467, 90, '_wp_trash_meta_time', '1489945211'),
(468, 91, '_edit_last', '1'),
(469, 91, '_edit_lock', '1490118263:1'),
(470, 91, '_wp_page_template', 'default'),
(471, 94, '_edit_last', '1'),
(472, 94, 'field_58cf89ee2a894', 'a:12:{s:3:"key";s:19:"field_58cf89ee2a894";s:5:"label";s:4:"Form";s:4:"name";s:4:"form";s:4:"type";s:11:"post_object";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:9:"post_type";a:1:{i:0;s:18:"wpcf7_contact_form";}s:8:"taxonomy";a:1:{i:0;s:3:"all";}s:10:"allow_null";s:1:"0";s:8:"multiple";s:1:"0";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(475, 94, 'position', 'side'),
(476, 94, 'layout', 'no_box'),
(477, 94, 'hide_on_screen', ''),
(478, 94, '_edit_lock', '1490003178:1'),
(479, 91, 't_f_form', '96'),
(480, 91, '_t_f_form', 'field_58cf89ee2a894'),
(481, 91, '_', 'field_58cf8adc2a895'),
(482, 95, 't_f_form', '57'),
(483, 95, '_t_f_form', 'field_58cf89ee2a894'),
(484, 95, '_', 'field_58cf8adc2a895'),
(486, 96, '_form', '<label> Your Name (required)\n    [text* your-name] </label>\n\n<label> Your Email (required)\n    [email* your-email] </label>\n\n<label> Subject\n    [text your-subject] </label>\n\n<label> Your Message\n    [textarea your-message] </label>\n\n[submit "Send"]'),
(487, 96, '_mail', 'a:9:{s:6:"active";b:1;s:7:"subject";s:21:"Mew2 "[your-subject]"";s:6:"sender";s:33:"[your-name] <lomonosow@gmail.com>";s:9:"recipient";s:19:"lomonosow@gmail.com";s:4:"body";s:175:"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Mew2 (http://localhost/vcs-2/ilja-shum)";s:18:"additional_headers";s:22:"Reply-To: [your-email]";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
(488, 96, '_mail_2', 'a:9:{s:6:"active";b:0;s:7:"subject";s:21:"Mew2 "[your-subject]"";s:6:"sender";s:26:"Mew2 <lomonosow@gmail.com>";s:9:"recipient";s:12:"[your-email]";s:4:"body";s:117:"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Mew2 (http://localhost/vcs-2/ilja-shum)";s:18:"additional_headers";s:29:"Reply-To: lomonosow@gmail.com";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
(489, 96, '_messages', 'a:23:{s:12:"mail_sent_ok";s:45:"Thank you for your message. It has been sent.";s:12:"mail_sent_ng";s:71:"There was an error trying to send your message. Please try again later.";s:16:"validation_error";s:61:"One or more fields have an error. Please check and try again.";s:4:"spam";s:71:"There was an error trying to send your message. Please try again later.";s:12:"accept_terms";s:69:"You must accept the terms and conditions before sending your message.";s:16:"invalid_required";s:22:"The field is required.";s:16:"invalid_too_long";s:22:"The field is too long.";s:17:"invalid_too_short";s:23:"The field is too short.";s:12:"invalid_date";s:29:"The date format is incorrect.";s:14:"date_too_early";s:44:"The date is before the earliest one allowed.";s:13:"date_too_late";s:41:"The date is after the latest one allowed.";s:13:"upload_failed";s:46:"There was an unknown error uploading the file.";s:24:"upload_file_type_invalid";s:49:"You are not allowed to upload files of this type.";s:21:"upload_file_too_large";s:20:"The file is too big.";s:23:"upload_failed_php_error";s:38:"There was an error uploading the file.";s:14:"invalid_number";s:29:"The number format is invalid.";s:16:"number_too_small";s:47:"The number is smaller than the minimum allowed.";s:16:"number_too_large";s:46:"The number is larger than the maximum allowed.";s:23:"quiz_answer_not_correct";s:36:"The answer to the quiz is incorrect.";s:17:"captcha_not_match";s:31:"Your entered code is incorrect.";s:13:"invalid_email";s:38:"The e-mail address entered is invalid.";s:11:"invalid_url";s:19:"The URL is invalid.";s:11:"invalid_tel";s:32:"The telephone number is invalid.";}'),
(490, 96, '_additional_settings', ''),
(491, 96, '_locale', 'en_US'),
(493, 97, 't_f_form', '96'),
(494, 97, '_t_f_form', 'field_58cf89ee2a894'),
(499, 98, 'form', 'a:1:{i:0;s:2:"57";}'),
(500, 98, '_form', 'field_58cf89ee2a894'),
(501, 91, 'form', '96'),
(502, 91, '_form', 'field_58cf89ee2a894'),
(507, 99, 'form', '96'),
(508, 99, '_form', 'field_58cf89ee2a894'),
(509, 100, 'form', '96'),
(510, 100, '_form', 'field_58cf89ee2a894'),
(511, 101, 'form', '96'),
(512, 101, '_form', 'field_58cf89ee2a894'),
(514, 94, 'rule', 'a:5:{s:5:"param";s:4:"page";s:8:"operator";s:2:"==";s:5:"value";s:2:"91";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(515, 102, '_wp_attached_file', '16473700_1254032268013182_2188967369370506074_n.jpg'),
(516, 102, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:474;s:6:"height";i:604;s:4:"file";s:51:"16473700_1254032268013182_2188967369370506074_n.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:59:"16473700_1254032268013182_2188967369370506074_n-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:59:"16473700_1254032268013182_2188967369370506074_n-235x300.jpg";s:5:"width";i:235;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:59:"16473700_1254032268013182_2188967369370506074_n-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:59:"16473700_1254032268013182_2188967369370506074_n-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:59:"16473700_1254032268013182_2188967369370506074_n-474x600.jpg";s:5:"width";i:474;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(517, 103, '_wp_attached_file', '15035793_1306697499363754_1027955419630272512_n.jpg'),
(518, 103, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1080;s:6:"height";i:1080;s:4:"file";s:51:"15035793_1306697499363754_1027955419630272512_n.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:59:"15035793_1306697499363754_1027955419630272512_n-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:59:"15035793_1306697499363754_1027955419630272512_n-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:59:"15035793_1306697499363754_1027955419630272512_n-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:61:"15035793_1306697499363754_1027955419630272512_n-1024x1024.jpg";s:5:"width";i:1024;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:59:"15035793_1306697499363754_1027955419630272512_n-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:59:"15035793_1306697499363754_1027955419630272512_n-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:59:"15035793_1306697499363754_1027955419630272512_n-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(519, 104, '_wp_attached_file', '15179129_405831513139506_7552042779142330308_n.jpg'),
(520, 104, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:223;s:6:"height";i:223;s:4:"file";s:50:"15179129_405831513139506_7552042779142330308_n.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:58:"15179129_405831513139506_7552042779142330308_n-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:58:"15179129_405831513139506_7552042779142330308_n-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(530, 106, '_menu_item_type', 'post_type'),
(531, 106, '_menu_item_menu_item_parent', '0'),
(532, 106, '_menu_item_object_id', '36'),
(533, 106, '_menu_item_object', 'page'),
(534, 106, '_menu_item_target', ''),
(535, 106, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(536, 106, '_menu_item_xfn', ''),
(537, 106, '_menu_item_url', ''),
(538, 108, 'form', '96'),
(539, 108, '_form', 'field_58cf89ee2a894'),
(540, 109, 'form', '96'),
(541, 109, '_form', 'field_58cf89ee2a894'),
(542, 110, 'form', '96'),
(543, 110, '_form', 'field_58cf89ee2a894'),
(544, 111, 'form', '96'),
(545, 111, '_form', 'field_58cf89ee2a894'),
(546, 112, 'form', '96'),
(547, 112, '_form', 'field_58cf89ee2a894'),
(548, 114, 'form', '96'),
(549, 114, '_form', 'field_58cf89ee2a894') ;

#
# End of data contents of table `wp_postmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_posts`
#

DROP TABLE IF EXISTS `wp_posts`;


#
# Table structure of table `wp_posts`
#

CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8_unicode_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_posts`
#
INSERT INTO `wp_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2017-03-03 09:42:05', '2017-03-03 09:42:05', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2017-03-03 09:42:05', '2017-03-03 09:42:05', '', 0, 'http://localhost/vcs-2/ilja-shum/?p=1', 0, 'post', '', 1),
(2, 1, '2017-03-03 09:42:05', '2017-03-03 09:42:05', '<img class="alignnone size-medium wp-image-5" src="http://localhost/vcs-2/ilja-shum/wp-content/uploads/2017/03/Untitled-compressor-300x169.png" alt="" width="300" height="169" />This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\r\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)</blockquote>\r\n...or something like this:\r\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\r\nAs a new WordPress user, you should go to <a href="http://localhost/vcs-2/ilja-shum/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'trash', 'closed', 'open', '', 'sample-page__trashed', '', '', '2017-03-15 08:37:07', '2017-03-15 08:37:07', '', 0, 'http://localhost/vcs-2/ilja-shum/?page_id=2', 0, 'page', '', 0),
(4, 1, '2017-03-13 13:59:18', '2017-03-13 13:59:18', '{"show_on_front":{"value":"page","type":"option","user_id":1},"page_on_front":{"value":"2","type":"option","user_id":1}}', '', '', 'trash', 'closed', 'closed', '', 'a00ccdc4-f6dd-4d1b-a4ab-b3335e371adf', '', '', '2017-03-13 13:59:18', '2017-03-13 13:59:18', '', 0, 'http://localhost/vcs-2/ilja-shum/2017/03/13/a00ccdc4-f6dd-4d1b-a4ab-b3335e371adf/', 0, 'customize_changeset', '', 0),
(5, 1, '2017-03-13 14:07:16', '2017-03-13 14:07:16', '', 'Untitled-compressor', '', 'inherit', 'open', 'closed', '', 'untitled-compressor', '', '', '2017-03-13 14:07:16', '2017-03-13 14:07:16', '', 2, 'http://localhost/vcs-2/ilja-shum/wp-content/uploads/2017/03/Untitled-compressor.png', 0, 'attachment', 'image/png', 0),
(6, 1, '2017-03-13 14:07:27', '2017-03-13 14:07:27', '<img class="alignnone size-medium wp-image-5" src="http://localhost/vcs-2/ilja-shum/wp-content/uploads/2017/03/Untitled-compressor-300x169.png" alt="" width="300" height="169" />This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\r\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)</blockquote>\r\n...or something like this:\r\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\r\nAs a new WordPress user, you should go to <a href="http://localhost/vcs-2/ilja-shum/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2017-03-13 14:07:27', '2017-03-13 14:07:27', '', 2, 'http://localhost/vcs-2/ilja-shum/2017/03/13/2-revision-v1/', 0, 'revision', '', 0),
(7, 1, '2017-03-13 14:16:07', '2017-03-13 14:16:07', 'aaaaaaaaaa', 'aaaaa', '', 'trash', 'closed', 'closed', '', 'aaaaa__trashed', '', '', '2017-03-15 08:37:07', '2017-03-15 08:37:07', '', 0, 'http://localhost/vcs-2/ilja-shum/?page_id=7', 0, 'page', '', 0),
(8, 1, '2017-03-13 14:16:07', '2017-03-13 14:16:07', 'aaaaaaaaaa', 'aaaaa', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2017-03-13 14:16:07', '2017-03-13 14:16:07', '', 7, 'http://localhost/vcs-2/ilja-shum/2017/03/13/7-revision-v1/', 0, 'revision', '', 0),
(9, 1, '2017-03-13 14:16:25', '2017-03-13 14:16:25', '{"page_on_front":{"value":"7","type":"option","user_id":1}}', '', '', 'trash', 'closed', 'closed', '', '9a972f32-db01-4bc1-ab24-03b421d9a03a', '', '', '2017-03-13 14:16:25', '2017-03-13 14:16:25', '', 0, 'http://localhost/vcs-2/ilja-shum/2017/03/13/9a972f32-db01-4bc1-ab24-03b421d9a03a/', 0, 'customize_changeset', '', 0),
(10, 1, '2017-03-13 14:18:36', '2017-03-13 14:18:36', '{"page_on_front":{"value":"0","type":"option","user_id":1}}', '', '', 'trash', 'closed', 'closed', '', 'f3121933-8292-46cd-b10b-4b7af8fe46da', '', '', '2017-03-13 14:18:36', '2017-03-13 14:18:36', '', 0, 'http://localhost/vcs-2/ilja-shum/2017/03/13/f3121933-8292-46cd-b10b-4b7af8fe46da/', 0, 'customize_changeset', '', 0),
(12, 1, '2017-03-14 13:07:15', '2017-03-14 13:07:15', '{"blogname":{"value":"Mew22222","type":"option","user_id":1}}', '', '', 'trash', 'closed', 'closed', '', 'a28ca275-d042-42eb-8d9b-310b7d41ce27', '', '', '2017-03-14 13:07:15', '2017-03-14 13:07:15', '', 0, 'http://localhost/vcs-2/ilja-shum/2017/03/14/a28ca275-d042-42eb-8d9b-310b7d41ce27/', 0, 'customize_changeset', '', 0),
(13, 1, '2017-03-14 13:16:07', '2017-03-14 13:16:07', '{"blogname":{"value":"Mew2","type":"option","user_id":1}}', '', '', 'trash', 'closed', 'closed', '', 'fe40ca99-0ef5-4116-872c-960a480a2080', '', '', '2017-03-14 13:16:07', '2017-03-14 13:16:07', '', 0, 'http://localhost/vcs-2/ilja-shum/2017/03/14/fe40ca99-0ef5-4116-872c-960a480a2080/', 0, 'customize_changeset', '', 0),
(15, 1, '2017-03-15 07:49:32', '0000-00-00 00:00:00', '', 'Home', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-03-15 07:49:32', '0000-00-00 00:00:00', '', 0, 'http://localhost/vcs-2/ilja-shum/?p=15', 1, 'nav_menu_item', '', 0),
(16, 1, '2017-03-15 07:49:32', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-03-15 07:49:32', '0000-00-00 00:00:00', '', 0, 'http://localhost/vcs-2/ilja-shum/?p=16', 1, 'nav_menu_item', '', 0),
(17, 1, '2017-03-15 07:49:32', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-03-15 07:49:32', '0000-00-00 00:00:00', '', 0, 'http://localhost/vcs-2/ilja-shum/?p=17', 1, 'nav_menu_item', '', 0),
(18, 1, '2017-03-15 07:53:47', '2017-03-15 07:53:47', '', 'Products', '', 'publish', 'closed', 'closed', '', 'products', '', '', '2017-03-20 14:31:12', '2017-03-20 14:31:12', '', 0, 'http://localhost/vcs-2/ilja-shum/?p=18', 1, 'nav_menu_item', '', 0),
(19, 1, '2017-03-15 07:53:47', '2017-03-15 07:53:47', '', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2017-03-20 14:31:12', '2017-03-20 14:31:12', '', 0, 'http://localhost/vcs-2/ilja-shum/?p=19', 3, 'nav_menu_item', '', 0),
(21, 1, '2017-03-15 08:40:17', '2017-03-15 08:40:17', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2017-03-17 13:58:00', '2017-03-17 13:58:00', '', 0, 'http://localhost/vcs-2/ilja-shum/?page_id=21', 0, 'page', '', 0),
(22, 1, '2017-03-15 08:40:17', '2017-03-15 08:40:17', '', 'Home', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2017-03-15 08:40:17', '2017-03-15 08:40:17', '', 21, 'http://localhost/vcs-2/ilja-shum/2017/03/15/21-revision-v1/', 0, 'revision', '', 0),
(23, 1, '2017-03-15 08:47:49', '2017-03-15 08:47:49', '', 'Featured Link', '', 'publish', 'closed', 'closed', '', 'acf_featured-link', '', '', '2017-03-15 08:47:49', '2017-03-15 08:47:49', '', 0, 'http://localhost/vcs-2/ilja-shum/?post_type=acf&#038;p=23', 0, 'acf', '', 0),
(24, 1, '2017-03-15 10:13:04', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-03-15 10:13:04', '0000-00-00 00:00:00', '', 0, 'http://localhost/vcs-2/ilja-shum/?post_type=acf&p=24', 0, 'acf', '', 0),
(25, 1, '2017-03-15 11:24:53', '2017-03-15 11:24:53', '', 'Home', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2017-03-15 11:24:53', '2017-03-15 11:24:53', '', 21, 'http://localhost/vcs-2/ilja-shum/21-revision-v1/', 0, 'revision', '', 0),
(26, 1, '2017-03-15 11:45:08', '2017-03-15 11:45:08', '', 'Home', '', 'inherit', 'closed', 'closed', '', '21-autosave-v1', '', '', '2017-03-15 11:45:08', '2017-03-15 11:45:08', '', 21, 'http://localhost/vcs-2/ilja-shum/21-autosave-v1/', 0, 'revision', '', 0),
(27, 1, '2017-03-15 11:43:07', '2017-03-15 11:43:07', 'asdfhjhsasdf', 'Home', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2017-03-15 11:43:07', '2017-03-15 11:43:07', '', 21, 'http://localhost/vcs-2/ilja-shum/21-revision-v1/', 0, 'revision', '', 0),
(28, 1, '2017-03-15 12:01:57', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-03-15 12:01:57', '0000-00-00 00:00:00', '', 0, 'http://localhost/vcs-2/ilja-shum/?p=28', 1, 'nav_menu_item', '', 0),
(35, 1, '2017-03-15 14:13:30', '2017-03-15 14:13:30', '', 'Shop', '', 'publish', 'closed', 'closed', '', 'shop', '', '', '2017-03-17 08:05:41', '2017-03-17 08:05:41', '', 0, 'http://localhost/vcs-2/ilja-shum/shop/', 0, 'page', '', 0),
(36, 1, '2017-03-15 14:13:31', '2017-03-15 14:13:31', '[woocommerce_cart]', 'Cart', '', 'publish', 'closed', 'closed', '', 'cart', '', '', '2017-03-19 13:57:56', '2017-03-19 13:57:56', '', 0, 'http://localhost/vcs-2/ilja-shum/cart/', 0, 'page', '', 0),
(37, 1, '2017-03-15 14:13:31', '2017-03-15 14:13:31', '[woocommerce_checkout]', 'Checkout', '', 'publish', 'closed', 'closed', '', 'checkout', '', '', '2017-03-17 07:19:48', '2017-03-17 07:19:48', '', 0, 'http://localhost/vcs-2/ilja-shum/checkout/', 0, 'page', '', 0),
(38, 1, '2017-03-15 14:13:31', '2017-03-15 14:13:31', '[woocommerce_my_account]', 'My Account', '', 'publish', 'closed', 'closed', '', 'my-account', '', '', '2017-03-15 14:13:31', '2017-03-15 14:13:31', '', 0, 'http://localhost/vcs-2/ilja-shum/my-account/', 0, 'page', '', 0),
(39, 1, '2017-03-15 14:15:05', '2017-03-15 14:15:05', 'rush rush get the yayo 🎶', 'Palms & AKs', 'rush rush get the yayo 🎶', 'publish', 'open', 'closed', '', 'palms', '', '', '2017-03-19 16:08:18', '2017-03-19 16:08:18', '', 0, 'http://localhost/vcs-2/ilja-shum/?post_type=product&#038;p=39', 0, 'product', '', 0),
(40, 1, '2017-03-16 09:28:18', '2017-03-16 09:28:18', '', 'Home page sections', '', 'publish', 'closed', 'closed', '', 'acf_home-page-sections', '', '', '2017-03-16 09:28:18', '2017-03-16 09:28:18', '', 0, 'http://localhost/vcs-2/ilja-shum/?post_type=acf&#038;p=40', 0, 'acf', '', 0),
(41, 1, '2017-03-16 09:28:49', '2017-03-16 09:28:49', 'fgfdsfdsdf<img src="http://localhost/vcs-2/ilja-shum/wp-content/uploads/2017/03/Untitled-compressor-300x169.png" alt="" width="300" height="169" class="alignnone size-medium wp-image-5" />', 'Our restaurant', '', 'publish', 'closed', 'closed', '', 'our-restaurant', '', '', '2017-03-16 09:34:35', '2017-03-16 09:34:35', '', 0, 'http://localhost/vcs-2/ilja-shum/?page_id=41', 0, 'page', '', 0),
(42, 1, '2017-03-16 09:28:49', '2017-03-16 09:28:49', 'fgfdsfdsdf', 'Our restaurant', '', 'inherit', 'closed', 'closed', '', '41-revision-v1', '', '', '2017-03-16 09:28:49', '2017-03-16 09:28:49', '', 41, 'http://localhost/vcs-2/ilja-shum/41-revision-v1/', 0, 'revision', '', 0),
(43, 1, '2017-03-16 09:29:17', '2017-03-16 09:29:17', 'asdfhjhsasdf', 'Home', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2017-03-16 09:29:17', '2017-03-16 09:29:17', '', 21, 'http://localhost/vcs-2/ilja-shum/21-revision-v1/', 0, 'revision', '', 0),
(44, 1, '2017-03-16 09:34:35', '2017-03-16 09:34:35', 'fgfdsfdsdf<img src="http://localhost/vcs-2/ilja-shum/wp-content/uploads/2017/03/Untitled-compressor-300x169.png" alt="" width="300" height="169" class="alignnone size-medium wp-image-5" />', 'Our restaurant', '', 'inherit', 'closed', 'closed', '', '41-revision-v1', '', '', '2017-03-16 09:34:35', '2017-03-16 09:34:35', '', 41, 'http://localhost/vcs-2/ilja-shum/41-revision-v1/', 0, 'revision', '', 0),
(47, 1, '2017-03-16 11:58:53', '2017-03-16 11:58:53', '{"vcs-starter::custom_logo":{"value":46,"type":"theme_mod","user_id":1}}', '', '', 'trash', 'closed', 'closed', '', '59645aae-6670-48df-8cd3-196d565d993e', '', '', '2017-03-16 11:58:53', '2017-03-16 11:58:53', '', 0, 'http://localhost/vcs-2/ilja-shum/59645aae-6670-48df-8cd3-196d565d993e/', 0, 'customize_changeset', '', 0),
(48, 1, '2017-03-16 12:55:22', '2017-03-16 12:55:22', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo', '', '', '2017-03-16 12:55:22', '2017-03-16 12:55:22', '', 0, 'http://localhost/vcs-2/ilja-shum/wp-content/uploads/logo.png', 0, 'attachment', 'image/png', 0),
(49, 1, '2017-03-16 12:55:30', '2017-03-16 12:55:30', '{"vcs-starter::custom_logo":{"value":48,"type":"theme_mod","user_id":1}}', '', '', 'trash', 'closed', 'closed', '', '3b9ff71a-4f3b-4441-ba1c-5347df168508', '', '', '2017-03-16 12:55:30', '2017-03-16 12:55:30', '', 0, 'http://localhost/vcs-2/ilja-shum/3b9ff71a-4f3b-4441-ba1c-5347df168508/', 0, 'customize_changeset', '', 0),
(50, 1, '2017-03-16 13:01:02', '2017-03-16 13:01:02', 'http://localhost/vcs-2/ilja-shum/wp-content/uploads/2017/03/cropped-Untitled-compressor.png', 'cropped-Untitled-compressor.png', '', 'inherit', 'open', 'closed', '', 'cropped-untitled-compressor-png', '', '', '2017-03-16 13:01:02', '2017-03-16 13:01:02', '', 0, 'http://localhost/vcs-2/ilja-shum/wp-content/uploads/2017/03/cropped-Untitled-compressor.png', 0, 'attachment', 'image/png', 0),
(51, 1, '2017-03-16 13:01:07', '2017-03-16 13:01:07', '{"vcs-starter::custom_logo":{"value":50,"type":"theme_mod","user_id":1}}', '', '', 'trash', 'closed', 'closed', '', 'b462b2a4-0c7c-4648-b1d9-23cd1021c645', '', '', '2017-03-16 13:01:07', '2017-03-16 13:01:07', '', 0, 'http://localhost/vcs-2/ilja-shum/b462b2a4-0c7c-4648-b1d9-23cd1021c645/', 0, 'customize_changeset', '', 0),
(52, 1, '2017-03-16 13:51:41', '2017-03-16 13:51:41', '[woocommerce_cart]', 'Cart', '', 'inherit', 'closed', 'closed', '', '36-revision-v1', '', '', '2017-03-16 13:51:41', '2017-03-16 13:51:41', '', 36, 'http://localhost/vcs-2/ilja-shum/36-revision-v1/', 0, 'revision', '', 0),
(53, 1, '2017-03-17 07:19:48', '2017-03-17 07:19:48', '[woocommerce_checkout]', 'Checkout', '', 'inherit', 'closed', 'closed', '', '37-revision-v1', '', '', '2017-03-17 07:19:48', '2017-03-17 07:19:48', '', 37, 'http://localhost/vcs-2/ilja-shum/37-revision-v1/', 0, 'revision', '', 0),
(54, 1, '2017-03-17 08:02:50', '2017-03-17 08:02:50', 'DrinkQT is a 5-calorie, sugar-free, 250ml drink, manufactured to contribute to upward shine, vertical connectivity and personal growth.', 'QT Drink', 'DrinkQT is a 5-calorie, sugar-free, 250ml drink.', 'publish', 'open', 'closed', '', 'qt-drink', '', '', '2017-03-17 08:02:50', '2017-03-17 08:02:50', '', 0, 'http://localhost/vcs-2/ilja-shum/?post_type=product&#038;p=54', 0, 'product', '', 0),
(55, 1, '2017-03-17 08:01:43', '2017-03-17 08:01:43', '', 'artworks-000088403795-zu4l07-t500x500', '', 'inherit', 'open', 'closed', '', 'artworks-000088403795-zu4l07-t500x500', '', '', '2017-03-17 08:01:43', '2017-03-17 08:01:43', '', 54, 'http://localhost/vcs-2/ilja-shum/wp-content/uploads/artworks-000088403795-zu4l07-t500x500.jpg', 0, 'attachment', 'image/jpeg', 0),
(56, 1, '2017-03-17 08:05:00', '2017-03-17 08:05:00', '', 'Shop', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2017-03-17 08:05:00', '2017-03-17 08:05:00', '', 35, 'http://localhost/vcs-2/ilja-shum/35-revision-v1/', 0, 'revision', '', 0),
(57, 1, '2017-03-17 13:49:45', '2017-03-17 13:49:45', '<label> Your Name (required)\r\n    [text* your-name] </label>\r\n\r\n<label> Your Email (required)\r\n    [email* your-email] </label>\r\n\r\n<label> Your Message\r\n    [textarea your-message] </label>\r\n\r\n[submit "Send"]\n1\nMew2 reikaliukai\n[your-name] <lomonosow@gmail.com>\nlomonosow@gmail.com\nFrom: [your-name] <[your-email]>\r\nSubject: Mew2 reikaliukai\r\n\r\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on Mew2 (http://localhost/vcs-2/ilja-shum)\nReply-To: [your-email]\n\n\n1\n\nMew2 "[your-subject]"\nMew2 <lomonosow@gmail.com>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on Mew2 (http://localhost/vcs-2/ilja-shum)\nReply-To: lomonosow@gmail.com\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nYour entered code is incorrect.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.', 'Contact form 1', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2017-03-20 08:17:45', '2017-03-20 08:17:45', '', 0, 'http://localhost/vcs-2/ilja-shum/?post_type=wpcf7_contact_form&#038;p=57', 0, 'wpcf7_contact_form', '', 0),
(58, 1, '2017-03-17 13:52:42', '2017-03-17 13:52:42', '[contact-form-7 id="57" title="Contact form 1"]\r\naaaaaaaaaaa', 'Contact form', '', 'trash', 'closed', 'closed', '', 'contact-form__trashed', '', '', '2017-03-17 14:16:34', '2017-03-17 14:16:34', '', 0, 'http://localhost/vcs-2/ilja-shum/?page_id=58', 0, 'page', '', 0),
(59, 1, '2017-03-17 13:52:42', '2017-03-17 13:52:42', '[contact-form-7 id="57" title="Contact form 1"]', 'Contact form', '', 'inherit', 'closed', 'closed', '', '58-revision-v1', '', '', '2017-03-17 13:52:42', '2017-03-17 13:52:42', '', 58, 'http://localhost/vcs-2/ilja-shum/58-revision-v1/', 0, 'revision', '', 0),
(60, 1, '2017-03-17 13:57:05', '2017-03-17 13:57:05', '[contact-form-7 id="57" title="Contact form 1"]', 'Home', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2017-03-17 13:57:05', '2017-03-17 13:57:05', '', 21, 'http://localhost/vcs-2/ilja-shum/21-revision-v1/', 0, 'revision', '', 0),
(61, 1, '2017-03-17 13:58:00', '2017-03-17 13:58:00', '', 'Home', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2017-03-17 13:58:00', '2017-03-17 13:58:00', '', 21, 'http://localhost/vcs-2/ilja-shum/21-revision-v1/', 0, 'revision', '', 0),
(62, 1, '2017-03-17 14:03:11', '2017-03-17 14:03:11', '[contact-form-7 id="57" title="Contact form 1"]\r\naaaaaaaaaaa', 'Contact form', '', 'inherit', 'closed', 'closed', '', '58-revision-v1', '', '', '2017-03-17 14:03:11', '2017-03-17 14:03:11', '', 58, 'http://localhost/vcs-2/ilja-shum/58-revision-v1/', 0, 'revision', '', 0),
(63, 1, '2017-03-19 13:55:49', '2017-03-19 13:55:49', '[woocommerce_cart]\n[all_products]', 'Cart', '', 'inherit', 'closed', 'closed', '', '36-autosave-v1', '', '', '2017-03-19 13:55:49', '2017-03-19 13:55:49', '', 36, 'http://localhost/vcs-2/ilja-shum/36-autosave-v1/', 0, 'revision', '', 0),
(64, 1, '2017-03-19 13:55:52', '2017-03-19 13:55:52', '[woocommerce_cart]\r\n[all_products]', 'Cart', '', 'inherit', 'closed', 'closed', '', '36-revision-v1', '', '', '2017-03-19 13:55:52', '2017-03-19 13:55:52', '', 36, 'http://localhost/vcs-2/ilja-shum/36-revision-v1/', 0, 'revision', '', 0),
(65, 1, '2017-03-19 13:57:56', '2017-03-19 13:57:56', '[woocommerce_cart]', 'Cart', '', 'inherit', 'closed', 'closed', '', '36-revision-v1', '', '', '2017-03-19 13:57:56', '2017-03-19 13:57:56', '', 36, 'http://localhost/vcs-2/ilja-shum/36-revision-v1/', 0, 'revision', '', 0),
(66, 1, '2017-03-19 16:04:41', '2017-03-19 16:04:41', '', 'palms malibu2', '', 'inherit', 'open', 'closed', '', 'palms-malibu2', '', '', '2017-03-19 16:04:41', '2017-03-19 16:04:41', '', 39, 'http://localhost/vcs-2/ilja-shum/wp-content/uploads/palms-malibu2.jpg', 0, 'attachment', 'image/jpeg', 0),
(67, 1, '2017-03-19 16:04:56', '2017-03-19 16:04:56', '', '1calls-codeine', '', 'inherit', 'open', 'closed', '', '1calls-codeine', '', '', '2017-03-19 16:04:56', '2017-03-19 16:04:56', '', 39, 'http://localhost/vcs-2/ilja-shum/wp-content/uploads/1calls-codeine.jpg', 0, 'attachment', 'image/jpeg', 0),
(68, 1, '2017-03-19 16:05:01', '2017-03-19 16:05:01', '', 'clrx3', '', 'inherit', 'open', 'closed', '', 'clrx3', '', '', '2017-03-19 16:05:01', '2017-03-19 16:05:01', '', 39, 'http://localhost/vcs-2/ilja-shum/wp-content/uploads/clrx3.jpg', 0, 'attachment', 'image/jpeg', 0),
(69, 1, '2017-03-19 16:06:18', '2017-03-19 16:06:18', 'rush rush get the yayo 🎶', 'First Product', 'rush rush get the yayo 🎶', 'inherit', 'closed', 'closed', '', '39-autosave-v1', '', '', '2017-03-19 16:06:18', '2017-03-19 16:06:18', '', 39, 'http://localhost/vcs-2/ilja-shum/39-autosave-v1/', 0, 'revision', '', 0),
(70, 1, '2017-03-19 16:07:30', '2017-03-19 16:07:30', '', 'palms2', '', 'inherit', 'open', 'closed', '', 'palms2', '', '', '2017-03-19 16:07:30', '2017-03-19 16:07:30', '', 39, 'http://localhost/vcs-2/ilja-shum/wp-content/uploads/palms2.jpg', 0, 'attachment', 'image/jpeg', 0),
(71, 1, '2017-03-19 16:07:41', '2017-03-19 16:07:41', '', 'palms3', '', 'inherit', 'open', 'closed', '', 'palms3', '', '', '2017-03-19 16:07:41', '2017-03-19 16:07:41', '', 39, 'http://localhost/vcs-2/ilja-shum/wp-content/uploads/palms3.jpg', 0, 'attachment', 'image/jpeg', 0),
(72, 1, '2017-03-19 16:22:02', '2017-03-19 16:22:02', 'please get well soon🌹', '0 calls', 'why&#039;d you only call me when you&#039;re high?', 'publish', 'open', 'closed', '', '0-calls', '', '', '2017-03-19 16:30:02', '2017-03-19 16:30:02', '', 0, 'http://localhost/vcs-2/ilja-shum/?post_type=product&#038;p=72', 0, 'product', '', 0),
(73, 1, '2017-03-19 16:20:29', '2017-03-19 16:20:29', '', '0calls1', '', 'inherit', 'open', 'closed', '', '0calls1', '', '', '2017-03-19 16:20:29', '2017-03-19 16:20:29', '', 72, 'http://localhost/vcs-2/ilja-shum/wp-content/uploads/0calls1.jpg', 0, 'attachment', 'image/jpeg', 0),
(74, 1, '2017-03-19 16:20:32', '2017-03-19 16:20:32', '', '0calls2', '', 'inherit', 'open', 'closed', '', '0calls2', '', '', '2017-03-19 16:20:32', '2017-03-19 16:20:32', '', 72, 'http://localhost/vcs-2/ilja-shum/wp-content/uploads/0calls2.jpg', 0, 'attachment', 'image/jpeg', 0),
(75, 1, '2017-03-19 16:28:05', '2017-03-19 16:28:05', 'still in search of a perfect coctail recipe', 'refresh', 'for those perfect moments of sipping delicious cocktails in a gentle summer breeze', 'publish', 'open', 'closed', '', 'refresh', '', '', '2017-03-19 17:18:36', '2017-03-19 17:18:36', '', 0, 'http://localhost/vcs-2/ilja-shum/?post_type=product&#038;p=75', 0, 'product', '', 0),
(76, 1, '2017-03-19 16:26:42', '2017-03-19 16:26:42', '', 'clorox', '', 'inherit', 'open', 'closed', '', 'clorox', '', '', '2017-03-19 16:26:42', '2017-03-19 16:26:42', '', 75, 'http://localhost/vcs-2/ilja-shum/wp-content/uploads/clorox.jpg', 0, 'attachment', 'image/jpeg', 0),
(77, 1, '2017-03-19 16:29:57', '2017-03-19 16:29:57', '', 'woman-1calls', '', 'inherit', 'open', 'closed', '', 'woman-1calls', '', '', '2017-03-19 16:29:57', '2017-03-19 16:29:57', '', 72, 'http://localhost/vcs-2/ilja-shum/wp-content/uploads/woman-1calls.jpg', 0, 'attachment', 'image/jpeg', 0),
(78, 1, '2017-03-19 16:31:04', '2017-03-19 16:31:04', 'please get well soon🌹', 'b', 'why&#039;d you only call me when you&#039;re high?', 'inherit', 'closed', 'closed', '', '72-autosave-v1', '', '', '2017-03-19 16:31:04', '2017-03-19 16:31:04', '', 72, 'http://localhost/vcs-2/ilja-shum/72-autosave-v1/', 0, 'revision', '', 0),
(79, 1, '2017-03-19 16:35:28', '2017-03-19 16:35:28', 'almost siberian tiger', 'barsik', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'publish', 'open', 'closed', '', 'barsik', '', '', '2017-03-20 14:23:58', '2017-03-20 14:23:58', '', 0, 'http://localhost/vcs-2/ilja-shum/?post_type=product&#038;p=79', 0, 'product', '', 0),
(80, 1, '2017-03-19 16:34:38', '2017-03-19 16:34:38', '', '12725035_1690169294563654_1927161651_n', '', 'inherit', 'open', 'closed', '', '12725035_1690169294563654_1927161651_n', '', '', '2017-03-19 16:34:38', '2017-03-19 16:34:38', '', 79, 'http://localhost/vcs-2/ilja-shum/wp-content/uploads/12725035_1690169294563654_1927161651_n.jpg', 0, 'attachment', 'image/jpeg', 0),
(81, 1, '2017-03-19 16:35:22', '2017-03-19 16:35:22', '', '12728475_1656054941311273_832264152_n', '', 'inherit', 'open', 'closed', '', '12728475_1656054941311273_832264152_n', '', '', '2017-03-19 16:35:22', '2017-03-19 16:35:22', '', 79, 'http://localhost/vcs-2/ilja-shum/wp-content/uploads/12728475_1656054941311273_832264152_n.jpg', 0, 'attachment', 'image/jpeg', 0),
(82, 1, '2017-03-19 16:35:22', '2017-03-19 16:35:22', '', '12224141_1491713804492322_848021224_n', '', 'inherit', 'open', 'closed', '', '12224141_1491713804492322_848021224_n', '', '', '2017-03-19 16:35:22', '2017-03-19 16:35:22', '', 79, 'http://localhost/vcs-2/ilja-shum/wp-content/uploads/12224141_1491713804492322_848021224_n.jpg', 0, 'attachment', 'image/jpeg', 0),
(83, 1, '2017-03-19 16:37:14', '2017-03-19 16:37:14', '', 'header logo', '', 'inherit', 'open', 'closed', '', 'header-logo', '', '', '2017-03-19 16:37:14', '2017-03-19 16:37:14', '', 0, 'http://localhost/vcs-2/ilja-shum/wp-content/uploads/header-logo.png', 0, 'attachment', 'image/png', 0),
(84, 1, '2017-03-19 16:37:22', '2017-03-19 16:37:22', '{"vcs-starter::custom_logo":{"value":83,"type":"theme_mod","user_id":1}}', '', '', 'trash', 'closed', 'closed', '', '74e653c1-d8e9-4650-83eb-04d21a122049', '', '', '2017-03-19 16:37:22', '2017-03-19 16:37:22', '', 0, 'http://localhost/vcs-2/ilja-shum/74e653c1-d8e9-4650-83eb-04d21a122049/', 0, 'customize_changeset', '', 0),
(85, 1, '2017-03-19 17:15:19', '2017-03-19 17:15:19', 'hello im meowingtons', 'meowingtons', 'product title goes here', 'publish', 'open', 'closed', '', 'meowingtons', '', '', '2017-03-20 11:42:40', '2017-03-20 11:42:40', '', 0, 'http://localhost/vcs-2/ilja-shum/?post_type=product&#038;p=85', 0, 'product', '', 0),
(86, 1, '2017-03-19 17:14:45', '2017-03-19 17:14:45', '', 'meow', '', 'inherit', 'open', 'closed', '', 'meow', '', '', '2017-03-19 17:14:45', '2017-03-19 17:14:45', '', 85, 'http://localhost/vcs-2/ilja-shum/wp-content/uploads/meow.jpg', 0, 'attachment', 'image/jpeg', 0),
(88, 1, '2017-03-19 17:38:04', '2017-03-19 17:38:04', '{"vcs-starter::custom_logo":{"value":87,"type":"theme_mod","user_id":1}}', '', '', 'trash', 'closed', 'closed', '', 'a7b5c6bf-bdbb-4043-b9d9-8c6977c9a774', '', '', '2017-03-19 17:38:04', '2017-03-19 17:38:04', '', 0, 'http://localhost/vcs-2/ilja-shum/a7b5c6bf-bdbb-4043-b9d9-8c6977c9a774/', 0, 'customize_changeset', '', 0),
(89, 1, '2017-03-19 17:40:04', '2017-03-19 17:40:04', '', 'header-logo-smalll-compressor', '', 'inherit', 'open', 'closed', '', 'header-logo-smalll-compressor', '', '', '2017-03-19 17:40:04', '2017-03-19 17:40:04', '', 0, 'http://localhost/vcs-2/ilja-shum/wp-content/uploads/header-logo-smalll-compressor.png', 0, 'attachment', 'image/png', 0),
(90, 1, '2017-03-19 17:40:11', '2017-03-19 17:40:11', '{"vcs-starter::custom_logo":{"value":89,"type":"theme_mod","user_id":1}}', '', '', 'trash', 'closed', 'closed', '', '8893f5a6-e548-432d-af64-c77b1fe81fe9', '', '', '2017-03-19 17:40:11', '2017-03-19 17:40:11', '', 0, 'http://localhost/vcs-2/ilja-shum/8893f5a6-e548-432d-af64-c77b1fe81fe9/', 0, 'customize_changeset', '', 0),
(91, 1, '2017-03-20 07:35:43', '2017-03-20 07:35:43', '<p>Write us regarding your consumption-related concerns and we\'ll get back at you asap. Of course you may use this field in therapeutic means too. It can handle a lot. No need to be shy or concise. Of course, depends on your device\'s capabilities though. </p>\r\n', 'Contact Form', '', 'publish', 'closed', 'closed', '', 'contact-form', '', '', '2017-03-21 17:45:11', '2017-03-21 17:45:11', '', 0, 'http://localhost/vcs-2/ilja-shum/?page_id=91', 0, 'page', '', 0),
(92, 1, '2017-03-20 07:35:43', '2017-03-20 07:35:43', 'Lil sumthin', 'Contact Form', '', 'inherit', 'closed', 'closed', '', '91-revision-v1', '', '', '2017-03-20 07:35:43', '2017-03-20 07:35:43', '', 91, 'http://localhost/vcs-2/ilja-shum/91-revision-v1/', 0, 'revision', '', 0),
(93, 1, '2017-03-20 07:44:51', '2017-03-20 07:44:51', '<p>Lil sumthin</p>', 'Contact Form', '', 'inherit', 'closed', 'closed', '', '91-revision-v1', '', '', '2017-03-20 07:44:51', '2017-03-20 07:44:51', '', 91, 'http://localhost/vcs-2/ilja-shum/91-revision-v1/', 0, 'revision', '', 0),
(94, 1, '2017-03-20 07:55:37', '2017-03-20 07:55:37', '', 'Form', '', 'publish', 'closed', 'closed', '', 'acf_form', '', '', '2017-03-20 09:48:37', '2017-03-20 09:48:37', '', 0, 'http://localhost/vcs-2/ilja-shum/?post_type=acf&#038;p=94', 0, 'acf', '', 0),
(95, 1, '2017-03-20 08:10:04', '2017-03-20 08:10:04', '<p>Lil sumthin</p>\r\n[contact-form-7 id="57" title="Contact form 1"]', 'Contact Form', '', 'inherit', 'closed', 'closed', '', '91-revision-v1', '', '', '2017-03-20 08:10:04', '2017-03-20 08:10:04', '', 91, 'http://localhost/vcs-2/ilja-shum/91-revision-v1/', 0, 'revision', '', 0),
(96, 1, '2017-03-20 08:33:41', '2017-03-20 08:33:41', '<label> Your Name (required)\r\n    [text* your-name] </label>\r\n\r\n<label> Your Email (required)\r\n    [email* your-email] </label>\r\n\r\n<label> Subject\r\n    [text your-subject] </label>\r\n\r\n<label> Your Message\r\n    [textarea your-message] </label>\r\n\r\n[submit "Send"]\n1\nMew2 "[your-subject]"\n[your-name] <lomonosow@gmail.com>\nlomonosow@gmail.com\nFrom: [your-name] <[your-email]>\r\nSubject: [your-subject]\r\n\r\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on Mew2 (http://localhost/vcs-2/ilja-shum)\nReply-To: [your-email]\n\n\n\n\nMew2 "[your-subject]"\nMew2 <lomonosow@gmail.com>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on Mew2 (http://localhost/vcs-2/ilja-shum)\nReply-To: lomonosow@gmail.com\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nYour entered code is incorrect.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.', 'Contact Form 2 (with subject)', '', 'publish', 'closed', 'closed', '', 'contact-form-2-with-subject', '', '', '2017-03-20 08:33:41', '2017-03-20 08:33:41', '', 0, 'http://localhost/vcs-2/ilja-shum/?post_type=wpcf7_contact_form&p=96', 0, 'wpcf7_contact_form', '', 0),
(97, 1, '2017-03-20 08:35:29', '2017-03-20 08:35:29', '<p>Lil sumthin</p>\r\n', 'Contact Form', '', 'inherit', 'closed', 'closed', '', '91-revision-v1', '', '', '2017-03-20 08:35:29', '2017-03-20 08:35:29', '', 91, 'http://localhost/vcs-2/ilja-shum/91-revision-v1/', 0, 'revision', '', 0),
(98, 1, '2017-03-20 09:02:03', '2017-03-20 09:02:03', '<p>Lil sumthin</p>\r\n', 'Contact Form', '', 'inherit', 'closed', 'closed', '', '91-revision-v1', '', '', '2017-03-20 09:02:03', '2017-03-20 09:02:03', '', 91, 'http://localhost/vcs-2/ilja-shum/91-revision-v1/', 0, 'revision', '', 0),
(99, 1, '2017-03-20 09:06:28', '2017-03-20 09:06:28', '<p>Lil sumthin</p>\r\n', 'Contact Form', '', 'inherit', 'closed', 'closed', '', '91-revision-v1', '', '', '2017-03-20 09:06:28', '2017-03-20 09:06:28', '', 91, 'http://localhost/vcs-2/ilja-shum/91-revision-v1/', 0, 'revision', '', 0),
(100, 1, '2017-03-20 09:11:02', '2017-03-20 09:11:02', '<p>Lil sumthin</p>\r\n[contact-form-7 id="57" title="Contact form 1"]\r\n', 'Contact Form', '', 'inherit', 'closed', 'closed', '', '91-revision-v1', '', '', '2017-03-20 09:11:02', '2017-03-20 09:11:02', '', 91, 'http://localhost/vcs-2/ilja-shum/91-revision-v1/', 0, 'revision', '', 0),
(101, 1, '2017-03-20 09:11:23', '2017-03-20 09:11:23', '<p>Lil sumthin</p>\r\n', 'Contact Form', '', 'inherit', 'closed', 'closed', '', '91-revision-v1', '', '', '2017-03-20 09:11:23', '2017-03-20 09:11:23', '', 91, 'http://localhost/vcs-2/ilja-shum/91-revision-v1/', 0, 'revision', '', 0),
(102, 1, '2017-03-20 11:42:35', '2017-03-20 11:42:35', '', '16473700_1254032268013182_2188967369370506074_n', '', 'inherit', 'open', 'closed', '', '16473700_1254032268013182_2188967369370506074_n', '', '', '2017-03-20 11:42:35', '2017-03-20 11:42:35', '', 85, 'http://localhost/vcs-2/ilja-shum/wp-content/uploads/16473700_1254032268013182_2188967369370506074_n.jpg', 0, 'attachment', 'image/jpeg', 0),
(103, 1, '2017-03-20 11:43:16', '2017-03-20 11:43:16', '', '15035793_1306697499363754_1027955419630272512_n', '', 'inherit', 'open', 'closed', '', '15035793_1306697499363754_1027955419630272512_n', '', '', '2017-03-20 11:43:16', '2017-03-20 11:43:16', '', 79, 'http://localhost/vcs-2/ilja-shum/wp-content/uploads/15035793_1306697499363754_1027955419630272512_n.jpg', 0, 'attachment', 'image/jpeg', 0),
(104, 1, '2017-03-20 11:44:15', '2017-03-20 11:44:15', '', '15179129_405831513139506_7552042779142330308_n', '', 'inherit', 'open', 'closed', '', '15179129_405831513139506_7552042779142330308_n', '', '', '2017-03-20 11:44:15', '2017-03-20 11:44:15', '', 79, 'http://localhost/vcs-2/ilja-shum/wp-content/uploads/15179129_405831513139506_7552042779142330308_n.jpg', 0, 'attachment', 'image/jpeg', 0),
(106, 1, '2017-03-20 14:31:12', '2017-03-20 14:31:12', ' ', '', '', 'publish', 'closed', 'closed', '', '106', '', '', '2017-03-20 14:31:12', '2017-03-20 14:31:12', '', 0, 'http://localhost/vcs-2/ilja-shum/?p=106', 2, 'nav_menu_item', '', 0),
(107, 1, '2017-03-21 08:05:06', '2017-03-21 08:05:06', '<p>Write us with your consumption-related concerns and we\'ll get back at you asap. Of course you may use this field in therapeutic means too. These fields can handle a lot. Depends on  </p>\n', 'Contact Form', '', 'inherit', 'closed', 'closed', '', '91-autosave-v1', '', '', '2017-03-21 08:05:06', '2017-03-21 08:05:06', '', 91, 'http://localhost/vcs-2/ilja-shum/91-autosave-v1/', 0, 'revision', '', 0),
(108, 1, '2017-03-21 08:01:53', '2017-03-21 08:01:53', '<p>Write us with your consumption-related concerns and we\'ll get back at you asap. Of course you may also use this field in therapeutic means</p>\r\n', 'Contact Form', '', 'inherit', 'closed', 'closed', '', '91-revision-v1', '', '', '2017-03-21 08:01:53', '2017-03-21 08:01:53', '', 91, 'http://localhost/vcs-2/ilja-shum/91-revision-v1/', 0, 'revision', '', 0),
(109, 1, '2017-03-21 08:06:47', '2017-03-21 08:06:47', '<p>Write us with your consumption-related concerns and we\'ll get back at you asap. Of course you may use this field in therapeutic means too. These fields can handle a lot. No need to be shy or concise. Depends on your device\'s capabilities though </p>\r\n', 'Contact Form', '', 'inherit', 'closed', 'closed', '', '91-revision-v1', '', '', '2017-03-21 08:06:47', '2017-03-21 08:06:47', '', 91, 'http://localhost/vcs-2/ilja-shum/91-revision-v1/', 0, 'revision', '', 0),
(110, 1, '2017-03-21 08:07:54', '2017-03-21 08:07:54', '<p>Write us with your consumption-related concerns and we\'ll get back at you asap. Of course you may use this field in therapeutic means too. These fields can handle a lot. No need to be shy or concise. Depends on your device\'s capabilities though </p>\r\n', '', '', 'inherit', 'closed', 'closed', '', '91-revision-v1', '', '', '2017-03-21 08:07:54', '2017-03-21 08:07:54', '', 91, 'http://localhost/vcs-2/ilja-shum/91-revision-v1/', 0, 'revision', '', 0),
(111, 1, '2017-03-21 08:08:24', '2017-03-21 08:08:24', '<p>Write us with your consumption-related concerns and we\'ll get back at you asap. Of course you may use this field in therapeutic means too. These fields can handle a lot. No need to be shy or concise. Depends on your device\'s capabilities though </p>\r\n', 'Contact Form', '', 'inherit', 'closed', 'closed', '', '91-revision-v1', '', '', '2017-03-21 08:08:24', '2017-03-21 08:08:24', '', 91, 'http://localhost/vcs-2/ilja-shum/91-revision-v1/', 0, 'revision', '', 0),
(112, 1, '2017-03-21 12:17:08', '2017-03-21 12:17:08', '<p>Write us regarding your consumption-related concerns and we\'ll get back at you asap. Of course you may use this field in therapeutic means too. These fields can handle a lot. No need to be shy or concise. Depends on your device\'s capabilities though </p>\r\n', 'Contact Form', '', 'inherit', 'closed', 'closed', '', '91-revision-v1', '', '', '2017-03-21 12:17:08', '2017-03-21 12:17:08', '', 91, 'http://localhost/vcs-2/ilja-shum/91-revision-v1/', 0, 'revision', '', 0),
(113, 1, '2017-03-21 17:43:54', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-03-21 17:43:54', '0000-00-00 00:00:00', '', 0, 'http://localhost/vcs-2/ilja-shum/?p=113', 0, 'post', '', 0),
(114, 1, '2017-03-21 17:45:11', '2017-03-21 17:45:11', '<p>Write us regarding your consumption-related concerns and we\'ll get back at you asap. Of course you may use this field in therapeutic means too. It can handle a lot. No need to be shy or concise. Of course, depends on your device\'s capabilities though. </p>\r\n', 'Contact Form', '', 'inherit', 'closed', 'closed', '', '91-revision-v1', '', '', '2017-03-21 17:45:11', '2017-03-21 17:45:11', '', 91, 'http://localhost/vcs-2/ilja-shum/91-revision-v1/', 0, 'revision', '', 0) ;

#
# End of data contents of table `wp_posts`
# --------------------------------------------------------



#
# Delete any existing table `wp_term_relationships`
#

DROP TABLE IF EXISTS `wp_term_relationships`;


#
# Table structure of table `wp_term_relationships`
#

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_term_relationships`
#
INSERT INTO `wp_term_relationships` ( `object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(18, 2, 0),
(19, 2, 0),
(39, 3, 0),
(54, 3, 0),
(72, 3, 0),
(75, 3, 0),
(79, 3, 0),
(85, 3, 0),
(106, 2, 0) ;

#
# End of data contents of table `wp_term_relationships`
# --------------------------------------------------------



#
# Delete any existing table `wp_term_taxonomy`
#

DROP TABLE IF EXISTS `wp_term_taxonomy`;


#
# Table structure of table `wp_term_taxonomy`
#

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_term_taxonomy`
#
INSERT INTO `wp_term_taxonomy` ( `term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 3),
(3, 3, 'product_type', '', 0, 6),
(4, 4, 'product_type', '', 0, 0),
(5, 5, 'product_type', '', 0, 0),
(6, 6, 'product_type', '', 0, 0) ;

#
# End of data contents of table `wp_term_taxonomy`
# --------------------------------------------------------



#
# Delete any existing table `wp_termmeta`
#

DROP TABLE IF EXISTS `wp_termmeta`;


#
# Table structure of table `wp_termmeta`
#

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_termmeta`
#

#
# End of data contents of table `wp_termmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_terms`
#

DROP TABLE IF EXISTS `wp_terms`;


#
# Table structure of table `wp_terms`
#

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_terms`
#
INSERT INTO `wp_terms` ( `term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Main Nav', 'main-nav', 0),
(3, 'simple', 'simple', 0),
(4, 'grouped', 'grouped', 0),
(5, 'variable', 'variable', 0),
(6, 'external', 'external', 0) ;

#
# End of data contents of table `wp_terms`
# --------------------------------------------------------



#
# Delete any existing table `wp_usermeta`
#

DROP TABLE IF EXISTS `wp_usermeta`;


#
# Table structure of table `wp_usermeta`
#

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_usermeta`
#
INSERT INTO `wp_usermeta` ( `umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'false'),
(10, 1, 'locale', ''),
(11, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(12, 1, 'wp_user_level', '10'),
(13, 1, 'dismissed_wp_pointers', ''),
(14, 1, 'show_welcome_panel', '1'),
(15, 1, 'session_tokens', 'a:3:{s:64:"031fcb4da6ee88005fef2b49d9fc2ad39df46903ea2c9f935af7e0d16cb0b4c0";a:4:{s:10:"expiration";i:1490099873;s:2:"ip";s:3:"::1";s:2:"ua";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36";s:5:"login";i:1489927073;}s:64:"165a86379b9733bbf3714b2f7ef62fc5b10d7e32104770cfbd161842f421e085";a:4:{s:10:"expiration";i:1490167438;s:2:"ip";s:3:"::1";s:2:"ua";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36";s:5:"login";i:1489994638;}s:64:"3228b253485558d2c7c9b18e48105c1aa79136ac4ad9e0b1d378b198a570fa1b";a:4:{s:10:"expiration";i:1491292588;s:2:"ip";s:3:"::1";s:2:"ua";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36";s:5:"login";i:1490082988;}}'),
(16, 1, 'wp_dashboard_quick_press_last_post_id', '113'),
(17, 1, 'wp_user-settings', 'editor=html&libraryContent=browse'),
(18, 1, 'wp_user-settings-time', '1489567212'),
(19, 1, 'managenav-menuscolumnshidden', 'a:4:{i:0;s:11:"link-target";i:1;s:15:"title-attribute";i:2;s:3:"xfn";i:3;s:11:"description";}'),
(20, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:"add-post_tag";}'),
(21, 1, 'nav_menu_recently_edited', '2'),
(22, 1, 'manageedit-shop_ordercolumnshidden', 'a:1:{i:0;s:15:"billing_address";}'),
(23, 1, '_woocommerce_persistent_cart', 'a:1:{s:4:"cart";a:0:{}}') ;

#
# End of data contents of table `wp_usermeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_users`
#

DROP TABLE IF EXISTS `wp_users`;


#
# Table structure of table `wp_users`
#

CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_users`
#
INSERT INTO `wp_users` ( `ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BE5FCVSzBGmWHToKuOJNtUPlu87/xq.', 'admin', 'lomonosow@gmail.com', '', '2017-03-03 09:42:05', '', 0, 'admin') ;

#
# End of data contents of table `wp_users`
# --------------------------------------------------------



#
# Delete any existing table `wp_woocommerce_api_keys`
#

DROP TABLE IF EXISTS `wp_woocommerce_api_keys`;


#
# Table structure of table `wp_woocommerce_api_keys`
#

CREATE TABLE `wp_woocommerce_api_keys` (
  `key_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `permissions` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `consumer_key` char(64) COLLATE utf8_unicode_ci NOT NULL,
  `consumer_secret` char(43) COLLATE utf8_unicode_ci NOT NULL,
  `nonces` longtext COLLATE utf8_unicode_ci,
  `truncated_key` char(7) COLLATE utf8_unicode_ci NOT NULL,
  `last_access` datetime DEFAULT NULL,
  PRIMARY KEY (`key_id`),
  KEY `consumer_key` (`consumer_key`),
  KEY `consumer_secret` (`consumer_secret`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_woocommerce_api_keys`
#

#
# End of data contents of table `wp_woocommerce_api_keys`
# --------------------------------------------------------



#
# Delete any existing table `wp_woocommerce_attribute_taxonomies`
#

DROP TABLE IF EXISTS `wp_woocommerce_attribute_taxonomies`;


#
# Table structure of table `wp_woocommerce_attribute_taxonomies`
#

CREATE TABLE `wp_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `attribute_name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `attribute_label` longtext COLLATE utf8_unicode_ci,
  `attribute_type` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `attribute_orderby` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`attribute_id`),
  KEY `attribute_name` (`attribute_name`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_woocommerce_attribute_taxonomies`
#

#
# End of data contents of table `wp_woocommerce_attribute_taxonomies`
# --------------------------------------------------------



#
# Delete any existing table `wp_woocommerce_downloadable_product_permissions`
#

DROP TABLE IF EXISTS `wp_woocommerce_downloadable_product_permissions`;


#
# Table structure of table `wp_woocommerce_downloadable_product_permissions`
#

CREATE TABLE `wp_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `download_id` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `order_id` bigint(20) NOT NULL DEFAULT '0',
  `order_key` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8_unicode_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`permission_id`),
  KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(191),`download_id`),
  KEY `download_order_product` (`download_id`,`order_id`,`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_woocommerce_downloadable_product_permissions`
#

#
# End of data contents of table `wp_woocommerce_downloadable_product_permissions`
# --------------------------------------------------------



#
# Delete any existing table `wp_woocommerce_order_itemmeta`
#

DROP TABLE IF EXISTS `wp_woocommerce_order_itemmeta`;


#
# Table structure of table `wp_woocommerce_order_itemmeta`
#

CREATE TABLE `wp_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `order_item_id` bigint(20) NOT NULL,
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `order_item_id` (`order_item_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_woocommerce_order_itemmeta`
#

#
# End of data contents of table `wp_woocommerce_order_itemmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_woocommerce_order_items`
#

DROP TABLE IF EXISTS `wp_woocommerce_order_items`;


#
# Table structure of table `wp_woocommerce_order_items`
#

CREATE TABLE `wp_woocommerce_order_items` (
  `order_item_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `order_item_name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) NOT NULL,
  PRIMARY KEY (`order_item_id`),
  KEY `order_id` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_woocommerce_order_items`
#

#
# End of data contents of table `wp_woocommerce_order_items`
# --------------------------------------------------------



#
# Delete any existing table `wp_woocommerce_payment_tokenmeta`
#

DROP TABLE IF EXISTS `wp_woocommerce_payment_tokenmeta`;


#
# Table structure of table `wp_woocommerce_payment_tokenmeta`
#

CREATE TABLE `wp_woocommerce_payment_tokenmeta` (
  `meta_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `payment_token_id` bigint(20) NOT NULL,
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `payment_token_id` (`payment_token_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_woocommerce_payment_tokenmeta`
#

#
# End of data contents of table `wp_woocommerce_payment_tokenmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_woocommerce_payment_tokens`
#

DROP TABLE IF EXISTS `wp_woocommerce_payment_tokens`;


#
# Table structure of table `wp_woocommerce_payment_tokens`
#

CREATE TABLE `wp_woocommerce_payment_tokens` (
  `token_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `gateway_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` text COLLATE utf8_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL DEFAULT '0',
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`token_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_woocommerce_payment_tokens`
#

#
# End of data contents of table `wp_woocommerce_payment_tokens`
# --------------------------------------------------------



#
# Delete any existing table `wp_woocommerce_sessions`
#

DROP TABLE IF EXISTS `wp_woocommerce_sessions`;


#
# Table structure of table `wp_woocommerce_sessions`
#

CREATE TABLE `wp_woocommerce_sessions` (
  `session_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `session_key` char(32) COLLATE utf8_unicode_ci NOT NULL,
  `session_value` longtext COLLATE utf8_unicode_ci NOT NULL,
  `session_expiry` bigint(20) NOT NULL,
  PRIMARY KEY (`session_key`),
  UNIQUE KEY `session_id` (`session_id`)
) ENGINE=InnoDB AUTO_INCREMENT=297 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_woocommerce_sessions`
#
INSERT INTO `wp_woocommerce_sessions` ( `session_id`, `session_key`, `session_value`, `session_expiry`) VALUES
(296, '1', 'a:21:{s:4:"cart";s:6:"a:0:{}";s:15:"applied_coupons";s:6:"a:0:{}";s:23:"coupon_discount_amounts";s:6:"a:0:{}";s:27:"coupon_discount_tax_amounts";s:6:"a:0:{}";s:21:"removed_cart_contents";s:1784:"a:6:{s:32:"d67d8ab4f4c10bf22aa353e27879133c";a:9:{s:10:"product_id";i:39;s:12:"variation_id";i:0;s:9:"variation";a:0:{}s:8:"quantity";i:3;s:10:"line_total";d:9;s:8:"line_tax";i:0;s:13:"line_subtotal";i:9;s:17:"line_subtotal_tax";i:0;s:13:"line_tax_data";a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}}s:32:"d1fe173d08e959397adf34b1d77e88d7";a:9:{s:10:"product_id";i:79;s:12:"variation_id";i:0;s:9:"variation";a:0:{}s:8:"quantity";i:1;s:10:"line_total";d:10;s:8:"line_tax";i:0;s:13:"line_subtotal";i:10;s:17:"line_subtotal_tax";i:0;s:13:"line_tax_data";a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}}s:32:"d09bf41544a3365a46c9077ebb5e35c3";a:9:{s:10:"product_id";i:75;s:12:"variation_id";i:0;s:9:"variation";a:0:{}s:8:"quantity";i:2;s:10:"line_total";d:8;s:8:"line_tax";i:0;s:13:"line_subtotal";i:8;s:17:"line_subtotal_tax";i:0;s:13:"line_tax_data";a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}}s:32:"32bb90e8976aab5298d5da10fe66f21d";a:9:{s:10:"product_id";i:72;s:12:"variation_id";i:0;s:9:"variation";a:0:{}s:8:"quantity";i:1;s:10:"line_total";d:4;s:8:"line_tax";i:0;s:13:"line_subtotal";i:4;s:17:"line_subtotal_tax";i:0;s:13:"line_tax_data";a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}}s:32:"a684eceee76fc522773286a895bc8436";a:9:{s:10:"product_id";i:54;s:12:"variation_id";i:0;s:9:"variation";a:0:{}s:8:"quantity";i:1;s:10:"line_total";d:1.5;s:8:"line_tax";i:0;s:13:"line_subtotal";d:1.5;s:17:"line_subtotal_tax";i:0;s:13:"line_tax_data";a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}}s:32:"3ef815416f775098fe977004015c6193";a:9:{s:10:"product_id";i:85;s:12:"variation_id";i:0;s:9:"variation";a:0:{}s:8:"quantity";i:2;s:10:"line_total";d:20;s:8:"line_tax";i:0;s:13:"line_subtotal";i:20;s:17:"line_subtotal_tax";i:0;s:13:"line_tax_data";a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}}}";s:19:"cart_contents_total";i:0;s:5:"total";i:0;s:8:"subtotal";i:0;s:15:"subtotal_ex_tax";i:0;s:9:"tax_total";i:0;s:5:"taxes";s:6:"a:0:{}";s:14:"shipping_taxes";s:6:"a:0:{}";s:13:"discount_cart";i:0;s:17:"discount_cart_tax";i:0;s:14:"shipping_total";i:0;s:18:"shipping_tax_total";i:0;s:9:"fee_total";i:0;s:4:"fees";s:6:"a:0:{}";s:10:"wc_notices";N;s:21:"chosen_payment_method";s:11:"ppec_paypal";s:8:"customer";s:379:"a:14:{s:8:"postcode";s:0:"";s:4:"city";s:0:"";s:9:"address_1";s:0:"";s:9:"address_2";s:0:"";s:5:"state";s:0:"";s:7:"country";s:2:"LT";s:17:"shipping_postcode";s:0:"";s:13:"shipping_city";s:0:"";s:18:"shipping_address_1";s:0:"";s:18:"shipping_address_2";s:0:"";s:14:"shipping_state";s:0:"";s:16:"shipping_country";s:2:"LT";s:13:"is_vat_exempt";b:0;s:19:"calculated_shipping";b:1;}";}', 1490269087) ;

#
# End of data contents of table `wp_woocommerce_sessions`
# --------------------------------------------------------



#
# Delete any existing table `wp_woocommerce_shipping_zone_locations`
#

DROP TABLE IF EXISTS `wp_woocommerce_shipping_zone_locations`;


#
# Table structure of table `wp_woocommerce_shipping_zone_locations`
#

CREATE TABLE `wp_woocommerce_shipping_zone_locations` (
  `location_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `zone_id` bigint(20) NOT NULL,
  `location_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `location_type` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`location_id`),
  KEY `location_id` (`location_id`),
  KEY `location_type` (`location_type`),
  KEY `location_type_code` (`location_type`,`location_code`(90))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_woocommerce_shipping_zone_locations`
#

#
# End of data contents of table `wp_woocommerce_shipping_zone_locations`
# --------------------------------------------------------



#
# Delete any existing table `wp_woocommerce_shipping_zone_methods`
#

DROP TABLE IF EXISTS `wp_woocommerce_shipping_zone_methods`;


#
# Table structure of table `wp_woocommerce_shipping_zone_methods`
#

CREATE TABLE `wp_woocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) NOT NULL,
  `instance_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `method_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `method_order` bigint(20) NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`instance_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_woocommerce_shipping_zone_methods`
#

#
# End of data contents of table `wp_woocommerce_shipping_zone_methods`
# --------------------------------------------------------



#
# Delete any existing table `wp_woocommerce_shipping_zones`
#

DROP TABLE IF EXISTS `wp_woocommerce_shipping_zones`;


#
# Table structure of table `wp_woocommerce_shipping_zones`
#

CREATE TABLE `wp_woocommerce_shipping_zones` (
  `zone_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `zone_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `zone_order` bigint(20) NOT NULL,
  PRIMARY KEY (`zone_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_woocommerce_shipping_zones`
#

#
# End of data contents of table `wp_woocommerce_shipping_zones`
# --------------------------------------------------------



#
# Delete any existing table `wp_woocommerce_tax_rate_locations`
#

DROP TABLE IF EXISTS `wp_woocommerce_tax_rate_locations`;


#
# Table structure of table `wp_woocommerce_tax_rate_locations`
#

CREATE TABLE `wp_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `location_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tax_rate_id` bigint(20) NOT NULL,
  `location_type` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`location_id`),
  KEY `tax_rate_id` (`tax_rate_id`),
  KEY `location_type` (`location_type`),
  KEY `location_type_code` (`location_type`,`location_code`(90))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_woocommerce_tax_rate_locations`
#

#
# End of data contents of table `wp_woocommerce_tax_rate_locations`
# --------------------------------------------------------



#
# Delete any existing table `wp_woocommerce_tax_rates`
#

DROP TABLE IF EXISTS `wp_woocommerce_tax_rates`;


#
# Table structure of table `wp_woocommerce_tax_rates`
#

CREATE TABLE `wp_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tax_rate_country` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT '0',
  `tax_rate_shipping` int(1) NOT NULL DEFAULT '1',
  `tax_rate_order` bigint(20) NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`tax_rate_id`),
  KEY `tax_rate_country` (`tax_rate_country`(191)),
  KEY `tax_rate_state` (`tax_rate_state`(191)),
  KEY `tax_rate_class` (`tax_rate_class`(191)),
  KEY `tax_rate_priority` (`tax_rate_priority`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_woocommerce_tax_rates`
#

#
# End of data contents of table `wp_woocommerce_tax_rates`
# --------------------------------------------------------

#
# Add constraints back in and apply any alter data queries.
#

