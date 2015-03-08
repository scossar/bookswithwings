# WordPress MySQL database migration
#
# Generated: Sunday 8. March 2015 20:36 UTC
# Hostname: localhost
# Database: `example_dev`
# --------------------------------------------------------

/*!40101 SET NAMES utf8 */;

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
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


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
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_comments`
#
INSERT INTO `wp_comments` ( `comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Mr WordPress', '', 'https://wordpress.org/', '', '2015-03-04 21:12:49', '2015-03-04 21:12:49', 'Hi, this is a comment.\nTo delete a comment, just log in and view the post&#039;s comments. There you will have the option to edit or delete them.', 0, '1', '', '', 0, 0) ;

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
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


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
  `option_name` varchar(64) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB AUTO_INCREMENT=434 DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_options`
#
INSERT INTO `wp_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(3, 'siteurl', 'http://104.236.246.227/wp', 'yes'),
(4, 'home', 'http://104.236.246.227/wp', 'yes'),
(5, 'blogname', 'Books With Wings', 'yes'),
(6, 'blogdescription', 'Just another WordPress site', 'yes'),
(7, 'users_can_register', '1', 'yes'),
(8, 'admin_email', 'scossar3@gmail.com', 'yes'),
(9, 'start_of_week', '1', 'yes'),
(10, 'use_balanceTags', '0', 'yes'),
(11, 'use_smilies', '1', 'yes'),
(12, 'require_name_email', '1', 'yes'),
(13, 'comments_notify', '1', 'yes'),
(14, 'posts_per_rss', '10', 'yes'),
(15, 'rss_use_excerpt', '0', 'yes'),
(16, 'mailserver_url', 'mail.example.com', 'yes'),
(17, 'mailserver_login', 'login@example.com', 'yes'),
(18, 'mailserver_pass', 'password', 'yes'),
(19, 'mailserver_port', '110', 'yes'),
(20, 'default_category', '1', 'yes'),
(21, 'default_comment_status', 'open', 'yes'),
(22, 'default_ping_status', 'open', 'yes'),
(23, 'default_pingback_flag', '1', 'yes'),
(24, 'posts_per_page', '10', 'yes'),
(25, 'date_format', 'F j, Y', 'yes'),
(26, 'time_format', 'g:i a', 'yes'),
(27, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(28, 'comment_moderation', '0', 'yes'),
(29, 'moderation_notify', '1', 'yes'),
(30, 'permalink_structure', '/%postname%/', 'yes'),
(31, 'gzipcompression', '0', 'yes'),
(32, 'hack_file', '0', 'yes'),
(33, 'blog_charset', 'UTF-8', 'yes'),
(34, 'moderation_keys', '', 'no'),
(35, 'active_plugins', 'a:13:{i:0;s:29:"gravityforms/gravityforms.php";i:1;s:37:"admin-menu-editor-pro/menu-editor.php";i:2;s:34:"advanced-custom-fields-pro/acf.php";i:3;s:53:"lightweight-social-icons/lightweight-social-icons.php";i:4;s:41:"password-protected/password-protected.php";i:5;s:29:"profile-builder-pro/index.php";i:6;s:13:"soil/soil.php";i:7;s:63:"testeleven-positioned-content/testeleven-positioned-content.php";i:8;s:35:"uber-login-logo/uber-login-logo.php";i:9;s:31:"wp-migrate-db/wp-migrate-db.php";i:10;s:26:"wp-toolbar-editor/load.php";i:11;s:27:"wpdonations/wpdonations.php";i:12;s:25:"wpmandrill/wpmandrill.php";}', 'yes'),
(36, 'category_base', '', 'yes'),
(37, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(38, 'advanced_edit', '0', 'yes'),
(39, 'comment_max_links', '2', 'yes'),
(40, 'gmt_offset', '0', 'yes'),
(41, 'default_email_category', '1', 'yes'),
(42, 'recently_edited', '', 'no'),
(43, 'template', 'bww', 'yes'),
(44, 'stylesheet', 'bww', 'yes'),
(45, 'comment_whitelist', '1', 'yes'),
(46, 'blacklist_keys', '', 'no'),
(47, 'comment_registration', '0', 'yes'),
(48, 'html_type', 'text/html', 'yes'),
(49, 'use_trackback', '0', 'yes'),
(50, 'default_role', 'subscriber', 'yes'),
(51, 'db_version', '30133', 'yes'),
(52, 'uploads_use_yearmonth_folders', '1', 'yes'),
(53, 'upload_path', '', 'yes'),
(54, 'blog_public', '1', 'yes'),
(55, 'default_link_category', '2', 'yes'),
(56, 'show_on_front', 'page', 'yes'),
(57, 'tag_base', '', 'yes'),
(58, 'show_avatars', '1', 'yes'),
(59, 'avatar_rating', 'G', 'yes'),
(60, 'upload_url_path', '', 'yes'),
(61, 'thumbnail_size_w', '150', 'yes'),
(62, 'thumbnail_size_h', '150', 'yes'),
(63, 'thumbnail_crop', '1', 'yes'),
(64, 'medium_size_w', '300', 'yes'),
(65, 'medium_size_h', '300', 'yes'),
(66, 'avatar_default', 'mystery', 'yes'),
(67, 'large_size_w', '1024', 'yes'),
(68, 'large_size_h', '1024', 'yes'),
(69, 'image_default_link_type', 'file', 'yes'),
(70, 'image_default_size', '', 'yes'),
(71, 'image_default_align', '', 'yes'),
(72, 'close_comments_for_old_posts', '0', 'yes'),
(73, 'close_comments_days_old', '14', 'yes'),
(74, 'thread_comments', '1', 'yes'),
(75, 'thread_comments_depth', '5', 'yes'),
(76, 'page_comments', '0', 'yes'),
(77, 'comments_per_page', '50', 'yes'),
(78, 'default_comments_page', 'newest', 'yes'),
(79, 'comment_order', 'asc', 'yes'),
(80, 'sticky_posts', 'a:0:{}', 'yes'),
(81, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(82, 'widget_text', 'a:0:{}', 'yes'),
(83, 'widget_rss', 'a:0:{}', 'yes'),
(84, 'uninstall_plugins', 'a:1:{s:35:"uber-login-logo/uber-login-logo.php";a:2:{i:0;s:13:"UberLoginLogo";i:1;s:9:"uninstall";}}', 'no'),
(85, 'timezone_string', '', 'yes'),
(86, 'page_for_posts', '0', 'yes'),
(87, 'page_on_front', '8', 'yes'),
(88, 'default_post_format', '0', 'yes'),
(89, 'link_manager_enabled', '0', 'yes'),
(90, 'initial_db_version', '30133', 'yes'),
(91, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:63:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:9:"add_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:16:"manage_donations";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(92, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(93, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(94, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'sidebars_widgets', 'a:4:{s:19:"wp_inactive_widgets";a:0:{}s:15:"sidebar-primary";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:14:"sidebar-footer";a:1:{i:0;s:12:"lsi_widget-2";}s:13:"array_version";i:3;}', 'yes'),
(98, 'bedrock_autoloader', 'a:2:{s:7:"plugins";a:0:{}s:5:"count";i:0;}', 'yes'),
(99, 'cron', 'a:9:{i:1425848751;a:1:{s:16:"wpm_update_stats";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"hourly";s:4:"args";a:0:{}s:8:"interval";i:3600;}}}i:1425849274;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1425849301;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1425850019;a:1:{s:38:"check_plugin_updates-wp-toolbar-editor";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1425851436;a:1:{s:42:"check_plugin_updates-admin-menu-editor-pro";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1425851743;a:1:{s:47:"check_plugin_updates-profile-builder-pro-update";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:12:"every12hours";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1425851802;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1425886860;a:1:{s:20:"wp_maybe_auto_update";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}s:7:"version";i:2;}', 'yes'),
(113, 'can_compress_scripts', '1', 'yes'),
(128, 'theme_mods_twentyfifteen', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1425505738;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(129, 'template_root', '/themes', 'yes') ;
INSERT INTO `wp_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(130, 'stylesheet_root', '/themes', 'yes'),
(131, 'current_theme', 'Books With Wings Theme', 'yes'),
(132, 'theme_mods_bww', 'a:2:{i:0;b:0;s:18:"nav_menu_locations";a:3:{s:18:"primary_navigation";i:2;s:20:"volunteer_navigation";i:5;s:19:"donation_navigation";i:6;}}', 'yes'),
(133, 'theme_switched', '', 'yes'),
(134, 'recently_activated', 'a:2:{s:36:"contact-form-7/wp-contact-form-7.php";i:1425601872;s:49:"sendgrid-email-delivery-simplified/wpsendgrid.php";i:1425596435;}', 'yes'),
(137, 'acf_version', '5.2.0', 'yes'),
(141, 'ws_menu_editor_pro', 'a:16:{s:22:"hide_advanced_settings";b:1;s:16:"show_extra_icons";b:0;s:11:"custom_menu";N;s:18:"first_install_time";i:1425505836;s:21:"display_survey_notice";b:1;s:17:"plugin_db_version";i:140;s:24:"security_logging_enabled";b:0;s:17:"menu_config_scope";s:6:"global";s:13:"plugin_access";s:14:"manage_options";s:15:"allowed_user_id";N;s:28:"plugins_page_allowed_user_id";N;s:27:"show_deprecated_hide_button";N;s:37:"dashboard_hiding_confirmation_enabled";b:1;s:21:"submenu_icons_enabled";s:9:"if_custom";s:16:"ui_colour_scheme";s:7:"classic";s:23:"show_plugin_menu_notice";b:0;}', 'yes'),
(143, 'wsh_license_manager-admin-menu-editor-pro', 'a:3:{s:11:"license_key";N;s:10:"site_token";s:32:"0HM6I8SXM8JEFGK0LD1HDA2ZJIW0609W";s:7:"license";a:7:{s:12:"product_slug";s:21:"admin-menu-editor-pro";s:6:"status";s:5:"valid";s:9:"issued_on";s:25:"2015-02-20T21:00:41+00:00";s:9:"max_sites";N;s:10:"expires_on";s:25:"2016-02-20T21:00:41+00:00";s:8:"site_url";s:25:"http://104.236.246.227/wp";s:11:"renewal_url";s:41:"http://adminmenueditor.com/renew-license/";}}', 'yes'),
(144, 'ame_pro_external_updates', 'O:8:"stdClass":3:{s:9:"lastCheck";i:1425844465;s:14:"checkedVersion";s:4:"1.97";s:6:"update";O:8:"stdClass":7:{s:2:"id";i:0;s:4:"slug";s:21:"admin-menu-editor-pro";s:7:"version";s:4:"1.97";s:8:"homepage";s:27:"http://adminmenueditor.com/";s:12:"download_url";s:151:"http://adminmenueditor.com/?get_product=admin-menu-editor-pro&license_token=0HM6I8SXM8JEFGK0LD1HDA2ZJIW0609W&license_site_url=http://104.236.246.227/wp";s:14:"upgrade_notice";N;s:8:"filename";s:37:"admin-menu-editor-pro/menu-editor.php";}}', 'yes'),
(145, 'acf_pro_license', 'YToyOntzOjM6ImtleSI7czo3MjoiYjNKa1pYSmZhV1E5TkRjeU1ETjhkSGx3WlQxa1pYWmxiRzl3WlhKOFpHRjBaVDB5TURFMUxUQXhMVEExSURFNU9qQXdPakl4IjtzOjM6InVybCI7czoyNjoiaHR0cDovL2Jvb2tzd2l0aHdpbmdzLnByb2QiO30=', 'yes'),
(150, 'wpdonations_is_installed', '1', 'yes'),
(151, 'wpdonations_installed_terms', '1', 'yes'),
(152, 'wpdonations_per_page', '10', 'yes'),
(153, 'wpdonations_general_target', '', 'yes'),
(154, 'wpdonations_hide_anonymous_donations', '', 'yes'),
(155, 'wpdonations_enable_categories', '', 'yes'),
(156, 'wpdonations_enable_campaigns', '1', 'yes'),
(157, 'wpdonations_enable_registration', '1', 'yes'),
(158, 'wpdonations_user_requires_account', '', 'yes'),
(159, 'wpdonations_donor_email_template', 'Dear {display_name},\r\n\r\nThank you for your generous donation of {donation_amount} on {donation_date}. Your willingness to help us is deeply appreciated and we would like to thank you very much for your contribution.\r\n\r\nFrankly, we could not do this without you. We, and those we serve, deeply appreciate your generosity.\r\n\r\nSincerely,\r\n\r\nOur Team', 'yes'),
(160, 'wpdonations_currency', 'CAD', 'yes'),
(161, 'wpdonations_offline_payment_text', '', 'yes'),
(162, 'wpdonations_gateway', 'paypal', 'yes'),
(163, 'wpdonations_paypal_email', 'scossar3-facilitator@gmail.com', 'yes'),
(164, 'wpdonations_paypal_identity_token', '', 'yes'),
(165, 'wpdonations_paypal_sandbox', 'yes', 'yes'),
(166, 'wpdonations_stripe_testmode', 'no', 'yes'),
(167, 'wpdonations_stripe_secret_key', '', 'yes'),
(168, 'wpdonations_stripe_publishable_key', '', 'yes'),
(170, 'wppb_version', '2.1.1', 'yes'),
(171, 'wppb_manage_fields', 'a:14:{i:0;a:21:{s:2:"id";i:1;s:5:"field";s:24:"Default - Name (Heading)";s:9:"meta-name";s:0:"";s:11:"field-title";s:4:"Name";s:11:"description";s:0:"";s:8:"required";s:2:"No";s:18:"overwrite-existing";s:2:"No";s:9:"row-count";s:1:"5";s:24:"allowed-image-extensions";s:2:".*";s:25:"allowed-upload-extensions";s:2:".*";s:11:"avatar-size";s:3:"100";s:11:"date-format";s:8:"mm/dd/yy";s:18:"terms-of-agreement";s:0:"";s:7:"options";s:0:"";s:6:"labels";s:0:"";s:10:"public-key";s:0:"";s:11:"private-key";s:0:"";s:13:"default-value";s:0:"";s:14:"default-option";s:0:"";s:15:"default-options";s:0:"";s:15:"default-content";s:0:"";}i:1;a:23:{s:11:"field-title";s:8:"Username";s:5:"field";s:18:"Default - Username";s:9:"meta-name";s:0:"";s:2:"id";s:1:"2";s:11:"description";s:67:"Your username must may only contain lower-case letters and numbers.";s:9:"row-count";s:1:"5";s:24:"allowed-image-extensions";s:2:".*";s:25:"allowed-upload-extensions";s:2:".*";s:11:"avatar-size";s:3:"100";s:11:"date-format";s:8:"mm/dd/yy";s:18:"terms-of-agreement";s:0:"";s:7:"options";s:0:"";s:6:"labels";s:0:"";s:10:"public-key";s:0:"";s:11:"private-key";s:0:"";s:10:"user-roles";s:0:"";s:21:"user-roles-sort-order";s:41:", editor, author, contributor, subscriber";s:13:"default-value";s:0:"";s:14:"default-option";s:0:"";s:15:"default-options";s:0:"";s:15:"default-content";s:0:"";s:8:"required";s:3:"Yes";s:18:"overwrite-existing";s:2:"No";}i:2;a:21:{s:2:"id";i:3;s:5:"field";s:20:"Default - First Name";s:9:"meta-name";s:10:"first_name";s:11:"field-title";s:10:"First Name";s:11:"description";s:0:"";s:8:"required";s:2:"No";s:18:"overwrite-existing";s:2:"No";s:9:"row-count";s:1:"5";s:24:"allowed-image-extensions";s:2:".*";s:25:"allowed-upload-extensions";s:2:".*";s:11:"avatar-size";s:3:"100";s:11:"date-format";s:8:"mm/dd/yy";s:18:"terms-of-agreement";s:0:"";s:7:"options";s:0:"";s:6:"labels";s:0:"";s:10:"public-key";s:0:"";s:11:"private-key";s:0:"";s:13:"default-value";s:0:"";s:14:"default-option";s:0:"";s:15:"default-options";s:0:"";s:15:"default-content";s:0:"";}i:3;a:21:{s:2:"id";i:4;s:5:"field";s:19:"Default - Last Name";s:9:"meta-name";s:9:"last_name";s:11:"field-title";s:9:"Last Name";s:11:"description";s:0:"";s:8:"required";s:2:"No";s:18:"overwrite-existing";s:2:"No";s:9:"row-count";s:1:"5";s:24:"allowed-image-extensions";s:2:".*";s:25:"allowed-upload-extensions";s:2:".*";s:11:"avatar-size";s:3:"100";s:11:"date-format";s:8:"mm/dd/yy";s:18:"terms-of-agreement";s:0:"";s:7:"options";s:0:"";s:6:"labels";s:0:"";s:10:"public-key";s:0:"";s:11:"private-key";s:0:"";s:13:"default-value";s:0:"";s:14:"default-option";s:0:"";s:15:"default-options";s:0:"";s:15:"default-content";s:0:"";}i:4;a:21:{s:2:"id";i:7;s:5:"field";s:32:"Default - Contact Info (Heading)";s:9:"meta-name";s:0:"";s:11:"field-title";s:12:"Contact Info";s:11:"description";s:0:"";s:8:"required";s:2:"No";s:18:"overwrite-existing";s:2:"No";s:9:"row-count";s:1:"5";s:24:"allowed-image-extensions";s:2:".*";s:25:"allowed-upload-extensions";s:2:".*";s:11:"avatar-size";s:3:"100";s:11:"date-format";s:8:"mm/dd/yy";s:18:"terms-of-agreement";s:0:"";s:7:"options";s:0:"";s:6:"labels";s:0:"";s:10:"public-key";s:0:"";s:11:"private-key";s:0:"";s:13:"default-value";s:0:"";s:14:"default-option";s:0:"";s:15:"default-options";s:0:"";s:15:"default-content";s:0:"";}i:5;a:21:{s:2:"id";i:8;s:5:"field";s:16:"Default - E-mail";s:9:"meta-name";s:0:"";s:11:"field-title";s:6:"E-mail";s:11:"description";s:0:"";s:8:"required";s:3:"Yes";s:18:"overwrite-existing";s:2:"No";s:9:"row-count";s:1:"5";s:24:"allowed-image-extensions";s:2:".*";s:25:"allowed-upload-extensions";s:2:".*";s:11:"avatar-size";s:3:"100";s:11:"date-format";s:8:"mm/dd/yy";s:18:"terms-of-agreement";s:0:"";s:7:"options";s:0:"";s:6:"labels";s:0:"";s:10:"public-key";s:0:"";s:11:"private-key";s:0:"";s:13:"default-value";s:0:"";s:14:"default-option";s:0:"";s:15:"default-options";s:0:"";s:15:"default-content";s:0:"";}i:6;a:23:{s:11:"field-title";s:4:"City";s:5:"field";s:5:"Input";s:9:"meta-name";s:14:"custom_field_1";s:2:"id";s:2:"14";s:11:"description";s:0:"";s:9:"row-count";s:1:"5";s:24:"allowed-image-extensions";s:2:".*";s:25:"allowed-upload-extensions";s:2:".*";s:11:"avatar-size";s:3:"100";s:11:"date-format";s:8:"mm/dd/yy";s:18:"terms-of-agreement";s:0:"";s:7:"options";s:0:"";s:6:"labels";s:0:"";s:10:"public-key";s:0:"";s:11:"private-key";s:0:"";s:10:"user-roles";s:0:"";s:21:"user-roles-sort-order";s:41:", editor, author, contributor, subscriber";s:13:"default-value";s:0:"";s:14:"default-option";s:0:"";s:15:"default-options";s:0:"";s:15:"default-content";s:0:"";s:8:"required";s:2:"No";s:18:"overwrite-existing";s:2:"No";}i:7;a:23:{s:11:"field-title";s:7:"Country";s:5:"field";s:16:"Select (Country)";s:9:"meta-name";s:14:"custom_field_2";s:2:"id";s:2:"15";s:11:"description";s:0:"";s:9:"row-count";s:1:"5";s:24:"allowed-image-extensions";s:2:".*";s:25:"allowed-upload-extensions";s:2:".*";s:11:"avatar-size";s:3:"100";s:11:"date-format";s:8:"mm/dd/yy";s:18:"terms-of-agreement";s:0:"";s:7:"options";s:0:"";s:6:"labels";s:0:"";s:10:"public-key";s:0:"";s:11:"private-key";s:0:"";s:10:"user-roles";s:0:"";s:21:"user-roles-sort-order";s:41:", editor, author, contributor, subscriber";s:13:"default-value";s:0:"";s:14:"default-option";s:0:"";s:15:"default-options";s:0:"";s:15:"default-content";s:0:"";s:8:"required";s:2:"No";s:18:"overwrite-existing";s:2:"No";}i:8;a:23:{s:11:"field-title";s:17:"Province or State";s:5:"field";s:5:"Input";s:9:"meta-name";s:14:"custom_field_3";s:2:"id";s:2:"16";s:11:"description";s:0:"";s:9:"row-count";s:1:"5";s:24:"allowed-image-extensions";s:2:".*";s:25:"allowed-upload-extensions";s:2:".*";s:11:"avatar-size";s:3:"100";s:11:"date-format";s:8:"mm/dd/yy";s:18:"terms-of-agreement";s:0:"";s:7:"options";s:0:"";s:6:"labels";s:0:"";s:10:"public-key";s:0:"";s:11:"private-key";s:0:"";s:10:"user-roles";s:0:"";s:21:"user-roles-sort-order";s:41:", editor, author, contributor, subscriber";s:13:"default-value";s:0:"";s:14:"default-option";s:0:"";s:15:"default-options";s:0:"";s:15:"default-content";s:0:"";s:8:"required";s:2:"No";s:18:"overwrite-existing";s:2:"No";}i:9;a:21:{s:2:"id";i:10;s:5:"field";s:34:"Default - About Yourself (Heading)";s:9:"meta-name";s:0:"";s:11:"field-title";s:14:"About Yourself";s:11:"description";s:0:"";s:8:"required";s:2:"No";s:18:"overwrite-existing";s:2:"No";s:9:"row-count";s:1:"5";s:24:"allowed-image-extensions";s:2:".*";s:25:"allowed-upload-extensions";s:2:".*";s:11:"avatar-size";s:3:"100";s:11:"date-format";s:8:"mm/dd/yy";s:18:"terms-of-agreement";s:0:"";s:7:"options";s:0:"";s:6:"labels";s:0:"";s:10:"public-key";s:0:"";s:11:"private-key";s:0:"";s:13:"default-value";s:0:"";s:14:"default-option";s:0:"";s:15:"default-options";s:0:"";s:15:"default-content";s:0:"";}i:10;a:23:{s:11:"field-title";s:6:"Skills";s:5:"field";s:8:"Textarea";s:9:"meta-name";s:14:"custom_field_4";s:2:"id";s:2:"17";s:11:"description";s:0:"";s:9:"row-count";s:1:"5";s:24:"allowed-image-extensions";s:2:".*";s:25:"allowed-upload-extensions";s:2:".*";s:11:"avatar-size";s:3:"100";s:11:"date-format";s:8:"mm/dd/yy";s:18:"terms-of-agreement";s:0:"";s:7:"options";s:0:"";s:6:"labels";s:0:"";s:10:"public-key";s:0:"";s:11:"private-key";s:0:"";s:10:"user-roles";s:0:"";s:21:"user-roles-sort-order";s:41:", editor, author, contributor, subscriber";s:13:"default-value";s:0:"";s:14:"default-option";s:0:"";s:15:"default-options";s:0:"";s:15:"default-content";s:0:"";s:8:"required";s:2:"No";s:18:"overwrite-existing";s:2:"No";}i:11;a:23:{s:11:"field-title";s:10:"University";s:5:"field";s:5:"Input";s:9:"meta-name";s:14:"custom_field_5";s:2:"id";s:2:"18";s:11:"description";s:82:"Is there a nearby university or learning institution that you are associated with.";s:9:"row-count";s:1:"5";s:24:"allowed-image-extensions";s:2:".*";s:25:"allowed-upload-extensions";s:2:".*";s:11:"avatar-size";s:3:"100";s:11:"date-format";s:8:"mm/dd/yy";s:18:"terms-of-agreement";s:0:"";s:7:"options";s:0:"";s:6:"labels";s:0:"";s:10:"public-key";s:0:"";s:11:"private-key";s:0:"";s:10:"user-roles";s:0:"";s:21:"user-roles-sort-order";s:41:", editor, author, contributor, subscriber";s:13:"default-value";s:0:"";s:14:"default-option";s:0:"";s:15:"default-options";s:0:"";s:15:"default-content";s:0:"";s:8:"required";s:2:"No";s:18:"overwrite-existing";s:2:"No";}i:12;a:21:{s:2:"id";i:12;s:5:"field";s:18:"Default - Password";s:9:"meta-name";s:0:"";s:11:"field-title";s:8:"Password";s:11:"description";s:0:"";s:8:"required";s:3:"Yes";s:18:"overwrite-existing";s:2:"No";s:9:"row-count";s:1:"5";s:24:"allowed-image-extensions";s:2:".*";s:25:"allowed-upload-extensions";s:2:".*";s:11:"avatar-size";s:3:"100";s:11:"date-format";s:8:"mm/dd/yy";s:18:"terms-of-agreement";s:0:"";s:7:"options";s:0:"";s:6:"labels";s:0:"";s:10:"public-key";s:0:"";s:11:"private-key";s:0:"";s:13:"default-value";s:0:"";s:14:"default-option";s:0:"";s:15:"default-options";s:0:"";s:15:"default-content";s:0:"";}i:13;a:21:{s:2:"id";i:13;s:5:"field";s:25:"Default - Repeat Password";s:9:"meta-name";s:0:"";s:11:"field-title";s:15:"Repeat Password";s:11:"description";s:0:"";s:8:"required";s:3:"Yes";s:18:"overwrite-existing";s:2:"No";s:9:"row-count";s:1:"5";s:24:"allowed-image-extensions";s:2:".*";s:25:"allowed-upload-extensions";s:2:".*";s:11:"avatar-size";s:3:"100";s:11:"date-format";s:8:"mm/dd/yy";s:18:"terms-of-agreement";s:0:"";s:7:"options";s:0:"";s:6:"labels";s:0:"";s:10:"public-key";s:0:"";s:11:"private-key";s:0:"";s:13:"default-value";s:0:"";s:14:"default-option";s:0:"";s:15:"default-options";s:0:"";s:15:"default-content";s:0:"";}}', 'yes'),
(172, 'wppb_profile_builder_pro_serial', 'CLPBP-1200-SN-e589cddaad857146da795dcadaed30ce', 'yes'),
(173, 'wppb_profile_builder_pro_serial_status', 'found', 'yes'),
(178, 'WPLANG', '', 'yes'),
(186, 'external_updates-profile-builder-pro-update', 'O:8:"stdClass":3:{s:9:"lastCheck";i:1425831364;s:14:"checkedVersion";s:5:"2.1.1";s:6:"update";O:16:"PluginUpdate_2_0":7:{s:2:"id";i:0;s:4:"slug";s:26:"profile-builder-pro-update";s:7:"version";s:5:"2.1.1";s:8:"homepage";N;s:12:"download_url";s:80:"http://www.cozmoslabs.com/wp-content/plugins/cl_serve_download.php?tempkey=36070";s:14:"upgrade_notice";N;s:8:"filename";N;}}', 'yes'),
(199, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(226, 'category_children', 'a:0:{}', 'yes'),
(232, 'wpcf7', 'a:1:{s:7:"version";s:3:"4.1";}', 'yes'),
(233, 'sendgrid_user', 'scossar', 'yes'),
(234, 'sendgrid_pwd', '1and4isthree', 'yes'),
(235, 'sendgrid_api', 'api', 'yes'),
(236, 'sendgrid_from_name', 'Books With Wings', 'yes'),
(237, 'sendgrid_from_email', 'sicossart@gmail.com', 'yes'),
(238, 'sendgrid_reply_to', '', 'yes'),
(239, 'sendgrid_categories', '', 'yes'),
(252, 'wpmandrill', 'a:5:{s:7:"api_key";s:22:"C5mVbzkb5Ps6XxbX7JNroQ";s:9:"from_name";s:16:"Books With WIngs";s:13:"from_username";s:18:"scossar3@gmail.com";s:8:"reply_to";s:0:"";s:4:"tags";s:0:"";}', 'yes'),
(255, 'wpmandrill-test', 'a:0:{}', 'yes'),
(275, 'gravityformsaddon_gravityformswebapi_version', '1.0', 'yes'),
(276, 'gform_enable_background_updates', '0', 'yes'),
(277, 'rg_form_version', '1.9.3', 'yes'),
(282, 'rg_gforms_disable_css', '1', 'yes'),
(283, 'rg_gforms_enable_html5', '0', 'yes'),
(284, 'gform_enable_noconflict', '1', 'yes'),
(285, 'rg_gforms_enable_akismet', '', 'yes'),
(286, 'rg_gforms_captcha_public_key', '', 'yes'),
(287, 'rg_gforms_captcha_private_key', '', 'yes'),
(288, 'rg_gforms_currency', 'CAD', 'yes'),
(289, 'rg_gforms_message', '<!--GFM--><!-- unregistered copy notice -->\r\n<div style=\\"margin:10px 0 10px 0; border-bottom:1px solid #D7D7D7; text-align:center; display:block!important; visibility: visible!important; min-width:880px;\\"><a href=\\"http://www.gravityforms.com/purchase-gravity-forms/\\" target=\\"_blank\\"><img src=\\"https://gravityforms.s3.amazonaws.com/banners/gravity-forms-unregistered.png\\" width=\\"880\\" height=\\"90\\" alt=\\"Unlicensed Copy. Please purchase a Gravity Forms license\\" title=\\"Unlicensed Copy\\" /></a></div>\r\n<!-- end notice -->', 'yes'),
(292, 'gform_email_count', '8', 'yes'),
(297, 'gravityformsaddon_gravityformswebapi_settings', 'a:4:{s:7:"enabled";s:1:"1";s:10:"public_key";s:10:"7fcaccee4a";s:11:"private_key";s:15:"252978d8b5cc24c";s:19:"impersonate_account";s:1:"1";}', 'yes'),
(340, 'wppb_general_settings', 'a:6:{s:17:"emailConfirmation";s:2:"no";s:21:"activationLandingPage";s:0:"";s:13:"adminApproval";s:2:"no";s:9:"loginWith";s:13:"usernameemail";s:23:"minimum_password_length";s:0:"";s:25:"minimum_password_strength";s:0:"";}', 'yes'),
(356, 'rewrite_rules', 'a:165:{s:18:"positioned_full/?$";s:35:"index.php?post_type=positioned_full";s:48:"positioned_full/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?post_type=positioned_full&feed=$matches[1]";s:43:"positioned_full/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?post_type=positioned_full&feed=$matches[1]";s:35:"positioned_full/page/([0-9]{1,})/?$";s:53:"index.php?post_type=positioned_full&paged=$matches[1]";s:10:"chapter/?$";s:27:"index.php?post_type=chapter";s:54:"chapter/feed/(feed|rdf|rss|rss2|atom|donation_feed)/?$";s:44:"index.php?post_type=chapter&feed=$matches[1]";s:49:"chapter/(feed|rdf|rss|rss2|atom|donation_feed)/?$";s:44:"index.php?post_type=chapter&feed=$matches[1]";s:27:"chapter/page/([0-9]{1,})/?$";s:45:"index.php?post_type=chapter&paged=$matches[1]";s:61:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom|donation_feed)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:56:"category/(.+?)/(feed|rdf|rss|rss2|atom|donation_feed)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:58:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom|donation_feed)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:53:"tag/([^/]+)/(feed|rdf|rss|rss2|atom|donation_feed)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:59:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom|donation_feed)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:54:"type/([^/]+)/(feed|rdf|rss|rss2|atom|donation_feed)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:43:"positioned_full/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:53:"positioned_full/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:87:"positioned_full/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom|donation_feed)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:82:"positioned_full/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom|donation_feed)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:68:"positioned_full/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:36:"positioned_full/([^/]+)/trackback/?$";s:42:"index.php?positioned_full=$matches[1]&tb=1";s:70:"positioned_full/([^/]+)/feed/(feed|rdf|rss|rss2|atom|donation_feed)/?$";s:54:"index.php?positioned_full=$matches[1]&feed=$matches[2]";s:65:"positioned_full/([^/]+)/(feed|rdf|rss|rss2|atom|donation_feed)/?$";s:54:"index.php?positioned_full=$matches[1]&feed=$matches[2]";s:44:"positioned_full/([^/]+)/page/?([0-9]{1,})/?$";s:55:"index.php?positioned_full=$matches[1]&paged=$matches[2]";s:51:"positioned_full/([^/]+)/comment-page-([0-9]{1,})/?$";s:55:"index.php?positioned_full=$matches[1]&cpage=$matches[2]";s:36:"positioned_full/([^/]+)(/[0-9]+)?/?$";s:54:"index.php?positioned_full=$matches[1]&page=$matches[2]";s:32:"positioned_full/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:42:"positioned_full/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:76:"positioned_full/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom|donation_feed)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:71:"positioned_full/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom|donation_feed)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:57:"positioned_full/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:46:"positioned_content/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:56:"positioned_content/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:90:"positioned_content/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom|donation_feed)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:85:"positioned_content/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom|donation_feed)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:71:"positioned_content/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:39:"positioned_content/([^/]+)/trackback/?$";s:45:"index.php?positioned_content=$matches[1]&tb=1";s:47:"positioned_content/([^/]+)/page/?([0-9]{1,})/?$";s:58:"index.php?positioned_content=$matches[1]&paged=$matches[2]";s:54:"positioned_content/([^/]+)/comment-page-([0-9]{1,})/?$";s:58:"index.php?positioned_content=$matches[1]&cpage=$matches[2]";s:39:"positioned_content/([^/]+)(/[0-9]+)?/?$";s:57:"index.php?positioned_content=$matches[1]&page=$matches[2]";s:35:"positioned_content/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:45:"positioned_content/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:79:"positioned_content/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom|donation_feed)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:74:"positioned_content/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom|donation_feed)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"positioned_content/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:44:"positioned_title/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:54:"positioned_title/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:88:"positioned_title/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom|donation_feed)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"positioned_title/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom|donation_feed)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:69:"positioned_title/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:37:"positioned_title/([^/]+)/trackback/?$";s:43:"index.php?positioned_title=$matches[1]&tb=1";s:45:"positioned_title/([^/]+)/page/?([0-9]{1,})/?$";s:56:"index.php?positioned_title=$matches[1]&paged=$matches[2]";s:52:"positioned_title/([^/]+)/comment-page-([0-9]{1,})/?$";s:56:"index.php?positioned_title=$matches[1]&cpage=$matches[2]";s:37:"positioned_title/([^/]+)(/[0-9]+)?/?$";s:55:"index.php?positioned_title=$matches[1]&page=$matches[2]";s:33:"positioned_title/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:43:"positioned_title/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:77:"positioned_title/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom|donation_feed)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"positioned_title/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom|donation_feed)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:58:"positioned_title/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:44:"positioned_image/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:54:"positioned_image/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:88:"positioned_image/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom|donation_feed)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"positioned_image/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom|donation_feed)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:69:"positioned_image/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:37:"positioned_image/([^/]+)/trackback/?$";s:43:"index.php?positioned_image=$matches[1]&tb=1";s:45:"positioned_image/([^/]+)/page/?([0-9]{1,})/?$";s:56:"index.php?positioned_image=$matches[1]&paged=$matches[2]";s:52:"positioned_image/([^/]+)/comment-page-([0-9]{1,})/?$";s:56:"index.php?positioned_image=$matches[1]&cpage=$matches[2]";s:37:"positioned_image/([^/]+)(/[0-9]+)?/?$";s:55:"index.php?positioned_image=$matches[1]&page=$matches[2]";s:33:"positioned_image/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:43:"positioned_image/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:77:"positioned_image/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom|donation_feed)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"positioned_image/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom|donation_feed)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:58:"positioned_image/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:36:"donation/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:46:"donation/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:80:"donation/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom|donation_feed)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:75:"donation/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom|donation_feed)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:61:"donation/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:29:"donation/([^/]+)/trackback/?$";s:35:"index.php?donation=$matches[1]&tb=1";s:37:"donation/([^/]+)/page/?([0-9]{1,})/?$";s:48:"index.php?donation=$matches[1]&paged=$matches[2]";s:44:"donation/([^/]+)/comment-page-([0-9]{1,})/?$";s:48:"index.php?donation=$matches[1]&cpage=$matches[2]";s:29:"donation/([^/]+)(/[0-9]+)?/?$";s:47:"index.php?donation=$matches[1]&page=$matches[2]";s:25:"donation/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:35:"donation/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:69:"donation/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom|donation_feed)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:64:"donation/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom|donation_feed)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:50:"donation/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:35:"chapter/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:45:"chapter/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:79:"chapter/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom|donation_feed)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:74:"chapter/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom|donation_feed)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"chapter/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:28:"chapter/([^/]+)/trackback/?$";s:34:"index.php?chapter=$matches[1]&tb=1";s:62:"chapter/([^/]+)/feed/(feed|rdf|rss|rss2|atom|donation_feed)/?$";s:46:"index.php?chapter=$matches[1]&feed=$matches[2]";s:57:"chapter/([^/]+)/(feed|rdf|rss|rss2|atom|donation_feed)/?$";s:46:"index.php?chapter=$matches[1]&feed=$matches[2]";s:36:"chapter/([^/]+)/page/?([0-9]{1,})/?$";s:47:"index.php?chapter=$matches[1]&paged=$matches[2]";s:43:"chapter/([^/]+)/comment-page-([0-9]{1,})/?$";s:47:"index.php?chapter=$matches[1]&cpage=$matches[2]";s:28:"chapter/([^/]+)(/[0-9]+)?/?$";s:46:"index.php?chapter=$matches[1]&page=$matches[2]";s:24:"chapter/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:34:"chapter/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:68:"chapter/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom|donation_feed)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:63:"chapter/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom|donation_feed)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:49:"chapter/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:12:"robots\\.txt$";s:18:"index.php?robots=1";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:46:"feed/(feed|rdf|rss|rss2|atom|donation_feed)/?$";s:27:"index.php?&feed=$matches[1]";s:41:"(feed|rdf|rss|rss2|atom|donation_feed)/?$";s:27:"index.php?&feed=$matches[1]";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:38:"index.php?&page_id=8&cpage=$matches[1]";s:55:"comments/feed/(feed|rdf|rss|rss2|atom|donation_feed)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:50:"comments/(feed|rdf|rss|rss2|atom|donation_feed)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:58:"search/(.+)/feed/(feed|rdf|rss|rss2|atom|donation_feed)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:53:"search/(.+)/(feed|rdf|rss|rss2|atom|donation_feed)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:61:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom|donation_feed)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:56:"author/([^/]+)/(feed|rdf|rss|rss2|atom|donation_feed)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:83:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom|donation_feed)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:78:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom|donation_feed)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:70:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom|donation_feed)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:65:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom|donation_feed)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:57:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom|donation_feed)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:52:"([0-9]{4})/(feed|rdf|rss|rss2|atom|donation_feed)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:71:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom|donation_feed)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:66:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom|donation_feed)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:54:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom|donation_feed)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:49:"(.?.+?)/(feed|rdf|rss|rss2|atom|donation_feed)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:20:"(.?.+?)(/[0-9]+)?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";s:27:"[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:71:"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom|donation_feed)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:66:"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom|donation_feed)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:20:"([^/]+)/trackback/?$";s:31:"index.php?name=$matches[1]&tb=1";s:54:"([^/]+)/feed/(feed|rdf|rss|rss2|atom|donation_feed)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:49:"([^/]+)/(feed|rdf|rss|rss2|atom|donation_feed)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:28:"([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&paged=$matches[2]";s:35:"([^/]+)/comment-page-([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&cpage=$matches[2]";s:20:"([^/]+)(/[0-9]+)?/?$";s:43:"index.php?name=$matches[1]&page=$matches[2]";s:16:"[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:26:"[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:60:"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom|donation_feed)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:55:"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom|donation_feed)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";}', 'yes'),
(383, 'password_protected_version', '1.9', 'yes'),
(384, 'ws_abe_external_updates', 'O:8:"stdClass":3:{s:9:"lastCheck";i:1425844465;s:14:"checkedVersion";s:3:"1.1";s:6:"update";O:8:"stdClass":7:{s:2:"id";i:0;s:4:"slug";s:17:"wp-toolbar-editor";s:7:"version";s:3:"1.1";s:8:"homepage";s:27:"http://adminmenueditor.com/";s:12:"download_url";s:147:"http://adminmenueditor.com/?get_product=wp-toolbar-editor&license_token=0HM6I8SXM8JEFGK0LD1HDA2ZJIW0609W&license_site_url=http://104.236.246.227/wp";s:14:"upgrade_notice";N;s:8:"filename";s:26:"wp-toolbar-editor/load.php";}}', 'yes'),
(387, 'widget_lsi_widget', 'a:2:{i:2;a:70:{s:5:"title";s:19:"Find us on Facebook";s:13:"border_radius";i:2;s:9:"font_size";i:20;s:10:"background";s:7:"#601771";s:5:"color";s:7:"#FFFFFF";s:16:"background_hover";s:7:"#481256";s:11:"color_hover";s:7:"#FFFFFF";s:10:"new_window";s:0:"";s:9:"alignment";s:4:"left";s:7:"tooltip";s:0:"";s:7:"select1";s:8:"facebook";s:6:"input0";s:52:"https://www.facebook.com/groups/BooksWithWingsCanAm/";s:7:"select3";s:0:"";s:6:"input2";s:0:"";s:7:"select5";s:0:"";s:6:"input4";s:0:"";s:7:"select7";s:0:"";s:6:"input6";s:0:"";s:7:"select9";s:0:"";s:6:"input8";s:0:"";s:8:"select11";s:0:"";s:7:"input10";s:0:"";s:8:"select13";s:0:"";s:7:"input12";s:0:"";s:8:"select15";s:0:"";s:7:"input14";s:0:"";s:8:"select17";s:0:"";s:7:"input16";s:0:"";s:8:"select19";s:0:"";s:7:"input18";s:0:"";s:8:"select21";s:0:"";s:7:"input20";s:0:"";s:8:"select23";s:0:"";s:7:"input22";s:0:"";s:8:"select25";s:0:"";s:7:"input24";s:0:"";s:8:"select27";s:0:"";s:7:"input26";s:0:"";s:8:"select29";s:0:"";s:7:"input28";s:0:"";s:8:"select31";s:0:"";s:7:"input30";s:0:"";s:8:"select33";s:0:"";s:7:"input32";s:0:"";s:8:"select35";s:0:"";s:7:"input34";s:0:"";s:8:"select37";s:0:"";s:7:"input36";s:0:"";s:8:"select39";s:0:"";s:7:"input38";s:0:"";s:8:"select41";s:0:"";s:7:"input40";s:0:"";s:8:"select43";s:0:"";s:7:"input42";s:0:"";s:8:"select45";s:0:"";s:7:"input44";s:0:"";s:8:"select47";s:0:"";s:7:"input46";s:0:"";s:8:"select49";s:0:"";s:7:"input48";s:0:"";s:8:"select51";s:0:"";s:7:"input50";s:0:"";s:8:"select53";s:0:"";s:7:"input52";s:0:"";s:8:"select55";s:0:"";s:7:"input54";s:0:"";s:8:"select57";s:0:"";s:7:"input56";s:0:"";s:8:"select59";s:0:"";s:7:"input58";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes') ;

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
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB AUTO_INCREMENT=639 DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_postmeta`
#
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(8, 7, 'wppb-ul-templates', ''),
(9, 7, 'wppb-single-ul-templates', ''),
(10, 7, 'wppb_ul_page_settings', 'a:1:{i:0;a:6:{s:16:"roles-to-display";s:1:"*";s:19:"number-of-userspage";s:1:"5";s:24:"default-sorting-criteria";s:5:"login";s:21:"default-sorting-order";s:3:"asc";s:27:"avatar-size-all-userlisting";s:2:"40";s:30:"avatar-size-single-userlisting";s:2:"60";}}'),
(11, 8, '_edit_last', '1'),
(12, 8, '_wp_page_template', 'default'),
(13, 8, '_edit_lock', '1425506074:1'),
(16, 11, '_edit_last', '1'),
(17, 11, '_wp_page_template', 'default'),
(18, 11, '_edit_lock', '1425772794:1'),
(19, 13, '_edit_last', '1'),
(20, 13, '_wp_page_template', 'default'),
(21, 13, '_edit_lock', '1425841964:1'),
(22, 15, '_edit_last', '1'),
(23, 15, '_wp_page_template', 'default'),
(24, 15, '_edit_lock', '1425767313:1'),
(25, 17, '_edit_last', '1'),
(26, 17, '_wp_page_template', 'default'),
(27, 17, '_edit_lock', '1425764164:1'),
(28, 19, '_menu_item_type', 'post_type'),
(29, 19, '_menu_item_menu_item_parent', '0'),
(30, 19, '_menu_item_object_id', '8'),
(31, 19, '_menu_item_object', 'page'),
(32, 19, '_menu_item_target', ''),
(33, 19, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(34, 19, '_menu_item_xfn', ''),
(35, 19, '_menu_item_url', ''),
(36, 19, '_menu_item_orphaned', '1425514856'),
(37, 20, '_menu_item_type', 'post_type'),
(38, 20, '_menu_item_menu_item_parent', '0'),
(39, 20, '_menu_item_object_id', '11'),
(40, 20, '_menu_item_object', 'page'),
(41, 20, '_menu_item_target', ''),
(42, 20, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(43, 20, '_menu_item_xfn', ''),
(44, 20, '_menu_item_url', ''),
(45, 20, '_menu_item_orphaned', '1425514856'),
(46, 21, '_menu_item_type', 'post_type'),
(47, 21, '_menu_item_menu_item_parent', '0'),
(48, 21, '_menu_item_object_id', '17'),
(49, 21, '_menu_item_object', 'page'),
(50, 21, '_menu_item_target', ''),
(51, 21, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(52, 21, '_menu_item_xfn', ''),
(53, 21, '_menu_item_url', ''),
(54, 21, '_menu_item_orphaned', '1425514856'),
(55, 22, '_menu_item_type', 'post_type'),
(56, 22, '_menu_item_menu_item_parent', '0'),
(57, 22, '_menu_item_object_id', '15'),
(58, 22, '_menu_item_object', 'page'),
(59, 22, '_menu_item_target', ''),
(60, 22, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(61, 22, '_menu_item_xfn', ''),
(62, 22, '_menu_item_url', ''),
(63, 22, '_menu_item_orphaned', '1425514856'),
(64, 23, '_menu_item_type', 'post_type'),
(65, 23, '_menu_item_menu_item_parent', '0'),
(66, 23, '_menu_item_object_id', '13'),
(67, 23, '_menu_item_object', 'page'),
(68, 23, '_menu_item_target', ''),
(69, 23, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(70, 23, '_menu_item_xfn', ''),
(71, 23, '_menu_item_url', ''),
(72, 23, '_menu_item_orphaned', '1425514856'),
(73, 24, '_menu_item_type', 'post_type'),
(74, 24, '_menu_item_menu_item_parent', '0'),
(75, 24, '_menu_item_object_id', '8'),
(76, 24, '_menu_item_object', 'page'),
(77, 24, '_menu_item_target', ''),
(78, 24, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(79, 24, '_menu_item_xfn', ''),
(80, 24, '_menu_item_url', ''),
(81, 24, '_menu_item_orphaned', '1425514856'),
(82, 25, '_menu_item_type', 'post_type'),
(83, 25, '_menu_item_menu_item_parent', '0'),
(84, 25, '_menu_item_object_id', '2'),
(85, 25, '_menu_item_object', 'page'),
(86, 25, '_menu_item_target', ''),
(87, 25, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(88, 25, '_menu_item_xfn', ''),
(89, 25, '_menu_item_url', ''),
(90, 25, '_menu_item_orphaned', '1425514856'),
(91, 26, '_menu_item_type', 'post_type'),
(92, 26, '_menu_item_menu_item_parent', '0'),
(93, 26, '_menu_item_object_id', '8'),
(94, 26, '_menu_item_object', 'page'),
(95, 26, '_menu_item_target', ''),
(96, 26, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(97, 26, '_menu_item_xfn', ''),
(98, 26, '_menu_item_url', ''),
(99, 26, '_menu_item_orphaned', '1425514863'),
(100, 27, '_menu_item_type', 'post_type'),
(101, 27, '_menu_item_menu_item_parent', '0'),
(102, 27, '_menu_item_object_id', '11'),
(103, 27, '_menu_item_object', 'page'),
(104, 27, '_menu_item_target', ''),
(105, 27, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(106, 27, '_menu_item_xfn', ''),
(107, 27, '_menu_item_url', ''),
(109, 28, '_menu_item_type', 'post_type') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(110, 28, '_menu_item_menu_item_parent', '0'),
(111, 28, '_menu_item_object_id', '17'),
(112, 28, '_menu_item_object', 'page'),
(113, 28, '_menu_item_target', ''),
(114, 28, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(115, 28, '_menu_item_xfn', ''),
(116, 28, '_menu_item_url', ''),
(117, 28, '_menu_item_orphaned', '1425514863'),
(118, 29, '_menu_item_type', 'post_type'),
(119, 29, '_menu_item_menu_item_parent', '0'),
(120, 29, '_menu_item_object_id', '15'),
(121, 29, '_menu_item_object', 'page'),
(122, 29, '_menu_item_target', ''),
(123, 29, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(124, 29, '_menu_item_xfn', ''),
(125, 29, '_menu_item_url', ''),
(136, 31, '_menu_item_type', 'post_type'),
(137, 31, '_menu_item_menu_item_parent', '0'),
(138, 31, '_menu_item_object_id', '8'),
(139, 31, '_menu_item_object', 'page'),
(140, 31, '_menu_item_target', ''),
(141, 31, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(142, 31, '_menu_item_xfn', ''),
(143, 31, '_menu_item_url', ''),
(144, 31, '_menu_item_orphaned', '1425514864'),
(145, 32, '_menu_item_type', 'post_type'),
(146, 32, '_menu_item_menu_item_parent', '0'),
(147, 32, '_menu_item_object_id', '2'),
(148, 32, '_menu_item_object', 'page'),
(149, 32, '_menu_item_target', ''),
(150, 32, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(151, 32, '_menu_item_xfn', ''),
(152, 32, '_menu_item_url', ''),
(153, 32, '_menu_item_orphaned', '1425514864'),
(154, 2, '_wp_trash_meta_status', 'publish'),
(155, 2, '_wp_trash_meta_time', '1425515382'),
(156, 34, '_edit_last', '1'),
(157, 34, '_edit_lock', '1425515278:1'),
(158, 34, '_wp_page_template', 'default'),
(159, 36, '_edit_last', '1'),
(160, 36, '_edit_lock', '1425761210:1'),
(161, 36, '_wp_page_template', 'default'),
(162, 38, '_edit_last', '1'),
(163, 38, '_edit_lock', '1425515441:1'),
(164, 38, '_wp_page_template', 'default'),
(165, 40, '_edit_last', '1'),
(166, 40, '_edit_lock', '1425515482:1'),
(167, 40, '_wp_page_template', 'default'),
(168, 42, '_edit_last', '1'),
(169, 42, '_edit_lock', '1425515520:1'),
(170, 42, '_wp_page_template', 'default'),
(171, 44, '_edit_last', '1'),
(172, 44, '_edit_lock', '1425780127:1'),
(173, 44, '_wp_page_template', 'default'),
(174, 48, 't11_position', 'site-description'),
(175, 48, 't11_preview', 'front-page.php'),
(176, 49, 't11_position', 'footer-who'),
(177, 49, 't11_preview', 'front-page.php'),
(178, 50, 't11_position', 'footer-where'),
(179, 50, 't11_preview', 'front-page.php'),
(180, 51, '_edit_last', '1'),
(181, 51, '_edit_lock', '1425523125:1'),
(182, 53, 't11_position', 'home-featured-img'),
(183, 53, 't11_preview', 'front-page.php'),
(184, 53, '_edit_lock', '1425844117:1'),
(185, 54, '_wp_attached_file', '2015/03/Afghan_females_using_internet_in_Herat-1.jpg'),
(186, 54, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1230;s:6:"height";i:760;s:4:"file";s:52:"2015/03/Afghan_females_using_internet_in_Herat-1.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:52:"Afghan_females_using_internet_in_Herat-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:52:"Afghan_females_using_internet_in_Herat-1-300x185.jpg";s:5:"width";i:300;s:6:"height";i:185;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:53:"Afghan_females_using_internet_in_Herat-1-1024x633.jpg";s:5:"width";i:1024;s:6:"height";i:633;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:41:"© 2009 State Department/Daniel Wilkinson";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(187, 54, '_wp_attachment_image_alt', 'Afghan women using the internet in Herat'),
(188, 53, '_edit_last', '1'),
(189, 55, 't11_pos_image', '54'),
(190, 55, '_t11_pos_image', 'field_54f7c19d24d5d'),
(191, 53, 't11_pos_image', '98'),
(192, 53, '_t11_pos_image', 'field_54f7c19d24d5d'),
(193, 56, '_edit_last', '1'),
(194, 56, '_edit_lock', '1425846494:1'),
(197, 48, '_edit_lock', '1425844905:1'),
(198, 48, '_edit_last', '1'),
(201, 60, '_edit_last', '1'),
(202, 60, '_edit_lock', '1425604881:1'),
(203, 79, '_edit_last', '1'),
(204, 79, '_edit_lock', '1425673726:1'),
(205, 80, 'chapter_country', 'Canada'),
(206, 80, '_chapter_country', 'field_54f8963650a53'),
(207, 80, 'chapter_province', 'BC'),
(208, 80, '_chapter_province', 'field_54f8969c50a54'),
(209, 80, 'chapter_city', 'Nanaimo'),
(210, 80, '_chapter_city', 'field_54f896da50a55'),
(211, 80, 'chapter_address', '#106 99 Chapel Street'),
(212, 80, '_chapter_address', 'field_54f8973b50a58'),
(213, 80, 'chapter_email', 'scossar3@gmail.com'),
(214, 80, '_chapter_email', 'field_54f896fa50a56'),
(215, 80, 'chapter_telephone', '250-555-5555'),
(216, 80, '_chapter_telephone', 'field_54f8971250a57'),
(217, 80, 'chapter_website', ''),
(218, 80, '_chapter_website', 'field_54f8975b50a59'),
(219, 80, 'chapter_description', 'Our main involvement with Books With WIngs is maintaining the group\'s website.'),
(220, 80, '_chapter_description', 'field_54f8977f50a5a'),
(221, 79, 'chapter_country', 'Canada'),
(222, 79, '_chapter_country', 'field_54f8963650a53'),
(223, 79, 'chapter_province', 'BC') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(224, 79, '_chapter_province', 'field_54f8969c50a54'),
(225, 79, 'chapter_city', 'Nanaimo'),
(226, 79, '_chapter_city', 'field_54f896da50a55'),
(227, 79, 'chapter_address', '#106 99 Chapel Street'),
(228, 79, '_chapter_address', 'field_54f8973b50a58'),
(229, 79, 'chapter_email', 'scossar3@gmail.com'),
(230, 79, '_chapter_email', 'field_54f896fa50a56'),
(231, 79, 'chapter_telephone', '250-555-5555'),
(232, 79, '_chapter_telephone', 'field_54f8971250a57'),
(233, 79, 'chapter_website', 'http://example.com'),
(234, 79, '_chapter_website', 'field_54f8975b50a59'),
(235, 79, 'chapter_description', 'Our main role with Books With WIngs is maintaining the group\'s website.'),
(236, 79, '_chapter_description', 'field_54f8977f50a5a'),
(237, 81, 'chapter_country', 'Canada'),
(238, 81, '_chapter_country', 'field_54f8963650a53'),
(239, 81, 'chapter_province', 'BC'),
(240, 81, '_chapter_province', 'field_54f8969c50a54'),
(241, 81, 'chapter_city', 'Nanaimo'),
(242, 81, '_chapter_city', 'field_54f896da50a55'),
(243, 81, 'chapter_address', '#106 99 Chapel Street'),
(244, 81, '_chapter_address', 'field_54f8973b50a58'),
(245, 81, 'chapter_email', 'scossar3@gmail.com'),
(246, 81, '_chapter_email', 'field_54f896fa50a56'),
(247, 81, 'chapter_telephone', '250-555-5555'),
(248, 81, '_chapter_telephone', 'field_54f8971250a57'),
(249, 81, 'chapter_website', ''),
(250, 81, '_chapter_website', 'field_54f8975b50a59'),
(251, 81, 'chapter_description', ''),
(252, 81, '_chapter_description', 'field_54f8977f50a5a'),
(253, 82, 'chapter_country', 'Canada'),
(254, 82, '_chapter_country', 'field_54f8963650a53'),
(255, 82, 'chapter_province', 'BC'),
(256, 82, '_chapter_province', 'field_54f8969c50a54'),
(257, 82, 'chapter_city', 'Nanaimo'),
(258, 82, '_chapter_city', 'field_54f896da50a55'),
(259, 82, 'chapter_address', '#106 99 Chapel Street'),
(260, 82, '_chapter_address', 'field_54f8973b50a58'),
(261, 82, 'chapter_email', 'scossar3@gmail.com'),
(262, 82, '_chapter_email', 'field_54f896fa50a56'),
(263, 82, 'chapter_telephone', '250-555-5555'),
(264, 82, '_chapter_telephone', 'field_54f8971250a57'),
(265, 82, 'chapter_website', ''),
(266, 82, '_chapter_website', 'field_54f8975b50a59'),
(267, 82, 'chapter_description', 'Our main role with Books With WIngs is maintaining the group\'s website.'),
(268, 82, '_chapter_description', 'field_54f8977f50a5a'),
(269, 83, 'chapter_country', 'Canada'),
(270, 83, '_chapter_country', 'field_54f8963650a53'),
(271, 83, 'chapter_province', 'BC'),
(272, 83, '_chapter_province', 'field_54f8969c50a54'),
(273, 83, 'chapter_city', ''),
(274, 83, '_chapter_city', 'field_54f896da50a55'),
(275, 83, 'chapter_address', '#106 99 Chapel Street'),
(276, 83, '_chapter_address', 'field_54f8973b50a58'),
(277, 83, 'chapter_email', 'scossar3@gmail.com'),
(278, 83, '_chapter_email', 'field_54f896fa50a56'),
(279, 83, 'chapter_telephone', '250-555-5555'),
(280, 83, '_chapter_telephone', 'field_54f8971250a57'),
(281, 83, 'chapter_website', ''),
(282, 83, '_chapter_website', 'field_54f8975b50a59'),
(283, 83, 'chapter_description', 'Our main role with Books With WIngs is maintaining the group\'s website.'),
(284, 83, '_chapter_description', 'field_54f8977f50a5a'),
(285, 84, 'chapter_country', 'Canada'),
(286, 84, '_chapter_country', 'field_54f8963650a53'),
(287, 84, 'chapter_province', ''),
(288, 84, '_chapter_province', 'field_54f8969c50a54'),
(289, 84, 'chapter_city', ''),
(290, 84, '_chapter_city', 'field_54f896da50a55'),
(291, 84, 'chapter_address', '#106 99 Chapel Street'),
(292, 84, '_chapter_address', 'field_54f8973b50a58'),
(293, 84, 'chapter_email', 'scossar3@gmail.com'),
(294, 84, '_chapter_email', 'field_54f896fa50a56'),
(295, 84, 'chapter_telephone', '250-555-5555'),
(296, 84, '_chapter_telephone', 'field_54f8971250a57'),
(297, 84, 'chapter_website', ''),
(298, 84, '_chapter_website', 'field_54f8975b50a59'),
(299, 84, 'chapter_description', 'Our main role with Books With WIngs is maintaining the group\'s website.'),
(300, 84, '_chapter_description', 'field_54f8977f50a5a'),
(301, 85, 'chapter_country', 'Canada'),
(302, 85, '_chapter_country', 'field_54f8963650a53'),
(303, 85, 'chapter_province', ''),
(304, 85, '_chapter_province', 'field_54f8969c50a54'),
(305, 85, 'chapter_city', 'Nanaimo'),
(306, 85, '_chapter_city', 'field_54f896da50a55'),
(307, 85, 'chapter_address', '#106 99 Chapel Street'),
(308, 85, '_chapter_address', 'field_54f8973b50a58'),
(309, 85, 'chapter_email', 'scossar3@gmail.com'),
(310, 85, '_chapter_email', 'field_54f896fa50a56'),
(311, 85, 'chapter_telephone', '250-555-5555'),
(312, 85, '_chapter_telephone', 'field_54f8971250a57'),
(313, 85, 'chapter_website', ''),
(314, 85, '_chapter_website', 'field_54f8975b50a59'),
(315, 85, 'chapter_description', 'Our main role with Books With WIngs is maintaining the group\'s website.'),
(316, 85, '_chapter_description', 'field_54f8977f50a5a'),
(317, 86, 'chapter_country', 'Canada'),
(318, 86, '_chapter_country', 'field_54f8963650a53'),
(319, 86, 'chapter_province', 'BC'),
(320, 86, '_chapter_province', 'field_54f8969c50a54'),
(321, 86, 'chapter_city', 'Nanaimo'),
(322, 86, '_chapter_city', 'field_54f896da50a55'),
(323, 86, 'chapter_address', '#106 99 Chapel Street') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(324, 86, '_chapter_address', 'field_54f8973b50a58'),
(325, 86, 'chapter_email', 'scossar3@gmail.com'),
(326, 86, '_chapter_email', 'field_54f896fa50a56'),
(327, 86, 'chapter_telephone', '250-555-5555'),
(328, 86, '_chapter_telephone', 'field_54f8971250a57'),
(329, 86, 'chapter_website', ''),
(330, 86, '_chapter_website', 'field_54f8975b50a59'),
(331, 86, 'chapter_description', 'Our main role with Books With WIngs is maintaining the group\'s website.'),
(332, 86, '_chapter_description', 'field_54f8977f50a5a'),
(333, 87, 'chapter_country', 'Canada'),
(334, 87, '_chapter_country', 'field_54f8963650a53'),
(335, 87, 'chapter_province', 'BC'),
(336, 87, '_chapter_province', 'field_54f8969c50a54'),
(337, 87, 'chapter_city', 'Nanaimo'),
(338, 87, '_chapter_city', 'field_54f896da50a55'),
(339, 87, 'chapter_address', '#106 99 Chapel Street'),
(340, 87, '_chapter_address', 'field_54f8973b50a58'),
(341, 87, 'chapter_email', 'scossar3@gmail.com'),
(342, 87, '_chapter_email', 'field_54f896fa50a56'),
(343, 87, 'chapter_telephone', '250-555-5555'),
(344, 87, '_chapter_telephone', 'field_54f8971250a57'),
(345, 87, 'chapter_website', 'http://example.com'),
(346, 87, '_chapter_website', 'field_54f8975b50a59'),
(347, 87, 'chapter_description', 'Our main role with Books With WIngs is maintaining the group\'s website.'),
(348, 87, '_chapter_description', 'field_54f8977f50a5a'),
(349, 88, '_form', '<p>Your Name (required)<br />\n    [text* your-name] </p>\n\n<p>Your Email (required)<br />\n    [email* your-email] </p>\n\n<p>Subject<br />\n    [text your-subject] </p>\n\n<p>Your Message<br />\n    [textarea your-message] </p>\n\n<p>[submit "Send"]</p>'),
(350, 88, '_mail', 'a:8:{s:7:"subject";s:14:"[your-subject]";s:6:"sender";s:38:"[your-name] <wordpress@localhost:3000>";s:4:"body";s:1957:"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n--\nThis e-mail was sent from a contact form on Books With Wings (//localhost:3000/)%3C/textarea%3E\n	</div>\n\n	<div class="mail-field">\n	<input type="checkbox" id="wpcf7-mail-exclude-blank" name="wpcf7-mail-exclude-blank" value="1" />\n	<label for="wpcf7-mail-exclude-blank">Exclude lines with blank mail-tags from output</label>\n	</div>\n</div>\n\n<br class="clear" />\n</div>\n</div>\n</div>\n</div><div id="mail_2-sortables" class="meta-box-sortables"><div id="mail2div" class="postbox " >\n<div class="handlediv" title="Click to toggle"><br /></div><h3 class=\'hndle\'><span>Mail (2)</span></h3>\n<div class="inside">\n<div class="mail-field">\n<input type="checkbox" id="wpcf7-mail-2-active" name="wpcf7-mail-2-active" class="check-if-these-fields-are-active" value="1" />\n<label for="wpcf7-mail-2-active">Use mail (2)</label>\n<div class="pseudo-hr"></div>\n</div>\n\n<br class="clear" />\n\n<div class="mail-fields">\n<div class="half-left">\n	<div class="mail-field">\n	<label for="wpcf7-mail-2-recipient">To:</label><br />\n	<input type="text" id="wpcf7-mail-2-recipient" name="wpcf7-mail-2-recipient" class="wide" size="70" value="[your-email]" />\n	</div>\n\n	<div class="mail-field">\n	<label for="wpcf7-mail-2-sender">From:</label><br />\n	<input type="text" id="wpcf7-mail-2-sender" name="wpcf7-mail-2-sender" class="wide" size="70" value="Books With Wings <wordpress@localhost:3000>" />\n	</div>\n\n	<div class="mail-field">\n	<label for="wpcf7-mail-2-subject">Subject:</label><br />\n	<input type="text" id="wpcf7-mail-2-subject" name="wpcf7-mail-2-subject" class="wide" size="70" value="[your-subject]" />\n	</div>\n\n	<div class="pseudo-hr"></div>\n\n	<div class="mail-field">\n	<label for="wpcf7-mail-2-additional-headers">Additional headers:</label><br />\n	<textarea id="wpcf7-mail-2-additional-headers" name="wpcf7-mail-2-additional-headers" cols="100" rows="2">Reply-To: scossar3@gmail.com";s:9:"recipient";s:19:"sicossart@gmail.com";s:18:"additional_headers";s:22:"Reply-To: [your-email]";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
(351, 88, '_mail_2', 'a:9:{s:6:"active";b:0;s:7:"subject";s:14:"[your-subject]";s:6:"sender";s:48:"Books With Wings <wordpress@bookswithwings.prod>";s:4:"body";s:8443:"Message Body:\n[your-message]\n\n--\nThis e-mail was sent from a contact form on Books With Wings (//localhost:3000/)%3C/textarea%3E\n	</div>\n\n	<div class="mail-field">\n	<input type="checkbox" id="wpcf7-mail-2-exclude-blank" name="wpcf7-mail-2-exclude-blank" value="1" />\n	<label for="wpcf7-mail-2-exclude-blank">Exclude lines with blank mail-tags from output</label>\n	</div>\n</div>\n\n<br class="clear" />\n</div>\n</div>\n</div>\n</div><div id="messages-sortables" class="meta-box-sortables"><div id="messagesdiv" class="postbox " >\n<div class="handlediv" title="Click to toggle"><br /></div><h3 class=\'hndle\'><span>Messages</span></h3>\n<div class="inside">\n<div class="message-field">\n<p class="description"><label for="wpcf7-message-mail-sent-ok">Sender\'s message was sent successfully</label></p>\n<input type="text" id="wpcf7-message-mail-sent-ok" name="wpcf7-message-mail-sent-ok" class="wide" size="70" value="Your message was sent successfully. Thanks." />\n</div>\n<div class="message-field">\n<p class="description"><label for="wpcf7-message-mail-sent-ng">Sender\'s message was failed to send</label></p>\n<input type="text" id="wpcf7-message-mail-sent-ng" name="wpcf7-message-mail-sent-ng" class="wide" size="70" value="Failed to send your message. Please try later or contact the administrator by another method." />\n</div>\n<div class="message-field">\n<p class="description"><label for="wpcf7-message-validation-error">Validation errors occurred</label></p>\n<input type="text" id="wpcf7-message-validation-error" name="wpcf7-message-validation-error" class="wide" size="70" value="Validation errors occurred. Please confirm the fields and submit it again." />\n</div>\n<div class="message-field">\n<p class="description"><label for="wpcf7-message-spam">Submission was referred to as spam</label></p>\n<input type="text" id="wpcf7-message-spam" name="wpcf7-message-spam" class="wide" size="70" value="Failed to send your message. Please try later or contact the administrator by another method." />\n</div>\n<div class="message-field">\n<p class="description"><label for="wpcf7-message-accept-terms">There are terms that the sender must accept</label></p>\n<input type="text" id="wpcf7-message-accept-terms" name="wpcf7-message-accept-terms" class="wide" size="70" value="Please accept the terms to proceed." />\n</div>\n<div class="message-field">\n<p class="description"><label for="wpcf7-message-invalid-required">There is a field that the sender must fill in</label></p>\n<input type="text" id="wpcf7-message-invalid-required" name="wpcf7-message-invalid-required" class="wide" size="70" value="Please fill in the required field." />\n</div>\n<p><a href="#" id="show-all-messages">Show all messages</a></p>\n<div class="hide-initially"><div class="message-field">\n<p class="description"><label for="wpcf7-message-invalid-too-long">There is a field that the user input is longer than the maximum allowed length</label></p>\n<input type="text" id="wpcf7-message-invalid-too-long" name="wpcf7-message-invalid-too-long" class="wide" size="70" value="This input is too long." />\n</div>\n<div class="message-field">\n<p class="description"><label for="wpcf7-message-invalid-too-short">There is a field that the user input is shorter than the minimum allowed length</label></p>\n<input type="text" id="wpcf7-message-invalid-too-short" name="wpcf7-message-invalid-too-short" class="wide" size="70" value="This input is too short." />\n</div>\n<div class="message-field">\n<p class="description"><label for="wpcf7-message-captcha-not-match">The code that sender entered does not match the CAPTCHA</label></p>\n<input type="text" id="wpcf7-message-captcha-not-match" name="wpcf7-message-captcha-not-match" class="wide" size="70" value="Your entered code is incorrect." />\n</div>\n<div class="message-field">\n<p class="description"><label for="wpcf7-message-invalid-number">Number format that the sender entered is invalid</label></p>\n<input type="text" id="wpcf7-message-invalid-number" name="wpcf7-message-invalid-number" class="wide" size="70" value="Number format seems invalid." />\n</div>\n<div class="message-field">\n<p class="description"><label for="wpcf7-message-number-too-small">Number is smaller than minimum limit</label></p>\n<input type="text" id="wpcf7-message-number-too-small" name="wpcf7-message-number-too-small" class="wide" size="70" value="This number is too small." />\n</div>\n<div class="message-field">\n<p class="description"><label for="wpcf7-message-number-too-large">Number is larger than maximum limit</label></p>\n<input type="text" id="wpcf7-message-number-too-large" name="wpcf7-message-number-too-large" class="wide" size="70" value="This number is too large." />\n</div>\n<div class="message-field">\n<p class="description"><label for="wpcf7-message-invalid-email">Email address that the sender entered is invalid</label></p>\n<input type="text" id="wpcf7-message-invalid-email" name="wpcf7-message-invalid-email" class="wide" size="70" value="Email address seems invalid." />\n</div>\n<div class="message-field">\n<p class="description"><label for="wpcf7-message-invalid-url">URL that the sender entered is invalid</label></p>\n<input type="text" id="wpcf7-message-invalid-url" name="wpcf7-message-invalid-url" class="wide" size="70" value="URL seems invalid." />\n</div>\n<div class="message-field">\n<p class="description"><label for="wpcf7-message-invalid-tel">Telephone number that the sender entered is invalid</label></p>\n<input type="text" id="wpcf7-message-invalid-tel" name="wpcf7-message-invalid-tel" class="wide" size="70" value="Telephone number seems invalid." />\n</div>\n<div class="message-field">\n<p class="description"><label for="wpcf7-message-quiz-answer-not-correct">Sender doesn\'t enter the correct answer to the quiz</label></p>\n<input type="text" id="wpcf7-message-quiz-answer-not-correct" name="wpcf7-message-quiz-answer-not-correct" class="wide" size="70" value="Your answer is not correct." />\n</div>\n<div class="message-field">\n<p class="description"><label for="wpcf7-message-invalid-date">Date format that the sender entered is invalid</label></p>\n<input type="text" id="wpcf7-message-invalid-date" name="wpcf7-message-invalid-date" class="wide" size="70" value="Date format seems invalid." />\n</div>\n<div class="message-field">\n<p class="description"><label for="wpcf7-message-date-too-early">Date is earlier than minimum limit</label></p>\n<input type="text" id="wpcf7-message-date-too-early" name="wpcf7-message-date-too-early" class="wide" size="70" value="This date is too early." />\n</div>\n<div class="message-field">\n<p class="description"><label for="wpcf7-message-date-too-late">Date is later than maximum limit</label></p>\n<input type="text" id="wpcf7-message-date-too-late" name="wpcf7-message-date-too-late" class="wide" size="70" value="This date is too late." />\n</div>\n<div class="message-field">\n<p class="description"><label for="wpcf7-message-upload-failed">Uploading a file fails for any reason</label></p>\n<input type="text" id="wpcf7-message-upload-failed" name="wpcf7-message-upload-failed" class="wide" size="70" value="Failed to upload file." />\n</div>\n<div class="message-field">\n<p class="description"><label for="wpcf7-message-upload-file-type-invalid">Uploaded file is not allowed file type</label></p>\n<input type="text" id="wpcf7-message-upload-file-type-invalid" name="wpcf7-message-upload-file-type-invalid" class="wide" size="70" value="This file type is not allowed." />\n</div>\n<div class="message-field">\n<p class="description"><label for="wpcf7-message-upload-file-too-large">Uploaded file is too large</label></p>\n<input type="text" id="wpcf7-message-upload-file-too-large" name="wpcf7-message-upload-file-too-large" class="wide" size="70" value="This file is too large." />\n</div>\n<div class="message-field">\n<p class="description"><label for="wpcf7-message-upload-failed-php-error">Uploading a file fails for PHP error</label></p>\n<input type="text" id="wpcf7-message-upload-failed-php-error" name="wpcf7-message-upload-failed-php-error" class="wide" size="70" value="Failed to upload file. Error occurred." />\n</div>\n</div></div>\n</div>\n</div><div id="additional_settings-sortables" class="meta-box-sortables"><div id="additionalsettingsdiv" class="postbox " >\n<div class="handlediv" title="Click to toggle"><br /></div><h3 class=\'hndle\'><span>Additional Settings</span></h3>\n<div class="inside">\n<textarea id="wpcf7-additional-settings" name="wpcf7-additional-settings" cols="100" rows="8">";s:9:"recipient";s:12:"[your-email]";s:18:"additional_headers";s:28:"Reply-To: scossar3@gmail.com";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
(352, 88, '_messages', 'a:23:{s:12:"mail_sent_ok";s:43:"Your message was sent successfully. Thanks.";s:12:"mail_sent_ng";s:93:"Failed to send your message. Please try later or contact the administrator by another method.";s:16:"validation_error";s:74:"Validation errors occurred. Please confirm the fields and submit it again.";s:4:"spam";s:93:"Failed to send your message. Please try later or contact the administrator by another method.";s:12:"accept_terms";s:35:"Please accept the terms to proceed.";s:16:"invalid_required";s:34:"Please fill in the required field.";s:16:"invalid_too_long";s:23:"This input is too long.";s:17:"invalid_too_short";s:24:"This input is too short.";s:17:"captcha_not_match";s:31:"Your entered code is incorrect.";s:14:"invalid_number";s:28:"Number format seems invalid.";s:16:"number_too_small";s:25:"This number is too small.";s:16:"number_too_large";s:25:"This number is too large.";s:13:"invalid_email";s:28:"Email address seems invalid.";s:11:"invalid_url";s:18:"URL seems invalid.";s:11:"invalid_tel";s:31:"Telephone number seems invalid.";s:23:"quiz_answer_not_correct";s:27:"Your answer is not correct.";s:12:"invalid_date";s:26:"Date format seems invalid.";s:14:"date_too_early";s:23:"This date is too early.";s:13:"date_too_late";s:22:"This date is too late.";s:13:"upload_failed";s:22:"Failed to upload file.";s:24:"upload_file_type_invalid";s:30:"This file type is not allowed.";s:21:"upload_file_too_large";s:23:"This file is too large.";s:23:"upload_failed_php_error";s:38:"Failed to upload file. Error occurred.";}'),
(353, 88, '_additional_settings', ''),
(354, 88, '_locale', 'en_US'),
(355, 89, '_form', '<div class="form-group">\n	<label for="your-name">Your name (required)</label>\n	[text* your-name class:form-control]\n</div>\n\n<div class="form-group">\n	<label for="your-email">Your email address (required)</label>\n	[email* your-email class:form-control]\n</div>\n\n<div class="form-group">\n	<label for="your-subject">Subject</label>\n	[text your-subject class:form-control]\n</div>\n\n<div class="form-group">\n	<label for="your-message">Your Message</label>\n	[textarea your-message class:form-control]\n</div>\n<p>[submit class:btn class:btn-primary "Contact Us"]</p>'),
(356, 89, '_mail', 'a:8:{s:7:"subject";s:14:"[your-subject]";s:6:"sender";s:38:"[your-name] <wordpress@localhost:3000>";s:4:"body";s:1957:"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n--\nThis e-mail was sent from a contact form on Books With Wings (//localhost:3000/)%3C/textarea%3E\n	</div>\n\n	<div class="mail-field">\n	<input type="checkbox" id="wpcf7-mail-exclude-blank" name="wpcf7-mail-exclude-blank" value="1" />\n	<label for="wpcf7-mail-exclude-blank">Exclude lines with blank mail-tags from output</label>\n	</div>\n</div>\n\n<br class="clear" />\n</div>\n</div>\n</div>\n</div><div id="mail_2-sortables" class="meta-box-sortables"><div id="mail2div" class="postbox " >\n<div class="handlediv" title="Click to toggle"><br /></div><h3 class=\'hndle\'><span>Mail (2)</span></h3>\n<div class="inside">\n<div class="mail-field">\n<input type="checkbox" id="wpcf7-mail-2-active" name="wpcf7-mail-2-active" class="check-if-these-fields-are-active" value="1" />\n<label for="wpcf7-mail-2-active">Use mail (2)</label>\n<div class="pseudo-hr"></div>\n</div>\n\n<br class="clear" />\n\n<div class="mail-fields">\n<div class="half-left">\n	<div class="mail-field">\n	<label for="wpcf7-mail-2-recipient">To:</label><br />\n	<input type="text" id="wpcf7-mail-2-recipient" name="wpcf7-mail-2-recipient" class="wide" size="70" value="[your-email]" />\n	</div>\n\n	<div class="mail-field">\n	<label for="wpcf7-mail-2-sender">From:</label><br />\n	<input type="text" id="wpcf7-mail-2-sender" name="wpcf7-mail-2-sender" class="wide" size="70" value="Books With Wings <wordpress@localhost:3000>" />\n	</div>\n\n	<div class="mail-field">\n	<label for="wpcf7-mail-2-subject">Subject:</label><br />\n	<input type="text" id="wpcf7-mail-2-subject" name="wpcf7-mail-2-subject" class="wide" size="70" value="[your-subject]" />\n	</div>\n\n	<div class="pseudo-hr"></div>\n\n	<div class="mail-field">\n	<label for="wpcf7-mail-2-additional-headers">Additional headers:</label><br />\n	<textarea id="wpcf7-mail-2-additional-headers" name="wpcf7-mail-2-additional-headers" cols="100" rows="2">Reply-To: scossar3@gmail.com";s:9:"recipient";s:18:"scossar3@gmail.com";s:18:"additional_headers";s:22:"Reply-To: [your-email]";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
(357, 89, '_mail_2', 'a:9:{s:6:"active";b:0;s:7:"subject";s:14:"[your-subject]";s:6:"sender";s:43:"Books With Wings <wordpress@localhost:3000>";s:4:"body";s:8443:"Message Body:\n[your-message]\n\n--\nThis e-mail was sent from a contact form on Books With Wings (//localhost:3000/)%3C/textarea%3E\n	</div>\n\n	<div class="mail-field">\n	<input type="checkbox" id="wpcf7-mail-2-exclude-blank" name="wpcf7-mail-2-exclude-blank" value="1" />\n	<label for="wpcf7-mail-2-exclude-blank">Exclude lines with blank mail-tags from output</label>\n	</div>\n</div>\n\n<br class="clear" />\n</div>\n</div>\n</div>\n</div><div id="messages-sortables" class="meta-box-sortables"><div id="messagesdiv" class="postbox " >\n<div class="handlediv" title="Click to toggle"><br /></div><h3 class=\'hndle\'><span>Messages</span></h3>\n<div class="inside">\n<div class="message-field">\n<p class="description"><label for="wpcf7-message-mail-sent-ok">Sender\'s message was sent successfully</label></p>\n<input type="text" id="wpcf7-message-mail-sent-ok" name="wpcf7-message-mail-sent-ok" class="wide" size="70" value="Your message was sent successfully. Thanks." />\n</div>\n<div class="message-field">\n<p class="description"><label for="wpcf7-message-mail-sent-ng">Sender\'s message was failed to send</label></p>\n<input type="text" id="wpcf7-message-mail-sent-ng" name="wpcf7-message-mail-sent-ng" class="wide" size="70" value="Failed to send your message. Please try later or contact the administrator by another method." />\n</div>\n<div class="message-field">\n<p class="description"><label for="wpcf7-message-validation-error">Validation errors occurred</label></p>\n<input type="text" id="wpcf7-message-validation-error" name="wpcf7-message-validation-error" class="wide" size="70" value="Validation errors occurred. Please confirm the fields and submit it again." />\n</div>\n<div class="message-field">\n<p class="description"><label for="wpcf7-message-spam">Submission was referred to as spam</label></p>\n<input type="text" id="wpcf7-message-spam" name="wpcf7-message-spam" class="wide" size="70" value="Failed to send your message. Please try later or contact the administrator by another method." />\n</div>\n<div class="message-field">\n<p class="description"><label for="wpcf7-message-accept-terms">There are terms that the sender must accept</label></p>\n<input type="text" id="wpcf7-message-accept-terms" name="wpcf7-message-accept-terms" class="wide" size="70" value="Please accept the terms to proceed." />\n</div>\n<div class="message-field">\n<p class="description"><label for="wpcf7-message-invalid-required">There is a field that the sender must fill in</label></p>\n<input type="text" id="wpcf7-message-invalid-required" name="wpcf7-message-invalid-required" class="wide" size="70" value="Please fill in the required field." />\n</div>\n<p><a href="#" id="show-all-messages">Show all messages</a></p>\n<div class="hide-initially"><div class="message-field">\n<p class="description"><label for="wpcf7-message-invalid-too-long">There is a field that the user input is longer than the maximum allowed length</label></p>\n<input type="text" id="wpcf7-message-invalid-too-long" name="wpcf7-message-invalid-too-long" class="wide" size="70" value="This input is too long." />\n</div>\n<div class="message-field">\n<p class="description"><label for="wpcf7-message-invalid-too-short">There is a field that the user input is shorter than the minimum allowed length</label></p>\n<input type="text" id="wpcf7-message-invalid-too-short" name="wpcf7-message-invalid-too-short" class="wide" size="70" value="This input is too short." />\n</div>\n<div class="message-field">\n<p class="description"><label for="wpcf7-message-captcha-not-match">The code that sender entered does not match the CAPTCHA</label></p>\n<input type="text" id="wpcf7-message-captcha-not-match" name="wpcf7-message-captcha-not-match" class="wide" size="70" value="Your entered code is incorrect." />\n</div>\n<div class="message-field">\n<p class="description"><label for="wpcf7-message-invalid-number">Number format that the sender entered is invalid</label></p>\n<input type="text" id="wpcf7-message-invalid-number" name="wpcf7-message-invalid-number" class="wide" size="70" value="Number format seems invalid." />\n</div>\n<div class="message-field">\n<p class="description"><label for="wpcf7-message-number-too-small">Number is smaller than minimum limit</label></p>\n<input type="text" id="wpcf7-message-number-too-small" name="wpcf7-message-number-too-small" class="wide" size="70" value="This number is too small." />\n</div>\n<div class="message-field">\n<p class="description"><label for="wpcf7-message-number-too-large">Number is larger than maximum limit</label></p>\n<input type="text" id="wpcf7-message-number-too-large" name="wpcf7-message-number-too-large" class="wide" size="70" value="This number is too large." />\n</div>\n<div class="message-field">\n<p class="description"><label for="wpcf7-message-invalid-email">Email address that the sender entered is invalid</label></p>\n<input type="text" id="wpcf7-message-invalid-email" name="wpcf7-message-invalid-email" class="wide" size="70" value="Email address seems invalid." />\n</div>\n<div class="message-field">\n<p class="description"><label for="wpcf7-message-invalid-url">URL that the sender entered is invalid</label></p>\n<input type="text" id="wpcf7-message-invalid-url" name="wpcf7-message-invalid-url" class="wide" size="70" value="URL seems invalid." />\n</div>\n<div class="message-field">\n<p class="description"><label for="wpcf7-message-invalid-tel">Telephone number that the sender entered is invalid</label></p>\n<input type="text" id="wpcf7-message-invalid-tel" name="wpcf7-message-invalid-tel" class="wide" size="70" value="Telephone number seems invalid." />\n</div>\n<div class="message-field">\n<p class="description"><label for="wpcf7-message-quiz-answer-not-correct">Sender doesn\'t enter the correct answer to the quiz</label></p>\n<input type="text" id="wpcf7-message-quiz-answer-not-correct" name="wpcf7-message-quiz-answer-not-correct" class="wide" size="70" value="Your answer is not correct." />\n</div>\n<div class="message-field">\n<p class="description"><label for="wpcf7-message-invalid-date">Date format that the sender entered is invalid</label></p>\n<input type="text" id="wpcf7-message-invalid-date" name="wpcf7-message-invalid-date" class="wide" size="70" value="Date format seems invalid." />\n</div>\n<div class="message-field">\n<p class="description"><label for="wpcf7-message-date-too-early">Date is earlier than minimum limit</label></p>\n<input type="text" id="wpcf7-message-date-too-early" name="wpcf7-message-date-too-early" class="wide" size="70" value="This date is too early." />\n</div>\n<div class="message-field">\n<p class="description"><label for="wpcf7-message-date-too-late">Date is later than maximum limit</label></p>\n<input type="text" id="wpcf7-message-date-too-late" name="wpcf7-message-date-too-late" class="wide" size="70" value="This date is too late." />\n</div>\n<div class="message-field">\n<p class="description"><label for="wpcf7-message-upload-failed">Uploading a file fails for any reason</label></p>\n<input type="text" id="wpcf7-message-upload-failed" name="wpcf7-message-upload-failed" class="wide" size="70" value="Failed to upload file." />\n</div>\n<div class="message-field">\n<p class="description"><label for="wpcf7-message-upload-file-type-invalid">Uploaded file is not allowed file type</label></p>\n<input type="text" id="wpcf7-message-upload-file-type-invalid" name="wpcf7-message-upload-file-type-invalid" class="wide" size="70" value="This file type is not allowed." />\n</div>\n<div class="message-field">\n<p class="description"><label for="wpcf7-message-upload-file-too-large">Uploaded file is too large</label></p>\n<input type="text" id="wpcf7-message-upload-file-too-large" name="wpcf7-message-upload-file-too-large" class="wide" size="70" value="This file is too large." />\n</div>\n<div class="message-field">\n<p class="description"><label for="wpcf7-message-upload-failed-php-error">Uploading a file fails for PHP error</label></p>\n<input type="text" id="wpcf7-message-upload-failed-php-error" name="wpcf7-message-upload-failed-php-error" class="wide" size="70" value="Failed to upload file. Error occurred." />\n</div>\n</div></div>\n</div>\n</div><div id="additional_settings-sortables" class="meta-box-sortables"><div id="additionalsettingsdiv" class="postbox " >\n<div class="handlediv" title="Click to toggle"><br /></div><h3 class=\'hndle\'><span>Additional Settings</span></h3>\n<div class="inside">\n<textarea id="wpcf7-additional-settings" name="wpcf7-additional-settings" cols="100" rows="8">";s:9:"recipient";s:19:"sicossart@gmail.com";s:18:"additional_headers";s:28:"Reply-To: scossar3@gmail.com";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
(358, 89, '_messages', 'a:23:{s:12:"mail_sent_ok";s:43:"Your message was sent successfully. Thanks.";s:12:"mail_sent_ng";s:93:"Failed to send your message. Please try later or contact the administrator by another method.";s:16:"validation_error";s:74:"Validation errors occurred. Please confirm the fields and submit it again.";s:4:"spam";s:93:"Failed to send your message. Please try later or contact the administrator by another method.";s:12:"accept_terms";s:35:"Please accept the terms to proceed.";s:16:"invalid_required";s:34:"Please fill in the required field.";s:16:"invalid_too_long";s:23:"This input is too long.";s:17:"invalid_too_short";s:24:"This input is too short.";s:17:"captcha_not_match";s:31:"Your entered code is incorrect.";s:14:"invalid_number";s:28:"Number format seems invalid.";s:16:"number_too_small";s:25:"This number is too small.";s:16:"number_too_large";s:25:"This number is too large.";s:13:"invalid_email";s:28:"Email address seems invalid.";s:11:"invalid_url";s:18:"URL seems invalid.";s:11:"invalid_tel";s:31:"Telephone number seems invalid.";s:23:"quiz_answer_not_correct";s:27:"Your answer is not correct.";s:12:"invalid_date";s:26:"Date format seems invalid.";s:14:"date_too_early";s:23:"This date is too early.";s:13:"date_too_late";s:22:"This date is too late.";s:13:"upload_failed";s:22:"Failed to upload file.";s:24:"upload_file_type_invalid";s:30:"This file type is not allowed.";s:21:"upload_file_too_large";s:23:"This file is too large.";s:23:"upload_failed_php_error";s:38:"Failed to upload file. Error occurred.";}'),
(359, 89, '_additional_settings', ''),
(360, 89, '_locale', 'en_US'),
(361, 92, 'chapter_country', 'Canada'),
(362, 92, '_chapter_country', 'field_54f8963650a53'),
(363, 92, 'chapter_city', 'Nanaimo'),
(364, 92, '_chapter_city', 'field_54f896da50a55'),
(365, 92, 'chapter_address', '#106 99 Chapel Street'),
(366, 92, '_chapter_address', 'field_54f8973b50a58'),
(367, 92, 'chapter_email', 'scossar3@gmail.com'),
(368, 92, '_chapter_email', 'field_54f896fa50a56'),
(369, 92, 'chapter_telephone', '250-555-5555'),
(370, 92, '_chapter_telephone', 'field_54f8971250a57'),
(371, 92, 'chapter_website', 'http://example.com'),
(372, 92, '_chapter_website', 'field_54f8975b50a59'),
(373, 92, 'chapter_description', 'Our main role with Books With WIngs is maintaining the group\'s website.'),
(374, 92, '_chapter_description', 'field_54f8977f50a5a'),
(375, 92, 'chapter_contact', '[contact-form-7 id="89" title="Contact Books With Wings Nanaimo"]'),
(376, 92, '_chapter_contact', 'field_54f8bc01ef57d'),
(377, 92, '_', 'field_54f8bc1eef57e'),
(378, 79, 'chapter_contact', '[contact-form-7 id="89" title="Contact Books With Wings Nanaimo"]'),
(379, 79, '_chapter_contact', 'field_54f8bc01ef57d'),
(380, 79, '_', 'field_54f8bc1eef57e'),
(381, 93, 'chapter_country', 'Canada'),
(382, 93, '_chapter_country', 'field_54f8963650a53'),
(383, 93, 'chapter_city', 'Nanaimo'),
(384, 93, '_chapter_city', 'field_54f896da50a55'),
(385, 93, 'chapter_address', '#106 99 Chapel Street'),
(386, 93, '_chapter_address', 'field_54f8973b50a58'),
(387, 93, 'chapter_email', 'scossar3@gmail.com'),
(388, 93, '_chapter_email', 'field_54f896fa50a56'),
(389, 93, 'chapter_telephone', '250-555-5555'),
(390, 93, '_chapter_telephone', 'field_54f8971250a57'),
(391, 93, 'chapter_website', 'http://example.com'),
(392, 93, '_chapter_website', 'field_54f8975b50a59'),
(393, 93, 'chapter_description', 'Our main role with Books With WIngs is maintaining the group\'s website.'),
(394, 93, '_chapter_description', 'field_54f8977f50a5a'),
(395, 93, 'chapter_contact', '[contact-form-7 id="88" title="Contact form 1"]'),
(396, 93, '_chapter_contact', 'field_54f8bc01ef57d'),
(397, 94, 'chapter_country', 'Canada'),
(398, 94, '_chapter_country', 'field_54f8963650a53'),
(399, 94, 'chapter_city', 'Nanaimo'),
(400, 94, '_chapter_city', 'field_54f896da50a55'),
(401, 94, 'chapter_address', '#106 99 Chapel Street'),
(402, 94, '_chapter_address', 'field_54f8973b50a58'),
(403, 94, 'chapter_email', 'scossar3@gmail.com'),
(404, 94, '_chapter_email', 'field_54f896fa50a56'),
(405, 94, 'chapter_telephone', '250-555-5555'),
(406, 94, '_chapter_telephone', 'field_54f8971250a57'),
(407, 94, 'chapter_website', 'http://example.com'),
(408, 94, '_chapter_website', 'field_54f8975b50a59'),
(409, 94, 'chapter_description', 'Our main role with Books With WIngs is maintaining the group\'s website.'),
(410, 94, '_chapter_description', 'field_54f8977f50a5a'),
(411, 94, 'chapter_contact', '[contact-form-7 id="89" title="Contact Books With Wings Nanaimo"]'),
(412, 94, '_chapter_contact', 'field_54f8bc01ef57d'),
(415, 97, 'chapter_country', 'Canada'),
(416, 97, '_chapter_country', 'field_54f8963650a53'),
(417, 97, 'chapter_city', 'Nanaimo'),
(418, 97, '_chapter_city', 'field_54f896da50a55'),
(419, 97, 'chapter_address', '#106 99 Chapel Street'),
(420, 97, '_chapter_address', 'field_54f8973b50a58'),
(421, 97, 'chapter_email', 'scossar3@gmail.com'),
(422, 97, '_chapter_email', 'field_54f896fa50a56'),
(423, 97, 'chapter_telephone', '250-555-5555'),
(424, 97, '_chapter_telephone', 'field_54f8971250a57'),
(425, 97, 'chapter_website', 'http://example.com') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(426, 97, '_chapter_website', 'field_54f8975b50a59'),
(427, 97, 'chapter_description', 'Our main role with Books With WIngs is maintaining the group\'s website.'),
(428, 97, '_chapter_description', 'field_54f8977f50a5a'),
(429, 97, 'chapter_contact_id', '1'),
(430, 97, '_chapter_contact_id', 'field_54f900fdc500f'),
(431, 79, 'chapter_contact_id', '1'),
(432, 79, '_chapter_contact_id', 'field_54f900fdc500f'),
(433, 98, '_wp_attached_file', '2015/03/1508503_10152702130943990_5866652294906755883_n.jpg'),
(434, 98, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:960;s:6:"height";i:593;s:4:"file";s:59:"2015/03/1508503_10152702130943990_5866652294906755883_n.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:59:"1508503_10152702130943990_5866652294906755883_n-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:59:"1508503_10152702130943990_5866652294906755883_n-300x185.jpg";s:5:"width";i:300;s:6:"height";i:185;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(435, 99, 't11_pos_image', '98'),
(436, 99, '_t11_pos_image', 'field_54f7c19d24d5d'),
(437, 50, '_edit_lock', '1425762174:1'),
(438, 103, '_menu_item_type', 'post_type'),
(439, 103, '_menu_item_menu_item_parent', '0'),
(440, 103, '_menu_item_object_id', '44'),
(441, 103, '_menu_item_object', 'page'),
(442, 103, '_menu_item_target', ''),
(443, 103, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(444, 103, '_menu_item_xfn', ''),
(445, 103, '_menu_item_url', ''),
(447, 104, '_menu_item_type', 'post_type'),
(448, 104, '_menu_item_menu_item_parent', '0'),
(449, 104, '_menu_item_object_id', '13'),
(450, 104, '_menu_item_object', 'page'),
(451, 104, '_menu_item_target', ''),
(452, 104, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(453, 104, '_menu_item_xfn', ''),
(454, 104, '_menu_item_url', ''),
(456, 107, '_edit_last', '1'),
(457, 107, '_edit_lock', '1425673705:1'),
(458, 108, 'chapter_country', 'Canada'),
(459, 108, '_chapter_country', 'field_54f8963650a53'),
(460, 108, 'chapter_city', 'Vancouver'),
(461, 108, '_chapter_city', 'field_54f896da50a55'),
(462, 108, 'chapter_address', '555 Howe Street'),
(463, 108, '_chapter_address', 'field_54f8973b50a58'),
(464, 108, 'chapter_email', 'example@example.com'),
(465, 108, '_chapter_email', 'field_54f896fa50a56'),
(466, 108, 'chapter_telephone', '555-555-5555'),
(467, 108, '_chapter_telephone', 'field_54f8971250a57'),
(468, 108, 'chapter_website', ''),
(469, 108, '_chapter_website', 'field_54f8975b50a59'),
(470, 108, 'chapter_description', 'This is an example Books With Wings chapter.'),
(471, 108, '_chapter_description', 'field_54f8977f50a5a'),
(472, 108, 'chapter_contact_id', '1'),
(473, 108, '_chapter_contact_id', 'field_54f900fdc500f'),
(474, 107, 'chapter_country', 'Canada'),
(475, 107, '_chapter_country', 'field_54f8963650a53'),
(476, 107, 'chapter_city', 'Vancouver'),
(477, 107, '_chapter_city', 'field_54f896da50a55'),
(478, 107, 'chapter_address', '555 Howe Street'),
(479, 107, '_chapter_address', 'field_54f8973b50a58'),
(480, 107, 'chapter_email', 'example@example.com'),
(481, 107, '_chapter_email', 'field_54f896fa50a56'),
(482, 107, 'chapter_telephone', '555-555-5555'),
(483, 107, '_chapter_telephone', 'field_54f8971250a57'),
(484, 107, 'chapter_website', ''),
(485, 107, '_chapter_website', 'field_54f8975b50a59'),
(486, 107, 'chapter_description', 'This is an example Books With Wings chapter.'),
(487, 107, '_chapter_description', 'field_54f8977f50a5a'),
(488, 107, 'chapter_contact_id', '1'),
(489, 107, '_chapter_contact_id', 'field_54f900fdc500f'),
(508, 112, '_menu_item_type', 'custom'),
(509, 112, '_menu_item_menu_item_parent', '0'),
(510, 112, '_menu_item_object_id', '112'),
(511, 112, '_menu_item_object', 'custom'),
(512, 112, '_menu_item_target', ''),
(513, 112, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(514, 112, '_menu_item_xfn', ''),
(515, 112, '_menu_item_url', 'http://localhost:3000/chapter/'),
(517, 114, '_donation_amount', '10'),
(518, 114, '_donation_payment_type', 'online'),
(519, 114, '_donor_firstname', 'Simon'),
(520, 114, '_donor_lastname', 'Cossar'),
(521, 114, '_donor_website', ''),
(522, 114, '_donor_address', ''),
(523, 114, '_donor_zip', ''),
(524, 114, '_donor_town', ''),
(525, 114, '_donor_logo', ''),
(526, 115, '_donation_amount', '10'),
(527, 115, '_donation_payment_type', 'online'),
(528, 115, '_donor_firstname', 'Simon'),
(529, 115, '_donor_lastname', 'Cossar'),
(530, 115, '_donor_website', ''),
(531, 115, '_donor_address', ''),
(532, 115, '_donor_zip', ''),
(533, 115, '_donor_town', ''),
(534, 115, '_donor_logo', ''),
(535, 116, '_donation_amount', '100'),
(536, 116, '_donation_payment_type', 'online'),
(537, 116, '_donor_firstname', 'Simon'),
(538, 116, '_donor_lastname', 'Cossar'),
(539, 116, '_donor_website', ''),
(540, 116, '_donor_address', ''),
(541, 116, '_donor_zip', ''),
(542, 116, '_donor_town', 'Nanaimo'),
(543, 116, '_donor_logo', ''),
(544, 117, '_menu_item_type', 'post_type'),
(545, 117, '_menu_item_menu_item_parent', '0'),
(546, 117, '_menu_item_object_id', '15') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(547, 117, '_menu_item_object', 'page'),
(548, 117, '_menu_item_target', ''),
(549, 117, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(550, 117, '_menu_item_xfn', ''),
(551, 117, '_menu_item_url', ''),
(553, 118, '_edit_last', '1'),
(554, 118, '_wp_page_template', 'default'),
(555, 118, '_edit_lock', '1425690292:1'),
(556, 122, '_menu_item_type', 'post_type'),
(557, 122, '_menu_item_menu_item_parent', '0'),
(558, 122, '_menu_item_object_id', '118'),
(559, 122, '_menu_item_object', 'page'),
(560, 122, '_menu_item_target', ''),
(561, 122, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(562, 122, '_menu_item_xfn', ''),
(563, 122, '_menu_item_url', ''),
(565, 49, '_edit_lock', '1425772886:1'),
(566, 49, '_edit_last', '1'),
(567, 50, '_edit_last', '1'),
(577, 158, '_edit_lock', '1425779861:1'),
(578, 158, '_edit_last', '1'),
(579, 158, '_wp_page_template', 'default'),
(580, 160, '_edit_last', '1'),
(581, 160, '_wp_page_template', 'default'),
(582, 160, '_edit_lock', '1425780982:1'),
(583, 158, '_wp_trash_meta_status', 'draft'),
(584, 158, '_wp_trash_meta_time', '1425780003'),
(585, 162, '_edit_lock', '1425779898:1'),
(586, 162, '_edit_last', '1'),
(587, 162, '_wp_page_template', 'default'),
(588, 164, '_menu_item_type', 'post_type'),
(589, 164, '_menu_item_menu_item_parent', '0'),
(590, 164, '_menu_item_object_id', '162'),
(591, 164, '_menu_item_object', 'page'),
(592, 164, '_menu_item_target', ''),
(593, 164, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(594, 164, '_menu_item_xfn', ''),
(595, 164, '_menu_item_url', ''),
(597, 165, '_menu_item_type', 'post_type'),
(598, 165, '_menu_item_menu_item_parent', '164'),
(599, 165, '_menu_item_object_id', '13'),
(600, 165, '_menu_item_object', 'page'),
(601, 165, '_menu_item_target', ''),
(602, 165, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(603, 165, '_menu_item_xfn', ''),
(604, 165, '_menu_item_url', ''),
(606, 166, '_menu_item_type', 'post_type'),
(607, 166, '_menu_item_menu_item_parent', '164'),
(608, 166, '_menu_item_object_id', '160'),
(609, 166, '_menu_item_object', 'page'),
(610, 166, '_menu_item_target', ''),
(611, 166, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(612, 166, '_menu_item_xfn', ''),
(613, 166, '_menu_item_url', ''),
(615, 167, '_menu_item_type', 'post_type'),
(616, 167, '_menu_item_menu_item_parent', '164'),
(617, 167, '_menu_item_object_id', '44'),
(618, 167, '_menu_item_object', 'page'),
(619, 167, '_menu_item_target', ''),
(620, 167, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(621, 167, '_menu_item_xfn', ''),
(622, 167, '_menu_item_url', ''),
(626, 172, '_wp_attached_file', '2015/03/Afghan_students_hold_supplies_given_to_them_at_a_school_in_the_Shah_Wali_Kot_district_Kandahar_province_Afghanistan_Feb._16_2014_1230x760.jpg'),
(627, 172, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1230;s:6:"height";i:760;s:4:"file";s:149:"2015/03/Afghan_students_hold_supplies_given_to_them_at_a_school_in_the_Shah_Wali_Kot_district_Kandahar_province_Afghanistan_Feb._16_2014_1230x760.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:149:"Afghan_students_hold_supplies_given_to_them_at_a_school_in_the_Shah_Wali_Kot_district_Kandahar_province_Afghanistan_Feb._16_2014_1230x760-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:149:"Afghan_students_hold_supplies_given_to_them_at_a_school_in_the_Shah_Wali_Kot_district_Kandahar_province_Afghanistan_Feb._16_2014_1230x760-300x185.jpg";s:5:"width";i:300;s:6:"height";i:185;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:150:"Afghan_students_hold_supplies_given_to_them_at_a_school_in_the_Shah_Wali_Kot_district_Kandahar_province_Afghanistan_Feb._16_2014_1230x760-1024x633.jpg";s:5:"width";i:1024;s:6:"height";i:633;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(628, 172, '_wp_attachment_image_alt', 'Afghan students hold supplies given to them at a school in the Shah Wali Kot district, Kandahar province, Afghanistan'),
(633, 176, 't11_pos_image', '54'),
(634, 176, '_t11_pos_image', 'field_54f7c19d24d5d'),
(635, 177, 't11_pos_image', '98'),
(636, 177, '_t11_pos_image', 'field_54f7c19d24d5d') ;

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
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(20) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=179 DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_posts`
#
INSERT INTO `wp_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2015-03-04 21:12:49', '2015-03-04 21:12:49', 'Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2015-03-04 21:12:49', '2015-03-04 21:12:49', '', 0, 'http://104.236.246.227/?p=1', 0, 'post', '', 1),
(2, 1, '2015-03-04 21:12:49', '2015-03-04 21:12:49', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my blog. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://104.236.246.227/wp/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'trash', 'open', 'open', '', 'sample-page', '', '', '2015-03-05 00:29:42', '2015-03-05 00:29:42', '', 0, 'http://104.236.246.227/?page_id=2', 0, 'page', '', 0),
(3, 1, '2015-03-04 21:15:02', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-03-04 21:15:02', '0000-00-00 00:00:00', '', 0, 'http://104.236.246.227/?p=3', 0, 'post', '', 0),
(7, 1, '2015-03-04 21:55:22', '2015-03-04 21:55:22', 'Default Userlisting form placeholder', 'Userlisting', '', 'publish', 'open', 'open', '', 'userlisting', '', '', '2015-03-04 21:55:22', '2015-03-04 21:55:22', '', 0, 'http://104.236.246.227/?p=7', 0, 'wppb-ul-cpt', '', 0),
(8, 1, '2015-03-04 21:56:53', '2015-03-04 21:56:53', '', 'Home', '', 'publish', 'open', 'open', '', 'home', '', '', '2015-03-04 21:56:53', '2015-03-04 21:56:53', '', 0, 'http://104.236.246.227/?page_id=8', 0, 'page', '', 0),
(9, 1, '2015-03-04 21:56:53', '2015-03-04 21:56:53', '', 'Home', '', 'inherit', 'open', 'open', '', '8-revision-v1', '', '', '2015-03-04 21:56:53', '2015-03-04 21:56:53', '', 8, 'http://104.236.246.227/?p=9', 0, 'revision', '', 0),
(11, 1, '2015-03-05 00:13:52', '2015-03-05 00:13:52', '<blockquote>\r\n<p>We are motivated by the intense desire for education by Afghan people of all ages, including children, and the rampant optimism in Afghanistan -R. Gordon</p>\r\n</blockquote>\r\n\r\nBooks With Wings was conceived in December, 2001. RG was watching a CNN TV interview of the head librarian at Kabul University. We were shown a single shelf of books remaining, with bullet holes in some of them. The reporter pulled one book off the shelf. It was Milton’s “Paradise Lost”. At the end of the interview the librarian turned to the camera and pleaded for people to send books. RG said to himself: “I can do that”. He went to Vienna for a scientific meeting, returned to work jet lagged, and going down the stairs to his lab, just past the Dean’s office, he turned around, deciding to see the Dean about how to get books to Afghanistan. As he turned, he broke three bones in his foot (metatarsals) and ended up in the nearby hospital instead. Recovering at home in bed, he had plenty of time to search the Web and phone people.\r\n\r\nIt seemed the number one problem had by others collecting books for Afghanistan was that they got them donated easily enough, but had no way to get them to Afghanistan. Shipping to Afghanistan was, and remains, the central problem. Fortunately Canadian Forces agreed to ship books. When RG finally met with Dean of Medicine Brian Henderson, he suggested approaching the medical students, who took it on as a class project, and via their network spread it to medical students at most other universities in Canada. The University of Manitoba Neil John Maclean Health Sciences Library made a major contribution of duplicate books, which kicked things off.\r\n\r\nHundreds of volunteers in Canada, Afghanistan and the USA have been involved. For example, Mrs. Vicel Meregillano-Hicks (Catholic Relief Services) and Dr. Ahmad Zia Shams (Herat Medical Faculty) took the idea ahead in Herat, Afghanistan with Richard Gordon, and later on extended their efforts to other provinces/universities with more volunteers/contributors. About 20,000 up to date, mostly medical books have been sent (through 2014), worth about $3 million. We have started Books With Wings USA chapters. We are expanding to other disciplines besides medicine, and new Chapters are beginning in all three countries.\r\n\r\nCash donations to Books With Wings are tax deductible via the University of Manitoba, which will issue a tax receipt honored by Canada. We need a volunteer to make a similar arrangement in the USA.\r\n \r\n<h2>Cash Donations</h2>\r\n\r\n100% of all cash donations go for:\r\n\r\n<ol>\r\n<li>book labeling and packaging materials</li>\r\n<li>shipping within North America</li>\r\n<li>shipping to Kabul</li>\r\n<li>shipping within Afghanistan</li>\r\n<li>purchase of specialty books, such as midwifery and landmine injury books, that generally don’t show up in donations</li>\r\n<li>occasional pizza and drinks for volunteers</li>\r\n</ol>\r\n\r\nBooks With Wings has no paid staff: 100% volunteers. Please have a look at the <a href="//localhost:3000/make-a-donation/" title="Make a donation">donation</a> page on this site for more information.', 'About Books With Wings', '', 'publish', 'open', 'open', '', 'about-us', '', '', '2015-03-07 23:59:08', '2015-03-07 23:59:08', '', 0, 'http://104.236.246.227/?page_id=11', 0, 'page', '', 0),
(12, 1, '2015-03-05 00:13:52', '2015-03-05 00:13:52', '', 'About Us', '', 'inherit', 'open', 'open', '', '11-revision-v1', '', '', '2015-03-05 00:13:52', '2015-03-05 00:13:52', '', 11, 'http://104.236.246.227/11-revision-v1/', 0, 'revision', '', 0),
(13, 1, '2015-03-05 00:14:15', '2015-03-05 00:14:15', '<h2>General information for volunteers</h2>\r\n\r\n\r\n<h2>Call for Volunteers in Specific Disciplines</h2>\r\nBooks With Wings has been sending up to date medical books to the medical schools of Afghanistan. We would like to expand to other disciplines, as the need for books in Afghan universities in all subjects is great. Examples of requests we have had from Afghanistan are:\r\n<ul>\r\n	<li>Business</li>\r\n	<li>Computer Science</li>\r\n	<li>Dentistry</li>\r\n	<li>Education</li>\r\n	<li>Engineering</li>\r\n	<li>English</li>\r\n	<li>Mathematics</li>\r\n	<li>Midwifery</li>\r\n	<li>Public Health</li>\r\n	<li>Science</li>\r\n</ul>\r\nThe volunteer work involves:\r\n<ul>\r\n	<li>Making contact with colleagues in Afghanistan to assess the state of their libraries and needs</li>\r\n	<li>Finding and organizing volunteers to label the books with Library of Congress catalog numbers, and to box and ship the books</li>\r\n	<li>Finding and organizing volunteers to label the books with Library of Congress catalog numbers, and to box and ship the books</li>\r\n</ul>\r\n<h2>Instructions for Volunteers</h2>\r\nVolunteers in Canada please note we have simplified cataloguing instructions for the books for April, 2010. For each book:\r\n\r\n1) Put the books in boxes by shelf order (by catalog number on the spine)\r\n\r\n2) Write into an Excel spreadsheet:\r\n\r\nName of your Books With Wings chapter\r\nBox Number\r\nLC or NLM Number\r\nISBN (generally found on the back of the title page)\r\nIf the book does not have an ISBN number, then write down its authors, title, year published, publisher, and city of publication.\r\n\r\n3) Send the files by email to Atifa Rawan at rawana@u.library.arizona.edu and Richard Gordon at gordonr@cc.umanitoba.ca as they are completed.\r\n\r\nQuick Links:\r\n\r\nPlease click here to download (PDF) instructions on how to find, enter, and submit Library of Congress numbers to our coordinator.', 'Books With Wings volunteer information', '', 'publish', 'open', 'open', '', 'get-involved', '', '', '2015-03-08 19:00:24', '2015-03-08 19:00:24', '', 162, 'http://104.236.246.227/?page_id=13', 0, 'page', '', 0),
(14, 1, '2015-03-05 00:14:15', '2015-03-05 00:14:15', '', 'Get Involved', '', 'inherit', 'open', 'open', '', '13-revision-v1', '', '', '2015-03-05 00:14:15', '2015-03-05 00:14:15', '', 13, 'http://104.236.246.227/13-revision-v1/', 0, 'revision', '', 0),
(15, 1, '2015-03-05 00:14:34', '2015-03-05 00:14:34', '<h2>Monetary Donations</h2>\r\nIf you would like to make a monetary donation to Books With Wings please contact:\r\n<address>\r\n<strong>Development and Advancement Services</strong><br>\r\n179 Extended Education Complex<br>\r\nUniversity of Manitoba<br>\r\nWinnipeg, MB R3T-2N2\r\nPhone: (204) 474-9195, 1-800-330-8066<br>\r\nFax (204) 474-7635<br>\r\nemail: development@umanitoba.ca  or<br>\r\nadvancement_services@umanitoba.ca<br> \r\n</address>\r\n\r\nCheques can be made out to "The University of Manitoba" with a note on them that the donation is for Books With Wings.\r\n\r\nIf you wish to make a donation online, please visit:\r\n\r\n<a href="http://umanitoba.ca/admin/dev_adv/">http://umanitoba.ca/admin/dev_adv/</a>\r\n\r\nWhen using the electronic donation page, you must indicate in the comment box that the donation is for Books With Wings or select "Books For Afghanistan Fund" from the drop down list.\r\n\r\nIn order to receive a tax deductible receipt, you  must include your name and address information with the donation.\r\n\r\n<h2>Book Donations</h2>\r\n\r\nBooks may be dropped off at the entrance to the Neil John Maclean Health Sciences Library, located on the 2nd floor of the Brodie Centre, 272 McDermot Ave, Winnipeg.\r\n\r\nWe will pick up books on request within Winnipeg. Please contact Dr. Richard Gordon (GordonR@cc.UManitoba.ca)  to arrange this. We do not have any budget to pay for shipping to Winnipeg.\r\n\r\n<h2>Donor Recognition</h2>\r\n\r\nBooks With Wings would like to recognize the following donors for their generous contributions:\r\n\r\nJan Johnson\r\n\r\nElizabeth Dafoe Library\r\n\r\nCancer Nursing textbooks for The Books with Wings project were provided through funding from Dr. Lesley Degner\'s Chair Award entitled: Evidence-Based Nursing Practice in Cancer Care, Palliative Care and Cancer Prevention. The Chair Award is sponsored by the Canadian Health Services Research Foundation, the Canadian Institutes of Health Research and the Winnipeg Regional Health Authority, with matching funds provided by the Faculty of Nursing, University of Manitoba.', 'Donate to Books With Wings', '', 'publish', 'open', 'open', '', 'donate', '', '', '2015-03-07 22:30:50', '2015-03-07 22:30:50', '', 0, 'http://104.236.246.227/?page_id=15', 0, 'page', '', 0),
(16, 1, '2015-03-05 00:14:34', '2015-03-05 00:14:34', '', 'Donate', '', 'inherit', 'open', 'open', '', '15-revision-v1', '', '', '2015-03-05 00:14:34', '2015-03-05 00:14:34', '', 15, 'http://104.236.246.227/15-revision-v1/', 0, 'revision', '', 0),
(17, 1, '2015-03-05 00:14:46', '2015-03-05 00:14:46', '', 'Contact Books With Wings', '', 'publish', 'open', 'open', '', 'contact', '', '', '2015-03-07 21:38:21', '2015-03-07 21:38:21', '', 0, 'http://104.236.246.227/?page_id=17', 0, 'page', '', 0),
(18, 1, '2015-03-05 00:14:46', '2015-03-05 00:14:46', '', 'Contact', '', 'inherit', 'open', 'open', '', '17-revision-v1', '', '', '2015-03-05 00:14:46', '2015-03-05 00:14:46', '', 17, 'http://104.236.246.227/17-revision-v1/', 0, 'revision', '', 0),
(19, 1, '2015-03-05 00:20:56', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2015-03-05 00:20:56', '0000-00-00 00:00:00', '', 0, 'http://104.236.246.227/?p=19', 1, 'nav_menu_item', '', 0),
(20, 1, '2015-03-05 00:20:56', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2015-03-05 00:20:56', '0000-00-00 00:00:00', '', 0, 'http://104.236.246.227/?p=20', 1, 'nav_menu_item', '', 0),
(21, 1, '2015-03-05 00:20:56', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2015-03-05 00:20:56', '0000-00-00 00:00:00', '', 0, 'http://104.236.246.227/?p=21', 1, 'nav_menu_item', '', 0),
(22, 1, '2015-03-05 00:20:56', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2015-03-05 00:20:56', '0000-00-00 00:00:00', '', 0, 'http://104.236.246.227/?p=22', 1, 'nav_menu_item', '', 0),
(23, 1, '2015-03-05 00:20:56', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2015-03-05 00:20:56', '0000-00-00 00:00:00', '', 0, 'http://104.236.246.227/?p=23', 1, 'nav_menu_item', '', 0),
(24, 1, '2015-03-05 00:20:56', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2015-03-05 00:20:56', '0000-00-00 00:00:00', '', 0, 'http://104.236.246.227/?p=24', 1, 'nav_menu_item', '', 0),
(25, 1, '2015-03-05 00:20:56', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2015-03-05 00:20:56', '0000-00-00 00:00:00', '', 0, 'http://104.236.246.227/?p=25', 1, 'nav_menu_item', '', 0),
(26, 1, '2015-03-05 00:21:03', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2015-03-05 00:21:03', '0000-00-00 00:00:00', '', 0, 'http://104.236.246.227/?p=26', 1, 'nav_menu_item', '', 0),
(27, 1, '2015-03-05 00:21:52', '2015-03-05 00:21:52', '', 'About Us', '', 'publish', 'open', 'open', '', '27', '', '', '2015-03-08 02:03:57', '2015-03-08 02:03:57', '', 0, 'http://104.236.246.227/?p=27', 1, 'nav_menu_item', '', 0),
(28, 1, '2015-03-05 00:21:03', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2015-03-05 00:21:03', '0000-00-00 00:00:00', '', 0, 'http://104.236.246.227/?p=28', 1, 'nav_menu_item', '', 0),
(29, 1, '2015-03-05 00:21:52', '2015-03-05 00:21:52', '', 'Donate', '', 'publish', 'open', 'open', '', '29', '', '', '2015-03-08 02:03:57', '2015-03-08 02:03:57', '', 0, 'http://104.236.246.227/?p=29', 6, 'nav_menu_item', '', 0),
(31, 1, '2015-03-05 00:21:03', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2015-03-05 00:21:03', '0000-00-00 00:00:00', '', 0, 'http://104.236.246.227/?p=31', 1, 'nav_menu_item', '', 0),
(32, 1, '2015-03-05 00:21:04', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2015-03-05 00:21:04', '0000-00-00 00:00:00', '', 0, 'http://104.236.246.227/?p=32', 1, 'nav_menu_item', '', 0),
(33, 1, '2015-03-05 00:29:42', '2015-03-05 00:29:42', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my blog. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://104.236.246.227/wp/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'inherit', 'open', 'open', '', '2-revision-v1', '', '', '2015-03-05 00:29:42', '2015-03-05 00:29:42', '', 2, 'http://104.236.246.227/2-revision-v1/', 0, 'revision', '', 0),
(34, 1, '2015-03-05 00:30:16', '2015-03-05 00:30:16', '[wppb-edit-profile]', 'Edit Profile', '', 'publish', 'open', 'open', '', 'edit-profile', '', '', '2015-03-05 00:30:16', '2015-03-05 00:30:16', '', 0, 'http://104.236.246.227/?page_id=34', 0, 'page', '', 0),
(35, 1, '2015-03-05 00:30:16', '2015-03-05 00:30:16', '[wppb-edit-profile]', 'Edit Profile', '', 'inherit', 'open', 'open', '', '34-revision-v1', '', '', '2015-03-05 00:30:16', '2015-03-05 00:30:16', '', 34, 'http://104.236.246.227/34-revision-v1/', 0, 'revision', '', 0),
(36, 1, '2015-03-05 00:31:44', '2015-03-05 00:31:44', '[wppb-login register_url="/register/" lostpassword_url="/recover-password/" redirect="/"]', 'Login', '', 'publish', 'open', 'open', '', 'login', '', '', '2015-03-07 20:46:48', '2015-03-07 20:46:48', '', 0, 'http://104.236.246.227/?page_id=36', 0, 'page', '', 0),
(37, 1, '2015-03-05 00:31:44', '2015-03-05 00:31:44', '[wppb-login register_url="/sign-up-to-volunteer/" lostpassword_url="/recover-password" redirect=""]', 'Login', '', 'inherit', 'open', 'open', '', '36-revision-v1', '', '', '2015-03-05 00:31:44', '2015-03-05 00:31:44', '', 36, 'http://104.236.246.227/36-revision-v1/', 0, 'revision', '', 0),
(38, 1, '2015-03-05 00:32:38', '2015-03-05 00:32:38', '[submit_donation_form]', 'Submit Donation', '', 'publish', 'open', 'open', '', 'submit-donation', '', '', '2015-03-05 00:32:38', '2015-03-05 00:32:38', '', 0, 'http://104.236.246.227/?page_id=38', 0, 'page', '', 0),
(39, 1, '2015-03-05 00:32:38', '2015-03-05 00:32:38', '[submit_donation_form]', 'Submit Donation', '', 'inherit', 'open', 'open', '', '38-revision-v1', '', '', '2015-03-05 00:32:38', '2015-03-05 00:32:38', '', 38, 'http://104.236.246.227/38-revision-v1/', 0, 'revision', '', 0),
(40, 1, '2015-03-05 00:33:23', '2015-03-05 00:33:23', '[wppb-recover-password]', 'Recover Password', '', 'publish', 'open', 'open', '', 'recover-password', '', '', '2015-03-05 00:33:23', '2015-03-05 00:33:23', '', 0, 'http://104.236.246.227/?page_id=40', 0, 'page', '', 0),
(41, 1, '2015-03-05 00:33:23', '2015-03-05 00:33:23', '[wppb-recover-password]', 'Recover Password', '', 'inherit', 'open', 'open', '', '40-revision-v1', '', '', '2015-03-05 00:33:23', '2015-03-05 00:33:23', '', 40, 'http://104.236.246.227/40-revision-v1/', 0, 'revision', '', 0),
(42, 1, '2015-03-05 00:34:03', '2015-03-05 00:34:03', 'Congratulations. You have successfully registered with Books With Wings', 'Registration Confirmation', '', 'publish', 'open', 'open', '', 'registration-confirmation', '', '', '2015-03-05 00:34:03', '2015-03-05 00:34:03', '', 0, 'http://104.236.246.227/?page_id=42', 0, 'page', '', 0),
(43, 1, '2015-03-05 00:34:03', '2015-03-05 00:34:03', 'Congratulations. You have successfully registered with Books With Wings', 'Registration Confirmation', '', 'inherit', 'open', 'open', '', '42-revision-v1', '', '', '2015-03-05 00:34:03', '2015-03-05 00:34:03', '', 42, 'http://104.236.246.227/42-revision-v1/', 0, 'revision', '', 0),
(44, 1, '2015-03-05 00:34:39', '2015-03-05 00:34:39', '[wppb-register]', 'Register to volunteer', '', 'publish', 'open', 'closed', '', 'register', '', '', '2015-03-08 02:02:07', '2015-03-08 02:02:07', '', 162, 'http://104.236.246.227/?page_id=44', 0, 'page', '', 0),
(45, 1, '2015-03-05 00:34:39', '2015-03-05 00:34:39', '[wppb-register]', 'Register', '', 'inherit', 'open', 'open', '', '44-revision-v1', '', '', '2015-03-05 00:34:39', '2015-03-05 00:34:39', '', 44, 'http://104.236.246.227/44-revision-v1/', 0, 'revision', '', 0),
(46, 1, '2015-03-05 01:03:01', '2015-03-05 01:03:01', '[wppb-login register_url="/sign-up-to-volunteer/" lostpassword_url="/recover-password" redirect="localhost:3000"]', 'Login', '', 'inherit', 'open', 'open', '', '36-revision-v1', '', '', '2015-03-05 01:03:01', '2015-03-05 01:03:01', '', 36, 'http://104.236.246.227/36-revision-v1/', 0, 'revision', '', 0),
(47, 1, '2015-03-05 01:04:23', '2015-03-05 01:04:23', '[wppb-login register_url="/sign-up-to-volunteer/" lostpassword_url="/recover-password" redirect="bookswithwings.dev"]', 'Login', '', 'inherit', 'open', 'open', '', '36-revision-v1', '', '', '2015-03-05 01:04:23', '2015-03-05 01:04:23', '', 36, 'http://104.236.246.227/36-revision-v1/', 0, 'revision', '', 0),
(48, 1, '2015-03-05 02:27:19', '2015-03-05 02:27:19', '<p>Books With Wings is a collaborative project between Canadian students and their counterparts in Afghanistan. As of September 2009, we will have sent over 8500 up-to-date medical books worth nearly $1.4 million.</p>', 'Getting Books to Afghanistan', '', 'publish', 'closed', 'closed', '', 'site-description', '', '', '2015-03-08 20:04:02', '2015-03-08 20:04:02', '', 0, 'http://104.236.246.227/positioned_full/site-description/', 0, 'positioned_full', '', 0),
(49, 1, '2015-03-05 02:27:19', '2015-03-05 02:27:19', 'Books With Wings is a registered Canadian charity. It is based out of the University of Manitaba, and has chapters throughout Canada, the United States, and Great Britian.', 'Who we are', '', 'publish', 'closed', 'closed', '', 'footer-who', '', '', '2015-03-08 00:03:45', '2015-03-08 00:03:45', '', 0, 'http://104.236.246.227/positioned_full/footer-who/', 0, 'positioned_full', '', 0),
(50, 1, '2015-03-05 02:27:19', '2015-03-05 02:27:19', '<address>\r\n<strong>Books With Wings</strong><br>\r\n555 Mystery Lane<br>\r\nWinnipeg, Manitoba Canada<br>\r\nVVR 5P3\r\n<a href="tel:5555555555">555-555-5555</a>\r\n</address> You may also <a href="//localhost:3000/contact/" title="Contact">contact</a> us through this site.', 'Contact us', '', 'publish', 'closed', 'closed', '', 'footer-where', '', '', '2015-03-07 21:05:04', '2015-03-07 21:05:04', '', 0, 'http://104.236.246.227/positioned_full/footer-where/', 0, 'positioned_full', '', 0),
(51, 1, '2015-03-05 02:39:53', '2015-03-05 02:39:53', 'a:6:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:16:"positioned_image";}}}s:8:"position";s:6:"normal";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";s:0:"";}', 'Positioned Image', 'positioned-image', 'publish', 'closed', 'closed', '', 'group_54f7c18aa2897', '', '', '2015-03-05 02:39:53', '2015-03-05 02:39:53', '', 0, 'http://104.236.246.227/?post_type=acf-field-group&#038;p=51', 0, 'acf-field-group', '', 0),
(52, 1, '2015-03-05 02:39:53', '2015-03-05 02:39:53', 'a:15:{s:4:"type";s:5:"image";s:12:"instructions";s:94:"To change the current image, hover over the image thumbnail and click on the \'x\' that appears.";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:5:"array";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";}', 'Image', 't11_pos_image', 'publish', 'open', 'open', '', 'field_54f7c19d24d5d', '', '', '2015-03-05 02:39:53', '2015-03-05 02:39:53', '', 51, 'http://104.236.246.227/?post_type=acf-field&p=52', 0, 'acf-field', '', 0),
(53, 1, '2015-03-05 02:41:09', '2015-03-05 02:41:09', '', 'Home Featured Img', '', 'publish', 'closed', 'closed', '', 'home-featured-img', '', '', '2015-03-08 19:50:53', '2015-03-08 19:50:53', '', 0, 'http://104.236.246.227/positioned_image/home-featured-img/', 0, 'positioned_image', '', 0),
(54, 1, '2015-03-05 02:41:58', '2015-03-05 02:41:58', '', 'Afghan_women_using_internet_in_Herat', '', 'inherit', 'open', 'open', '', 'afghan_females_using_internet_in_herat-1', '', '', '2015-03-05 02:42:39', '2015-03-05 02:42:39', '', 53, 'http://104.236.246.227/app/uploads/2015/03/Afghan_females_using_internet_in_Herat-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(55, 1, '2015-03-05 02:42:42', '2015-03-05 02:42:42', '', 'Home Featured Img', '', 'inherit', 'open', 'open', '', '53-revision-v1', '', '', '2015-03-05 02:42:42', '2015-03-05 02:42:42', '', 53, 'http://104.236.246.227/53-revision-v1/', 0, 'revision', '', 0),
(56, 1, '2015-03-05 17:01:29', '2015-03-05 17:01:29', '<blockquote>Education is the most powerful weapon which you can use to the change the world. - Nelson Mandela</blockquote>\r\nAs you drives past small villages in Afghanistan one thing that stands out above everything else is the number of children seen either in school uniforms or with books in hand. Although ruined historical sites and war-torn buildings are hard to miss but another thing that cannot go unnoticed is the Afghan people’s thirst for education. In the countryside children can be seen reading books when taking their sheep and goats for grazing.\r\n\r\n<img class="alignnone size-full wp-image-172" src="//localhost:3000/app/uploads/2015/03/Afghan_students_hold_supplies_given_to_them_at_a_school_in_the_Shah_Wali_Kot_district_Kandahar_province_Afghanistan_Feb._16_2014_1230x760.jpg" alt="Afghan students hold supplies given to them at a school in the Shah Wali Kot district, Kandahar province, Afghanistan" width="1230" height="760" />\r\n\r\nMore than 42% of the Afghan population is below 14 years of age. With the passion that the Afghan population has for books it can be estimated that in order to meet the needs of this young population, Afghanistan will need to bring about major improvements in the country’s education system. As Nelson Mandela has beautifully stated that “education is the most powerful weapon which you can use to the change the world.” It is our responsibility as the more privileged students to share this invaluable weapon with the students of Afghanistan. The aim of Books with Wings is to collect up to date university textbooks and share them with university students in Afghanistan in order to aid the country in moving towards independence and self-reliance.', 'Value of Education in Afghanistan', '', 'publish', 'open', 'open', '', 'value-of-education-in-afghanistan', '', '', '2015-03-08 20:04:27', '2015-03-08 20:04:27', '', 0, 'http://104.236.246.227/?p=56', 0, 'post', '', 0),
(57, 1, '2015-03-05 17:01:05', '2015-03-05 17:01:05', 'As one drives past small villages in Afghanistan one of the most striking things that stand out above everything else is the number of children seen either in school uniforms or with books in hand. Although ruined historical sites and war-torn buildings are hard to miss but another thing that cannot go unnoticed is the Afghan people’s thirst for education. In the countryside children can be seen reading books when taking their sheep and goats for grazing.\r\n\r\nMore than 42% of the Afghan population is below 14 years of age. With the passion that the Afghan population has for books it can be estimated that in order to meet the needs of this young population, Afghanistan will need to bring about major improvements in the country’s education system. As Nelson Mandela has beautifully stated that “education is the most powerful weapon which you can use to the change the world.” It is our responsibility as the more privileged students to share this invaluable weapon with the students of Afghanistan. The aim of Books with Wings is to collect up to date university textbooks and share them with university students in Afghanistan in order to aid the country in moving towards independence and self-reliance.', 'Value of Education in Afghanistan', '', 'inherit', 'open', 'open', '', '56-revision-v1', '', '', '2015-03-05 17:01:05', '2015-03-05 17:01:05', '', 56, 'http://104.236.246.227/56-revision-v1/', 0, 'revision', '', 0),
(58, 1, '2015-03-05 17:05:05', '2015-03-05 17:05:05', 'The mission of Books With Wings is to help to improve the education system of Afghanistan so that its people have the ability to improve the future of their country. It does this by collecting and shipping university level text-books from schools in the west to the universities and libraries of Afghanistan .', 'Getting Books to Afghanistan', '', 'inherit', 'open', 'open', '', '48-revision-v1', '', '', '2015-03-05 17:05:05', '2015-03-05 17:05:05', '', 48, 'http://104.236.246.227/48-revision-v1/', 0, 'revision', '', 0),
(60, 1, '2015-03-05 18:00:02', '2015-03-05 18:00:02', 'a:6:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:7:"chapter";}}}s:8:"position";s:6:"normal";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";s:0:"";}', 'Chapter Information', 'chapter-information', 'publish', 'closed', 'closed', '', 'group_54f896133abd6', '', '', '2015-03-06 01:21:35', '2015-03-06 01:21:35', '', 0, 'http://104.236.246.227/?post_type=acf-field-group&#038;p=60', 0, 'acf-field-group', '', 0),
(62, 1, '2015-03-05 18:00:02', '2015-03-05 18:00:02', 'a:12:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";s:8:"readonly";i:0;s:8:"disabled";i:0;}', 'Country', 'chapter_country', 'publish', 'open', 'open', '', 'field_54f8963650a53', '', '', '2015-03-05 20:27:50', '2015-03-05 20:27:50', '', 60, 'http://104.236.246.227/?post_type=acf-field&#038;p=62', 0, 'acf-field', '', 0),
(63, 1, '2015-03-05 18:00:02', '2015-03-05 18:00:02', 'a:12:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";s:8:"readonly";i:0;s:8:"disabled";i:0;}', 'Province or State', 'chapter_province', 'publish', 'open', 'open', '', 'contact-form-7-id89-titlecontact-books-with-wings-nanaimo', '', '', '2015-03-05 20:27:50', '2015-03-05 20:27:50', '', 60, 'http://104.236.246.227/?post_type=acf-field&#038;p=63', 1, 'acf-field', '', 0),
(64, 1, '2015-03-05 18:00:02', '2015-03-05 18:00:02', 'a:12:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";s:8:"readonly";i:0;s:8:"disabled";i:0;}', 'City', 'chapter_city', 'publish', 'open', 'open', '', 'field_54f896da50a55', '', '', '2015-03-05 20:27:50', '2015-03-05 20:27:50', '', 60, 'http://104.236.246.227/?post_type=acf-field&#038;p=64', 2, 'acf-field', '', 0),
(65, 1, '2015-03-05 18:00:02', '2015-03-05 18:00:02', 'a:12:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";s:8:"readonly";i:0;s:8:"disabled";i:0;}', 'Street Address', 'chapter_address', 'publish', 'open', 'open', '', 'field_54f8973b50a58', '', '', '2015-03-05 20:27:50', '2015-03-05 20:27:50', '', 60, 'http://104.236.246.227/?post_type=acf-field&#038;p=65', 3, 'acf-field', '', 0),
(66, 1, '2015-03-05 18:00:02', '2015-03-05 18:00:02', 'a:9:{s:4:"type";s:5:"email";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";}', 'Email', 'chapter_email', 'publish', 'open', 'open', '', 'field_54f896fa50a56', '', '', '2015-03-05 20:27:50', '2015-03-05 20:27:50', '', 60, 'http://104.236.246.227/?post_type=acf-field&#038;p=66', 4, 'acf-field', '', 0),
(67, 1, '2015-03-05 18:00:02', '2015-03-05 18:00:02', 'a:12:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";s:8:"readonly";i:0;s:8:"disabled";i:0;}', 'Telephone Number', 'chapter_telephone', 'publish', 'open', 'open', '', 'field_54f8971250a57', '', '', '2015-03-05 20:27:50', '2015-03-05 20:27:50', '', 60, 'http://104.236.246.227/?post_type=acf-field&#038;p=67', 5, 'acf-field', '', 0),
(68, 1, '2015-03-05 18:00:02', '2015-03-05 18:00:02', 'a:7:{s:4:"type";s:3:"url";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";}', 'Website', 'chapter_website', 'publish', 'open', 'open', '', 'field_54f8975b50a59', '', '', '2015-03-05 20:27:50', '2015-03-05 20:27:50', '', 60, 'http://104.236.246.227/?post_type=acf-field&#038;p=68', 6, 'acf-field', '', 0),
(69, 1, '2015-03-05 18:00:02', '2015-03-05 18:00:02', 'a:9:{s:4:"type";s:7:"wysiwyg";s:12:"instructions";s:78:"Use this space to describe anything about the chapter that may be interesting.";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:4:"tabs";s:3:"all";s:7:"toolbar";s:4:"full";s:12:"media_upload";i:1;}', 'Description', 'chapter_description', 'publish', 'open', 'open', '', 'field_54f8977f50a5a', '', '', '2015-03-05 20:27:50', '2015-03-05 20:27:50', '', 60, 'http://104.236.246.227/?post_type=acf-field&#038;p=69', 7, 'acf-field', '', 0),
(70, 1, '2015-03-05 18:00:57', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-03-05 18:00:57', '0000-00-00 00:00:00', '', 0, 'http://104.236.246.227/?post_type=chapter&p=70', 0, 'chapter', '', 0),
(71, 1, '2015-03-05 18:02:36', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-03-05 18:02:36', '0000-00-00 00:00:00', '', 0, 'http://104.236.246.227/?post_type=chapter&p=71', 0, 'chapter', '', 0),
(72, 1, '2015-03-05 18:02:43', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-03-05 18:02:43', '0000-00-00 00:00:00', '', 0, 'http://104.236.246.227/?post_type=chapter&p=72', 0, 'chapter', '', 0),
(73, 1, '2015-03-05 18:03:32', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-03-05 18:03:32', '0000-00-00 00:00:00', '', 0, 'http://104.236.246.227/?post_type=chapter&p=73', 0, 'chapter', '', 0),
(74, 1, '2015-03-05 18:07:05', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-03-05 18:07:05', '0000-00-00 00:00:00', '', 0, 'http://104.236.246.227/?post_type=chapter&p=74', 0, 'chapter', '', 0),
(75, 1, '2015-03-05 18:07:13', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-03-05 18:07:13', '0000-00-00 00:00:00', '', 0, 'http://104.236.246.227/?post_type=chapter&p=75', 0, 'chapter', '', 0),
(76, 1, '2015-03-05 18:08:36', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-03-05 18:08:36', '0000-00-00 00:00:00', '', 0, 'http://104.236.246.227/?post_type=chapter&p=76', 0, 'chapter', '', 0),
(77, 1, '2015-03-05 18:09:08', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-03-05 18:09:08', '0000-00-00 00:00:00', '', 0, 'http://104.236.246.227/?post_type=chapter&p=77', 0, 'chapter', '', 0),
(78, 1, '2015-03-05 18:09:30', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-03-05 18:09:30', '0000-00-00 00:00:00', '', 0, 'http://104.236.246.227/?post_type=chapter&p=78', 0, 'chapter', '', 0),
(79, 1, '2015-03-05 18:15:04', '2015-03-05 18:15:04', '', 'Books With Wings Nanaimo Chapter', '', 'publish', 'closed', 'closed', '', 'books-with-wings-nanaimo-chapter', '', '', '2015-03-06 01:24:03', '2015-03-06 01:24:03', '', 0, 'http://104.236.246.227/?post_type=chapter&#038;p=79', 0, 'chapter', '', 0),
(80, 1, '2015-03-05 18:15:04', '2015-03-05 18:15:04', '', 'Books With Wings Nanaimo Chapter', '', 'inherit', 'open', 'open', '', '79-revision-v1', '', '', '2015-03-05 18:15:04', '2015-03-05 18:15:04', '', 79, 'http://104.236.246.227/79-revision-v1/', 0, 'revision', '', 0),
(81, 1, '2015-03-05 19:09:58', '2015-03-05 19:09:58', '', 'Books With Wings Nanaimo Chapter', '', 'inherit', 'open', 'open', '', '79-revision-v1', '', '', '2015-03-05 19:09:58', '2015-03-05 19:09:58', '', 79, 'http://104.236.246.227/79-revision-v1/', 0, 'revision', '', 0),
(82, 1, '2015-03-05 19:11:44', '2015-03-05 19:11:44', '', 'Books With Wings Nanaimo Chapter', '', 'inherit', 'open', 'open', '', '79-revision-v1', '', '', '2015-03-05 19:11:44', '2015-03-05 19:11:44', '', 79, 'http://104.236.246.227/79-revision-v1/', 0, 'revision', '', 0),
(83, 1, '2015-03-05 19:35:25', '2015-03-05 19:35:25', '', 'Books With Wings Nanaimo Chapter', '', 'inherit', 'open', 'open', '', '79-revision-v1', '', '', '2015-03-05 19:35:25', '2015-03-05 19:35:25', '', 79, 'http://104.236.246.227/79-revision-v1/', 0, 'revision', '', 0),
(84, 1, '2015-03-05 19:36:15', '2015-03-05 19:36:15', '', 'Books With Wings Nanaimo Chapter', '', 'inherit', 'open', 'open', '', '79-revision-v1', '', '', '2015-03-05 19:36:15', '2015-03-05 19:36:15', '', 79, 'http://104.236.246.227/79-revision-v1/', 0, 'revision', '', 0),
(85, 1, '2015-03-05 19:36:49', '2015-03-05 19:36:49', '', 'Books With Wings Nanaimo Chapter', '', 'inherit', 'open', 'open', '', '79-revision-v1', '', '', '2015-03-05 19:36:49', '2015-03-05 19:36:49', '', 79, 'http://104.236.246.227/79-revision-v1/', 0, 'revision', '', 0),
(86, 1, '2015-03-05 19:37:16', '2015-03-05 19:37:16', '', 'Books With Wings Nanaimo Chapter', '', 'inherit', 'open', 'open', '', '79-revision-v1', '', '', '2015-03-05 19:37:16', '2015-03-05 19:37:16', '', 79, 'http://104.236.246.227/79-revision-v1/', 0, 'revision', '', 0),
(87, 1, '2015-03-05 20:03:35', '2015-03-05 20:03:35', '', 'Books With Wings Nanaimo Chapter', '', 'inherit', 'open', 'open', '', '79-revision-v1', '', '', '2015-03-05 20:03:35', '2015-03-05 20:03:35', '', 79, 'http://104.236.246.227/79-revision-v1/', 0, 'revision', '', 0) ;
INSERT INTO `wp_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(88, 1, '2015-03-05 20:18:01', '2015-03-05 20:18:01', '<p>Your Name (required)<br />\r\n    [text* your-name] </p>\r\n\r\n<p>Your Email (required)<br />\r\n    [email* your-email] </p>\r\n\r\n<p>Subject<br />\r\n    [text your-subject] </p>\r\n\r\n<p>Your Message<br />\r\n    [textarea your-message] </p>\r\n\r\n<p>[submit "Send"]</p>\n[your-subject]\n[your-name] <wordpress@localhost:3000>\nFrom: [your-name] <[your-email]>\r\nSubject: [your-subject]\r\n\r\nMessage Body:\r\n[your-message]\r\n\r\n--\r\nThis e-mail was sent from a contact form on Books With Wings (//localhost:3000/)%3C/textarea%3E\r\n	</div>\r\n\r\n	<div class="mail-field">\r\n	<input type="checkbox" id="wpcf7-mail-exclude-blank" name="wpcf7-mail-exclude-blank" value="1" />\r\n	<label for="wpcf7-mail-exclude-blank">Exclude lines with blank mail-tags from output</label>\r\n	</div>\r\n</div>\r\n\r\n<br class="clear" />\r\n</div>\r\n</div>\r\n</div>\r\n</div><div id="mail_2-sortables" class="meta-box-sortables"><div id="mail2div" class="postbox " >\r\n<div class="handlediv" title="Click to toggle"><br /></div><h3 class=\'hndle\'><span>Mail (2)</span></h3>\r\n<div class="inside">\r\n<div class="mail-field">\r\n<input type="checkbox" id="wpcf7-mail-2-active" name="wpcf7-mail-2-active" class="check-if-these-fields-are-active" value="1" />\r\n<label for="wpcf7-mail-2-active">Use mail (2)</label>\r\n<div class="pseudo-hr"></div>\r\n</div>\r\n\r\n<br class="clear" />\r\n\r\n<div class="mail-fields">\r\n<div class="half-left">\r\n	<div class="mail-field">\r\n	<label for="wpcf7-mail-2-recipient">To:</label><br />\r\n	<input type="text" id="wpcf7-mail-2-recipient" name="wpcf7-mail-2-recipient" class="wide" size="70" value="[your-email]" />\r\n	</div>\r\n\r\n	<div class="mail-field">\r\n	<label for="wpcf7-mail-2-sender">From:</label><br />\r\n	<input type="text" id="wpcf7-mail-2-sender" name="wpcf7-mail-2-sender" class="wide" size="70" value="Books With Wings <wordpress@localhost:3000>" />\r\n	</div>\r\n\r\n	<div class="mail-field">\r\n	<label for="wpcf7-mail-2-subject">Subject:</label><br />\r\n	<input type="text" id="wpcf7-mail-2-subject" name="wpcf7-mail-2-subject" class="wide" size="70" value="[your-subject]" />\r\n	</div>\r\n\r\n	<div class="pseudo-hr"></div>\r\n\r\n	<div class="mail-field">\r\n	<label for="wpcf7-mail-2-additional-headers">Additional headers:</label><br />\r\n	<textarea id="wpcf7-mail-2-additional-headers" name="wpcf7-mail-2-additional-headers" cols="100" rows="2">Reply-To: scossar3@gmail.com\nsicossart@gmail.com\nReply-To: [your-email]\n\n\n\n\n[your-subject]\nBooks With Wings <wordpress@bookswithwings.prod>\nMessage Body:\r\n[your-message]\r\n\r\n--\r\nThis e-mail was sent from a contact form on Books With Wings (//localhost:3000/)%3C/textarea%3E\r\n	</div>\r\n\r\n	<div class="mail-field">\r\n	<input type="checkbox" id="wpcf7-mail-2-exclude-blank" name="wpcf7-mail-2-exclude-blank" value="1" />\r\n	<label for="wpcf7-mail-2-exclude-blank">Exclude lines with blank mail-tags from output</label>\r\n	</div>\r\n</div>\r\n\r\n<br class="clear" />\r\n</div>\r\n</div>\r\n</div>\r\n</div><div id="messages-sortables" class="meta-box-sortables"><div id="messagesdiv" class="postbox " >\r\n<div class="handlediv" title="Click to toggle"><br /></div><h3 class=\'hndle\'><span>Messages</span></h3>\r\n<div class="inside">\r\n<div class="message-field">\r\n<p class="description"><label for="wpcf7-message-mail-sent-ok">Sender\'s message was sent successfully</label></p>\r\n<input type="text" id="wpcf7-message-mail-sent-ok" name="wpcf7-message-mail-sent-ok" class="wide" size="70" value="Your message was sent successfully. Thanks." />\r\n</div>\r\n<div class="message-field">\r\n<p class="description"><label for="wpcf7-message-mail-sent-ng">Sender\'s message was failed to send</label></p>\r\n<input type="text" id="wpcf7-message-mail-sent-ng" name="wpcf7-message-mail-sent-ng" class="wide" size="70" value="Failed to send your message. Please try later or contact the administrator by another method." />\r\n</div>\r\n<div class="message-field">\r\n<p class="description"><label for="wpcf7-message-validation-error">Validation errors occurred</label></p>\r\n<input type="text" id="wpcf7-message-validation-error" name="wpcf7-message-validation-error" class="wide" size="70" value="Validation errors occurred. Please confirm the fields and submit it again." />\r\n</div>\r\n<div class="message-field">\r\n<p class="description"><label for="wpcf7-message-spam">Submission was referred to as spam</label></p>\r\n<input type="text" id="wpcf7-message-spam" name="wpcf7-message-spam" class="wide" size="70" value="Failed to send your message. Please try later or contact the administrator by another method." />\r\n</div>\r\n<div class="message-field">\r\n<p class="description"><label for="wpcf7-message-accept-terms">There are terms that the sender must accept</label></p>\r\n<input type="text" id="wpcf7-message-accept-terms" name="wpcf7-message-accept-terms" class="wide" size="70" value="Please accept the terms to proceed." />\r\n</div>\r\n<div class="message-field">\r\n<p class="description"><label for="wpcf7-message-invalid-required">There is a field that the sender must fill in</label></p>\r\n<input type="text" id="wpcf7-message-invalid-required" name="wpcf7-message-invalid-required" class="wide" size="70" value="Please fill in the required field." />\r\n</div>\r\n<p><a href="#" id="show-all-messages">Show all messages</a></p>\r\n<div class="hide-initially"><div class="message-field">\r\n<p class="description"><label for="wpcf7-message-invalid-too-long">There is a field that the user input is longer than the maximum allowed length</label></p>\r\n<input type="text" id="wpcf7-message-invalid-too-long" name="wpcf7-message-invalid-too-long" class="wide" size="70" value="This input is too long." />\r\n</div>\r\n<div class="message-field">\r\n<p class="description"><label for="wpcf7-message-invalid-too-short">There is a field that the user input is shorter than the minimum allowed length</label></p>\r\n<input type="text" id="wpcf7-message-invalid-too-short" name="wpcf7-message-invalid-too-short" class="wide" size="70" value="This input is too short." />\r\n</div>\r\n<div class="message-field">\r\n<p class="description"><label for="wpcf7-message-captcha-not-match">The code that sender entered does not match the CAPTCHA</label></p>\r\n<input type="text" id="wpcf7-message-captcha-not-match" name="wpcf7-message-captcha-not-match" class="wide" size="70" value="Your entered code is incorrect." />\r\n</div>\r\n<div class="message-field">\r\n<p class="description"><label for="wpcf7-message-invalid-number">Number format that the sender entered is invalid</label></p>\r\n<input type="text" id="wpcf7-message-invalid-number" name="wpcf7-message-invalid-number" class="wide" size="70" value="Number format seems invalid." />\r\n</div>\r\n<div class="message-field">\r\n<p class="description"><label for="wpcf7-message-number-too-small">Number is smaller than minimum limit</label></p>\r\n<input type="text" id="wpcf7-message-number-too-small" name="wpcf7-message-number-too-small" class="wide" size="70" value="This number is too small." />\r\n</div>\r\n<div class="message-field">\r\n<p class="description"><label for="wpcf7-message-number-too-large">Number is larger than maximum limit</label></p>\r\n<input type="text" id="wpcf7-message-number-too-large" name="wpcf7-message-number-too-large" class="wide" size="70" value="This number is too large." />\r\n</div>\r\n<div class="message-field">\r\n<p class="description"><label for="wpcf7-message-invalid-email">Email address that the sender entered is invalid</label></p>\r\n<input type="text" id="wpcf7-message-invalid-email" name="wpcf7-message-invalid-email" class="wide" size="70" value="Email address seems invalid." />\r\n</div>\r\n<div class="message-field">\r\n<p class="description"><label for="wpcf7-message-invalid-url">URL that the sender entered is invalid</label></p>\r\n<input type="text" id="wpcf7-message-invalid-url" name="wpcf7-message-invalid-url" class="wide" size="70" value="URL seems invalid." />\r\n</div>\r\n<div class="message-field">\r\n<p class="description"><label for="wpcf7-message-invalid-tel">Telephone number that the sender entered is invalid</label></p>\r\n<input type="text" id="wpcf7-message-invalid-tel" name="wpcf7-message-invalid-tel" class="wide" size="70" value="Telephone number seems invalid." />\r\n</div>\r\n<div class="message-field">\r\n<p class="description"><label for="wpcf7-message-quiz-answer-not-correct">Sender doesn\'t enter the correct answer to the quiz</label></p>\r\n<input type="text" id="wpcf7-message-quiz-answer-not-correct" name="wpcf7-message-quiz-answer-not-correct" class="wide" size="70" value="Your answer is not correct." />\r\n</div>\r\n<div class="message-field">\r\n<p class="description"><label for="wpcf7-message-invalid-date">Date format that the sender entered is invalid</label></p>\r\n<input type="text" id="wpcf7-message-invalid-date" name="wpcf7-message-invalid-date" class="wide" size="70" value="Date format seems invalid." />\r\n</div>\r\n<div class="message-field">\r\n<p class="description"><label for="wpcf7-message-date-too-early">Date is earlier than minimum limit</label></p>\r\n<input type="text" id="wpcf7-message-date-too-early" name="wpcf7-message-date-too-early" class="wide" size="70" value="This date is too early." />\r\n</div>\r\n<div class="message-field">\r\n<p class="description"><label for="wpcf7-message-date-too-late">Date is later than maximum limit</label></p>\r\n<input type="text" id="wpcf7-message-date-too-late" name="wpcf7-message-date-too-late" class="wide" size="70" value="This date is too late." />\r\n</div>\r\n<div class="message-field">\r\n<p class="description"><label for="wpcf7-message-upload-failed">Uploading a file fails for any reason</label></p>\r\n<input type="text" id="wpcf7-message-upload-failed" name="wpcf7-message-upload-failed" class="wide" size="70" value="Failed to upload file." />\r\n</div>\r\n<div class="message-field">\r\n<p class="description"><label for="wpcf7-message-upload-file-type-invalid">Uploaded file is not allowed file type</label></p>\r\n<input type="text" id="wpcf7-message-upload-file-type-invalid" name="wpcf7-message-upload-file-type-invalid" class="wide" size="70" value="This file type is not allowed." />\r\n</div>\r\n<div class="message-field">\r\n<p class="description"><label for="wpcf7-message-upload-file-too-large">Uploaded file is too large</label></p>\r\n<input type="text" id="wpcf7-message-upload-file-too-large" name="wpcf7-message-upload-file-too-large" class="wide" size="70" value="This file is too large." />\r\n</div>\r\n<div class="message-field">\r\n<p class="description"><label for="wpcf7-message-upload-failed-php-error">Uploading a file fails for PHP error</label></p>\r\n<input type="text" id="wpcf7-message-upload-failed-php-error" name="wpcf7-message-upload-failed-php-error" class="wide" size="70" value="Failed to upload file. Error occurred." />\r\n</div>\r\n</div></div>\r\n</div>\r\n</div><div id="additional_settings-sortables" class="meta-box-sortables"><div id="additionalsettingsdiv" class="postbox " >\r\n<div class="handlediv" title="Click to toggle"><br /></div><h3 class=\'hndle\'><span>Additional Settings</span></h3>\r\n<div class="inside">\r\n<textarea id="wpcf7-additional-settings" name="wpcf7-additional-settings" cols="100" rows="8">\n[your-email]\nReply-To: scossar3@gmail.com\n\n\n\nYour message was sent successfully. Thanks.\nFailed to send your message. Please try later or contact the administrator by another method.\nValidation errors occurred. Please confirm the fields and submit it again.\nFailed to send your message. Please try later or contact the administrator by another method.\nPlease accept the terms to proceed.\nPlease fill in the required field.\nThis input is too long.\nThis input is too short.\nYour entered code is incorrect.\nNumber format seems invalid.\nThis number is too small.\nThis number is too large.\nEmail address seems invalid.\nURL seems invalid.\nTelephone number seems invalid.\nYour answer is not correct.\nDate format seems invalid.\nThis date is too early.\nThis date is too late.\nFailed to upload file.\nThis file type is not allowed.\nThis file is too large.\nFailed to upload file. Error occurred.', 'Contact form 1', '', 'publish', 'open', 'open', '', 'contact-form-1', '', '', '2015-03-05 21:06:19', '2015-03-05 21:06:19', '', 0, 'http://104.236.246.227/?post_type=wpcf7_contact_form&#038;p=88', 0, 'wpcf7_contact_form', '', 0),
(89, 1, '2015-03-05 20:22:21', '2015-03-05 20:22:21', '<div class="form-group">\r\n	<label for="your-name">Your name (required)</label>\r\n	[text* your-name class:form-control]\r\n</div>\r\n\r\n<div class="form-group">\r\n	<label for="your-email">Your email address (required)</label>\r\n	[email* your-email class:form-control]\r\n</div>\r\n\r\n<div class="form-group">\r\n	<label for="your-subject">Subject</label>\r\n	[text your-subject class:form-control]\r\n</div>\r\n\r\n<div class="form-group">\r\n	<label for="your-message">Your Message</label>\r\n	[textarea your-message class:form-control]\r\n</div>\r\n<p>[submit class:btn class:btn-primary "Contact Us"]</p>\n[your-subject]\n[your-name] <wordpress@localhost:3000>\nFrom: [your-name] <[your-email]>\r\nSubject: [your-subject]\r\n\r\nMessage Body:\r\n[your-message]\r\n\r\n--\r\nThis e-mail was sent from a contact form on Books With Wings (//localhost:3000/)%3C/textarea%3E\r\n	</div>\r\n\r\n	<div class="mail-field">\r\n	<input type="checkbox" id="wpcf7-mail-exclude-blank" name="wpcf7-mail-exclude-blank" value="1" />\r\n	<label for="wpcf7-mail-exclude-blank">Exclude lines with blank mail-tags from output</label>\r\n	</div>\r\n</div>\r\n\r\n<br class="clear" />\r\n</div>\r\n</div>\r\n</div>\r\n</div><div id="mail_2-sortables" class="meta-box-sortables"><div id="mail2div" class="postbox " >\r\n<div class="handlediv" title="Click to toggle"><br /></div><h3 class=\'hndle\'><span>Mail (2)</span></h3>\r\n<div class="inside">\r\n<div class="mail-field">\r\n<input type="checkbox" id="wpcf7-mail-2-active" name="wpcf7-mail-2-active" class="check-if-these-fields-are-active" value="1" />\r\n<label for="wpcf7-mail-2-active">Use mail (2)</label>\r\n<div class="pseudo-hr"></div>\r\n</div>\r\n\r\n<br class="clear" />\r\n\r\n<div class="mail-fields">\r\n<div class="half-left">\r\n	<div class="mail-field">\r\n	<label for="wpcf7-mail-2-recipient">To:</label><br />\r\n	<input type="text" id="wpcf7-mail-2-recipient" name="wpcf7-mail-2-recipient" class="wide" size="70" value="[your-email]" />\r\n	</div>\r\n\r\n	<div class="mail-field">\r\n	<label for="wpcf7-mail-2-sender">From:</label><br />\r\n	<input type="text" id="wpcf7-mail-2-sender" name="wpcf7-mail-2-sender" class="wide" size="70" value="Books With Wings <wordpress@localhost:3000>" />\r\n	</div>\r\n\r\n	<div class="mail-field">\r\n	<label for="wpcf7-mail-2-subject">Subject:</label><br />\r\n	<input type="text" id="wpcf7-mail-2-subject" name="wpcf7-mail-2-subject" class="wide" size="70" value="[your-subject]" />\r\n	</div>\r\n\r\n	<div class="pseudo-hr"></div>\r\n\r\n	<div class="mail-field">\r\n	<label for="wpcf7-mail-2-additional-headers">Additional headers:</label><br />\r\n	<textarea id="wpcf7-mail-2-additional-headers" name="wpcf7-mail-2-additional-headers" cols="100" rows="2">Reply-To: scossar3@gmail.com\nscossar3@gmail.com\nReply-To: [your-email]\n\n\n\n\n[your-subject]\nBooks With Wings <wordpress@localhost:3000>\nMessage Body:\r\n[your-message]\r\n\r\n--\r\nThis e-mail was sent from a contact form on Books With Wings (//localhost:3000/)%3C/textarea%3E\r\n	</div>\r\n\r\n	<div class="mail-field">\r\n	<input type="checkbox" id="wpcf7-mail-2-exclude-blank" name="wpcf7-mail-2-exclude-blank" value="1" />\r\n	<label for="wpcf7-mail-2-exclude-blank">Exclude lines with blank mail-tags from output</label>\r\n	</div>\r\n</div>\r\n\r\n<br class="clear" />\r\n</div>\r\n</div>\r\n</div>\r\n</div><div id="messages-sortables" class="meta-box-sortables"><div id="messagesdiv" class="postbox " >\r\n<div class="handlediv" title="Click to toggle"><br /></div><h3 class=\'hndle\'><span>Messages</span></h3>\r\n<div class="inside">\r\n<div class="message-field">\r\n<p class="description"><label for="wpcf7-message-mail-sent-ok">Sender\'s message was sent successfully</label></p>\r\n<input type="text" id="wpcf7-message-mail-sent-ok" name="wpcf7-message-mail-sent-ok" class="wide" size="70" value="Your message was sent successfully. Thanks." />\r\n</div>\r\n<div class="message-field">\r\n<p class="description"><label for="wpcf7-message-mail-sent-ng">Sender\'s message was failed to send</label></p>\r\n<input type="text" id="wpcf7-message-mail-sent-ng" name="wpcf7-message-mail-sent-ng" class="wide" size="70" value="Failed to send your message. Please try later or contact the administrator by another method." />\r\n</div>\r\n<div class="message-field">\r\n<p class="description"><label for="wpcf7-message-validation-error">Validation errors occurred</label></p>\r\n<input type="text" id="wpcf7-message-validation-error" name="wpcf7-message-validation-error" class="wide" size="70" value="Validation errors occurred. Please confirm the fields and submit it again." />\r\n</div>\r\n<div class="message-field">\r\n<p class="description"><label for="wpcf7-message-spam">Submission was referred to as spam</label></p>\r\n<input type="text" id="wpcf7-message-spam" name="wpcf7-message-spam" class="wide" size="70" value="Failed to send your message. Please try later or contact the administrator by another method." />\r\n</div>\r\n<div class="message-field">\r\n<p class="description"><label for="wpcf7-message-accept-terms">There are terms that the sender must accept</label></p>\r\n<input type="text" id="wpcf7-message-accept-terms" name="wpcf7-message-accept-terms" class="wide" size="70" value="Please accept the terms to proceed." />\r\n</div>\r\n<div class="message-field">\r\n<p class="description"><label for="wpcf7-message-invalid-required">There is a field that the sender must fill in</label></p>\r\n<input type="text" id="wpcf7-message-invalid-required" name="wpcf7-message-invalid-required" class="wide" size="70" value="Please fill in the required field." />\r\n</div>\r\n<p><a href="#" id="show-all-messages">Show all messages</a></p>\r\n<div class="hide-initially"><div class="message-field">\r\n<p class="description"><label for="wpcf7-message-invalid-too-long">There is a field that the user input is longer than the maximum allowed length</label></p>\r\n<input type="text" id="wpcf7-message-invalid-too-long" name="wpcf7-message-invalid-too-long" class="wide" size="70" value="This input is too long." />\r\n</div>\r\n<div class="message-field">\r\n<p class="description"><label for="wpcf7-message-invalid-too-short">There is a field that the user input is shorter than the minimum allowed length</label></p>\r\n<input type="text" id="wpcf7-message-invalid-too-short" name="wpcf7-message-invalid-too-short" class="wide" size="70" value="This input is too short." />\r\n</div>\r\n<div class="message-field">\r\n<p class="description"><label for="wpcf7-message-captcha-not-match">The code that sender entered does not match the CAPTCHA</label></p>\r\n<input type="text" id="wpcf7-message-captcha-not-match" name="wpcf7-message-captcha-not-match" class="wide" size="70" value="Your entered code is incorrect." />\r\n</div>\r\n<div class="message-field">\r\n<p class="description"><label for="wpcf7-message-invalid-number">Number format that the sender entered is invalid</label></p>\r\n<input type="text" id="wpcf7-message-invalid-number" name="wpcf7-message-invalid-number" class="wide" size="70" value="Number format seems invalid." />\r\n</div>\r\n<div class="message-field">\r\n<p class="description"><label for="wpcf7-message-number-too-small">Number is smaller than minimum limit</label></p>\r\n<input type="text" id="wpcf7-message-number-too-small" name="wpcf7-message-number-too-small" class="wide" size="70" value="This number is too small." />\r\n</div>\r\n<div class="message-field">\r\n<p class="description"><label for="wpcf7-message-number-too-large">Number is larger than maximum limit</label></p>\r\n<input type="text" id="wpcf7-message-number-too-large" name="wpcf7-message-number-too-large" class="wide" size="70" value="This number is too large." />\r\n</div>\r\n<div class="message-field">\r\n<p class="description"><label for="wpcf7-message-invalid-email">Email address that the sender entered is invalid</label></p>\r\n<input type="text" id="wpcf7-message-invalid-email" name="wpcf7-message-invalid-email" class="wide" size="70" value="Email address seems invalid." />\r\n</div>\r\n<div class="message-field">\r\n<p class="description"><label for="wpcf7-message-invalid-url">URL that the sender entered is invalid</label></p>\r\n<input type="text" id="wpcf7-message-invalid-url" name="wpcf7-message-invalid-url" class="wide" size="70" value="URL seems invalid." />\r\n</div>\r\n<div class="message-field">\r\n<p class="description"><label for="wpcf7-message-invalid-tel">Telephone number that the sender entered is invalid</label></p>\r\n<input type="text" id="wpcf7-message-invalid-tel" name="wpcf7-message-invalid-tel" class="wide" size="70" value="Telephone number seems invalid." />\r\n</div>\r\n<div class="message-field">\r\n<p class="description"><label for="wpcf7-message-quiz-answer-not-correct">Sender doesn\'t enter the correct answer to the quiz</label></p>\r\n<input type="text" id="wpcf7-message-quiz-answer-not-correct" name="wpcf7-message-quiz-answer-not-correct" class="wide" size="70" value="Your answer is not correct." />\r\n</div>\r\n<div class="message-field">\r\n<p class="description"><label for="wpcf7-message-invalid-date">Date format that the sender entered is invalid</label></p>\r\n<input type="text" id="wpcf7-message-invalid-date" name="wpcf7-message-invalid-date" class="wide" size="70" value="Date format seems invalid." />\r\n</div>\r\n<div class="message-field">\r\n<p class="description"><label for="wpcf7-message-date-too-early">Date is earlier than minimum limit</label></p>\r\n<input type="text" id="wpcf7-message-date-too-early" name="wpcf7-message-date-too-early" class="wide" size="70" value="This date is too early." />\r\n</div>\r\n<div class="message-field">\r\n<p class="description"><label for="wpcf7-message-date-too-late">Date is later than maximum limit</label></p>\r\n<input type="text" id="wpcf7-message-date-too-late" name="wpcf7-message-date-too-late" class="wide" size="70" value="This date is too late." />\r\n</div>\r\n<div class="message-field">\r\n<p class="description"><label for="wpcf7-message-upload-failed">Uploading a file fails for any reason</label></p>\r\n<input type="text" id="wpcf7-message-upload-failed" name="wpcf7-message-upload-failed" class="wide" size="70" value="Failed to upload file." />\r\n</div>\r\n<div class="message-field">\r\n<p class="description"><label for="wpcf7-message-upload-file-type-invalid">Uploaded file is not allowed file type</label></p>\r\n<input type="text" id="wpcf7-message-upload-file-type-invalid" name="wpcf7-message-upload-file-type-invalid" class="wide" size="70" value="This file type is not allowed." />\r\n</div>\r\n<div class="message-field">\r\n<p class="description"><label for="wpcf7-message-upload-file-too-large">Uploaded file is too large</label></p>\r\n<input type="text" id="wpcf7-message-upload-file-too-large" name="wpcf7-message-upload-file-too-large" class="wide" size="70" value="This file is too large." />\r\n</div>\r\n<div class="message-field">\r\n<p class="description"><label for="wpcf7-message-upload-failed-php-error">Uploading a file fails for PHP error</label></p>\r\n<input type="text" id="wpcf7-message-upload-failed-php-error" name="wpcf7-message-upload-failed-php-error" class="wide" size="70" value="Failed to upload file. Error occurred." />\r\n</div>\r\n</div></div>\r\n</div>\r\n</div><div id="additional_settings-sortables" class="meta-box-sortables"><div id="additionalsettingsdiv" class="postbox " >\r\n<div class="handlediv" title="Click to toggle"><br /></div><h3 class=\'hndle\'><span>Additional Settings</span></h3>\r\n<div class="inside">\r\n<textarea id="wpcf7-additional-settings" name="wpcf7-additional-settings" cols="100" rows="8">\nsicossart@gmail.com\nReply-To: scossar3@gmail.com\n\n\n\nYour message was sent successfully. Thanks.\nFailed to send your message. Please try later or contact the administrator by another method.\nValidation errors occurred. Please confirm the fields and submit it again.\nFailed to send your message. Please try later or contact the administrator by another method.\nPlease accept the terms to proceed.\nPlease fill in the required field.\nThis input is too long.\nThis input is too short.\nYour entered code is incorrect.\nNumber format seems invalid.\nThis number is too small.\nThis number is too large.\nEmail address seems invalid.\nURL seems invalid.\nTelephone number seems invalid.\nYour answer is not correct.\nDate format seems invalid.\nThis date is too early.\nThis date is too late.\nFailed to upload file.\nThis file type is not allowed.\nThis file is too large.\nFailed to upload file. Error occurred.', 'Contact Books With Wings Nanaimo', '', 'publish', 'open', 'open', '', 'untitled', '', '', '2015-03-06 00:07:31', '2015-03-06 00:07:31', '', 0, 'http://104.236.246.227/?post_type=wpcf7_contact_form&#038;p=89', 0, 'wpcf7_contact_form', '', 0),
(92, 1, '2015-03-05 20:27:52', '2015-03-05 20:27:52', '', 'Books With Wings Nanaimo Chapter', '', 'inherit', 'open', 'open', '', '79-revision-v1', '', '', '2015-03-05 20:27:52', '2015-03-05 20:27:52', '', 79, 'http://104.236.246.227/79-revision-v1/', 0, 'revision', '', 0),
(93, 1, '2015-03-05 21:04:53', '2015-03-05 21:04:53', '', 'Books With Wings Nanaimo Chapter', '', 'inherit', 'open', 'open', '', '79-revision-v1', '', '', '2015-03-05 21:04:53', '2015-03-05 21:04:53', '', 79, 'http://104.236.246.227/79-revision-v1/', 0, 'revision', '', 0),
(94, 1, '2015-03-05 21:41:30', '2015-03-05 21:41:30', '', 'Books With Wings Nanaimo Chapter', '', 'inherit', 'open', 'open', '', '79-revision-v1', '', '', '2015-03-05 21:41:30', '2015-03-05 21:41:30', '', 79, 'http://104.236.246.227/79-revision-v1/', 0, 'revision', '', 0),
(96, 1, '2015-03-06 01:21:35', '2015-03-06 01:21:35', 'a:14:{s:4:"type";s:6:"number";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:3:"min";s:0:"";s:3:"max";s:0:"";s:4:"step";s:0:"";s:8:"readonly";i:0;s:8:"disabled";i:0;}', 'Contact form id', 'chapter_contact_id', 'publish', 'open', 'open', '', 'field_54f900fdc500f', '', '', '2015-03-06 01:21:35', '2015-03-06 01:21:35', '', 60, 'http://104.236.246.227/?post_type=acf-field&p=96', 8, 'acf-field', '', 0),
(97, 1, '2015-03-06 01:24:03', '2015-03-06 01:24:03', '', 'Books With Wings Nanaimo Chapter', '', 'inherit', 'open', 'open', '', '79-revision-v1', '', '', '2015-03-06 01:24:03', '2015-03-06 01:24:03', '', 79, 'http://104.236.246.227/79-revision-v1/', 0, 'revision', '', 0),
(98, 1, '2015-03-06 02:20:06', '2015-03-06 02:20:06', '', '1508503_10152702130943990_5866652294906755883_n', '', 'inherit', 'open', 'open', '', '1508503_10152702130943990_5866652294906755883_n', '', '', '2015-03-06 02:20:06', '2015-03-06 02:20:06', '', 53, 'http://104.236.246.227/app/uploads/2015/03/1508503_10152702130943990_5866652294906755883_n.jpg', 0, 'attachment', 'image/jpeg', 0),
(99, 1, '2015-03-06 02:20:16', '2015-03-06 02:20:16', '', 'Home Featured Img', '', 'inherit', 'open', 'open', '', '53-revision-v1', '', '', '2015-03-06 02:20:16', '2015-03-06 02:20:16', '', 53, 'http://104.236.246.227/53-revision-v1/', 0, 'revision', '', 0),
(100, 1, '2015-03-07 23:58:20', '2015-03-07 23:58:20', '<blockquote>\r\n<p>We are motivated by the intense desire for education by Afghan people of all ages, including children, and the rampant optimism in Afghanistan -R. Gordon</p>\r\n</blockquote>\r\n\r\nBooks With Wings was conceived in December, 2001. RG was watching a CNN TV interview of the head librarian at Kabul University. We were shown a single shelf of books remaining, with bullet holes in some of them. The reporter pulled one book off the shelf. It was Milton’s “Paradise Lost”. At the end of the interview the librarian turned to the camera and pleaded for people to send books. RG said to himself: “I can do that”. He went to Vienna for a scientific meeting, returned to work jet lagged, and going down the stairs to his lab, just past the Dean’s office, he turned around, deciding to see the Dean about how to get books to Afghanistan. As he turned, he broke three bones in his foot (metatarsals) and ended up in the nearby hospital instead. Recovering at home in bed, he had plenty of time to search the Web and phone people.\r\n\r\nIt seemed the number one problem had by others collecting books for Afghanistan was that they got them donated easily enough, but had no way to get them to Afghanistan. Shipping to Afghanistan was, and remains, the central problem. Fortunately Canadian Forces agreed to ship books. When RG finally met with Dean of Medicine Brian Henderson, he suggested approaching the medical students, who took it on as a class project, and via their network spread it to medical students at most other universities in Canada. The University of Manitoba Neil John Maclean Health Sciences Library made a major contribution of duplicate books, which kicked things off.\r\n\r\nHundreds of volunteers in Canada, Afghanistan and the USA have been involved. For example, Mrs. Vicel Meregillano-Hicks (Catholic Relief Services) and Dr. Ahmad Zia Shams (Herat Medical Faculty) took the idea ahead in Herat, Afghanistan with Richard Gordon, and later on extended their efforts to other provinces/universities with more volunteers/contributors. About 20,000 up to date, mostly medical books have been sent (through 2014), worth about $3 million. We have started Books With Wings USA chapters. We are expanding to other disciplines besides medicine, and new Chapters are beginning in all three countries.\r\n\r\nCash donations to Books With Wings are tax deductible via the University of Manitoba, which will issue a tax receipt honored by Canada. We need a volunteer to make a similar arrangement in the USA.\r\n \r\n<h2>Cash Donations</h2>\r\n\r\n100% of all cash donations go for:\r\n\r\n<ol>\r\n<li>book labeling and packaging materials</li>\r\n<li>shipping within North America</li>\r\n<li>shipping to Kabul</li>\r\n<li>shipping within Afghanistan</li>\r\n<li>purchase of specialty books, such as midwifery and landmine injury books, that generally don’t show up in donations</li>\r\n<li>occasional pizza and drinks for volunteers</li>\r\n</ol>\r\n\r\nBooks With Wings has no paid staff: 100% volunteers. Please have a look at the <a href="//localhost:3000/make-a-donation/" title="Make a donation">donation</a> page on this site for more information.', 'About Books With Wings', '', 'inherit', 'open', 'open', '', '11-autosave-v1', '', '', '2015-03-07 23:58:20', '2015-03-07 23:58:20', '', 11, 'http://104.236.246.227/11-autosave-v1/', 0, 'revision', '', 0),
(101, 1, '2015-03-06 19:30:11', '2015-03-06 19:30:11', 'The service of Books With Wings is to bring textbooks to universities of Afghanistan because their books have been destroyed or are severely outdated. This service is a necessary part of the development that needs to occur in Afghanistan for the health of the country.\r\n\r\nDue to the tragedy that occurred in 1992, Afghanistan had the majority of its books and records destroyed and the ones that remain are outdated or damaged. BWW works with North American Universities to collect textbooks to send to the universities in need so their students can have a successful and worthwhile university degree. BWW is the only organization that provides these services to the country.', 'About Books With Wings', '', 'inherit', 'open', 'open', '', '11-revision-v1', '', '', '2015-03-06 19:30:11', '2015-03-06 19:30:11', '', 11, 'http://104.236.246.227/11-revision-v1/', 0, 'revision', '', 0),
(103, 1, '2015-03-06 20:16:10', '2015-03-06 20:16:10', ' ', '', '', 'publish', 'open', 'open', '', 'sign-up-to-volunteer', '', '', '2015-03-06 22:10:07', '2015-03-06 22:10:07', '', 0, 'http://104.236.246.227/?p=103', 2, 'nav_menu_item', '', 0),
(104, 1, '2015-03-06 20:16:10', '2015-03-06 20:16:10', '', 'Volunteer Information', '', 'publish', 'open', 'open', '', '104', '', '', '2015-03-06 22:10:07', '2015-03-06 22:10:07', '', 0, 'http://104.236.246.227/?p=104', 1, 'nav_menu_item', '', 0),
(106, 1, '2015-03-06 20:21:43', '2015-03-06 20:21:43', '<p align="justify">Lorem ipsum dolor sit amet, velit penatibus, quis senectus posuere, consectetuer facilisis. Consectetuer mi. Ac convallis, sed elit. Massa penatibus, mollis at nec, massa ultricies integer. Dui sed lectus, leo urna tellus. Eu mauris. Consequat id diam. Sit aliquam, mauris massa.</p>\r\n<p align="justify">Donec ullamcorper. Eu ipsum, ut a, metus tincidunt interdum. Euismod consequat. Per quam at, non a purus. Sed arcu, mauris commodo wisi, erat arcu sed. Maecenas donec. Nulla libero sed, augue turpis, erat at.</p>\r\n<p align="justify">Scelerisque enim. Nunc pede. Maecenas rutrum, dui nec, erat egestas. Arcu turpis aliquam, libero accumsan dolore, at lorem. Est accumsan, semper dolor, leo sit. Vivamus libero et. Tempus suspendisse. Arcu velit aenean, dui metus consequat.</p>\r\n<p align="justify">Inceptos accumsan. Magna luctus libero, auctor penatibus. Vestibulum sem wisi. Ut arcu, natoque mollis. Libero erat tempus, cras arcu at. Incidunt placerat, in et. A dolor justo.</p>', 'Books With Wings volunteer information', '', 'inherit', 'open', 'open', '', '13-revision-v1', '', '', '2015-03-06 20:21:43', '2015-03-06 20:21:43', '', 13, 'http://104.236.246.227/13-revision-v1/', 0, 'revision', '', 0),
(107, 1, '2015-03-06 20:30:44', '2015-03-06 20:30:44', '', 'Example Chapter', '', 'publish', 'closed', 'closed', '', 'example-chapter', '', '', '2015-03-06 20:30:44', '2015-03-06 20:30:44', '', 0, 'http://104.236.246.227/?post_type=chapter&#038;p=107', 0, 'chapter', '', 0),
(108, 1, '2015-03-06 20:30:44', '2015-03-06 20:30:44', '', 'Example Chapter', '', 'inherit', 'open', 'open', '', '107-revision-v1', '', '', '2015-03-06 20:30:44', '2015-03-06 20:30:44', '', 107, 'http://104.236.246.227/107-revision-v1/', 0, 'revision', '', 0),
(111, 1, '2015-03-06 21:22:30', '2015-03-06 21:22:30', '[wppb-register]', 'Register to volunteer', '', 'inherit', 'open', 'open', '', '44-revision-v1', '', '', '2015-03-06 21:22:30', '2015-03-06 21:22:30', '', 44, 'http://104.236.246.227/44-revision-v1/', 0, 'revision', '', 0),
(112, 1, '2015-03-06 22:10:07', '2015-03-06 22:10:07', '', 'Chapters', '', 'publish', 'open', 'open', '', 'chapters', '', '', '2015-03-06 22:10:07', '2015-03-06 22:10:07', '', 0, 'http://104.236.246.227/?p=112', 3, 'nav_menu_item', '', 0),
(113, 1, '2015-03-07 00:41:47', '2015-03-07 00:41:47', '[submit_donation_form]', 'Donate', '', 'inherit', 'open', 'open', '', '15-revision-v1', '', '', '2015-03-07 00:41:47', '2015-03-07 00:41:47', '', 15, 'http://104.236.246.227/15-revision-v1/', 0, 'revision', '', 0),
(114, 1, '2015-03-07 00:52:36', '2015-03-07 00:52:36', '', 'Donation #114', '', 'pending_payment', 'closed', 'open', '', 'new-donation', '', '', '2015-03-07 00:53:17', '2015-03-07 00:53:17', '', 0, 'http://104.236.246.227/donation/new-donation/', 0, 'donation', '', 0) ;
INSERT INTO `wp_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(115, 1, '2015-03-07 00:54:51', '2015-03-07 00:54:51', '', 'Donation #115', '', 'preview', 'closed', 'open', '', 'new-donation-2', '', '', '2015-03-07 00:54:51', '2015-03-07 00:54:51', '', 0, 'http://104.236.246.227/donation/new-donation-2/', 0, 'donation', '', 0),
(116, 1, '2015-03-07 00:57:27', '2015-03-07 00:57:27', 'This is a test donation', 'Donation #116', '', 'preview', 'closed', 'open', '', 'new-donation-3', '', '', '2015-03-07 00:57:27', '2015-03-07 00:57:27', '', 0, 'http://104.236.246.227/donation/new-donation-3/', 0, 'donation', '', 0),
(117, 1, '2015-03-07 01:04:52', '2015-03-07 01:04:52', '', 'Donation Information', '', 'publish', 'open', 'open', '', '117', '', '', '2015-03-07 22:22:18', '2015-03-07 22:22:18', '', 0, 'http://104.236.246.227/?p=117', 1, 'nav_menu_item', '', 0),
(118, 1, '2015-03-07 01:06:23', '2015-03-07 01:06:23', '[submit_donation_form]', 'Make a donation', '', 'publish', 'open', 'open', '', 'make-a-donation', '', '', '2015-03-07 01:07:02', '2015-03-07 01:07:02', '', 0, 'http://104.236.246.227/?page_id=118', 0, 'page', '', 0),
(119, 1, '2015-03-07 01:06:23', '2015-03-07 01:06:23', '', 'Make a donation', '', 'inherit', 'open', 'open', '', '118-revision-v1', '', '', '2015-03-07 01:06:23', '2015-03-07 01:06:23', '', 118, 'http://104.236.246.227/118-revision-v1/', 0, 'revision', '', 0),
(120, 1, '2015-03-07 01:06:43', '2015-03-07 01:06:43', '', 'Donate', '', 'inherit', 'open', 'open', '', '15-revision-v1', '', '', '2015-03-07 01:06:43', '2015-03-07 01:06:43', '', 15, 'http://104.236.246.227/15-revision-v1/', 0, 'revision', '', 0),
(121, 1, '2015-03-07 01:07:02', '2015-03-07 01:07:02', '[submit_donation_form]', 'Make a donation', '', 'inherit', 'open', 'open', '', '118-revision-v1', '', '', '2015-03-07 01:07:02', '2015-03-07 01:07:02', '', 118, 'http://104.236.246.227/118-revision-v1/', 0, 'revision', '', 0),
(122, 1, '2015-03-07 01:07:45', '2015-03-07 01:07:45', '', 'Donate', '', 'publish', 'open', 'open', '', '122', '', '', '2015-03-07 22:22:18', '2015-03-07 22:22:18', '', 0, 'http://104.236.246.227/?p=122', 2, 'nav_menu_item', '', 0),
(123, 1, '2015-03-07 01:20:21', '2015-03-07 01:20:21', 'Books With Wings is a collaborative project between Canadian students and their counterparts in Afghanistan.As of September 2009, we will have sent over 8500 up-to-date medical books worth nearly $1.4 million.', 'Who we are', '', 'inherit', 'open', 'open', '', '49-revision-v1', '', '', '2015-03-07 01:20:21', '2015-03-07 01:20:21', '', 49, 'http://104.236.246.227/49-revision-v1/', 0, 'revision', '', 0),
(124, 1, '2015-03-07 01:22:23', '2015-03-07 01:22:23', 'The mission of Books With Wings is to help to improve the education system of Afghanistan so that its people have the ability to improve the future of their country. It does this by collecting and shipping university level text-books from schools in the west to the universities and libraries of Afghanistan.', 'Getting Books to Afghanistan', '', 'inherit', 'open', 'open', '', '48-revision-v1', '', '', '2015-03-07 01:22:23', '2015-03-07 01:22:23', '', 48, 'http://104.236.246.227/48-revision-v1/', 0, 'revision', '', 0),
(125, 1, '2015-03-07 20:28:50', '2015-03-07 20:28:50', '[wppb-login register_url="/register/" lostpassword_url="/recover-password" redirect="bookswithwings.prod"]', 'Login', '', 'inherit', 'open', 'open', '', '36-revision-v1', '', '', '2015-03-07 20:28:50', '2015-03-07 20:28:50', '', 36, 'http://104.236.246.227/36-revision-v1/', 0, 'revision', '', 0),
(126, 1, '2015-03-07 20:35:11', '2015-03-07 20:35:11', '[wppb-login register_url="/register/" lostpassword_url="/recover-password/" redirect="localhost:3000"]', 'Login', '', 'inherit', 'open', 'open', '', '36-revision-v1', '', '', '2015-03-07 20:35:11', '2015-03-07 20:35:11', '', 36, 'http://104.236.246.227/36-revision-v1/', 0, 'revision', '', 0),
(127, 1, '2015-03-07 20:46:48', '2015-03-07 20:46:48', '[wppb-login register_url="/register/" lostpassword_url="/recover-password/" redirect="/"]', 'Login', '', 'inherit', 'open', 'open', '', '36-revision-v1', '', '', '2015-03-07 20:46:48', '2015-03-07 20:46:48', '', 36, 'http://104.236.246.227/36-revision-v1/', 0, 'revision', '', 0),
(128, 1, '2015-03-07 21:03:42', '2015-03-07 21:03:42', '<address>\r\n<strong>Books With Wings</strong><br>\r\n555 Mystery Lane<br>\r\nWinnipeg, Manitoba Canada<br>\r\nVVR 5P3\r\n<a href="tel:5555555555">555-555-5555</a>\r\n</address>\r\n\r\nYou may also <a href="http://104.236.246.227/contact/" title="Contact">contact</a> us through this site.', 'Contact us', '', 'inherit', 'open', 'open', '', '50-autosave-v1', '', '', '2015-03-07 21:03:42', '2015-03-07 21:03:42', '', 50, 'http://104.236.246.227/50-autosave-v1/', 0, 'revision', '', 0),
(129, 1, '2015-03-07 21:04:13', '2015-03-07 21:04:13', '<address>\r\n<strong>Books With Wings</strong><br>\r\n555 Mystery Lane<br>\r\nWinnipeg, Manitoba Canada<br>\r\nVVR 5P3\r\n<a href="tel:5555555555">555-555-5555</a>\r\n</address>\r\nYou may also <a href="http://104.236.246.227/contact/" title="Contact">contact</a> us through this site.', 'Contact us', '', 'inherit', 'open', 'open', '', '50-revision-v1', '', '', '2015-03-07 21:04:13', '2015-03-07 21:04:13', '', 50, 'http://104.236.246.227/50-revision-v1/', 0, 'revision', '', 0),
(130, 1, '2015-03-07 21:04:59', '2015-03-07 21:04:59', '<address>\r\n<strong>Books With Wings</strong><br>\r\n555 Mystery Lane<br>\r\nWinnipeg, Manitoba Canada<br>\r\nVVR 5P3\r\n<a href="tel:5555555555">555-555-5555</a>\r\n</address> You may also <a href="//localhost:3000/contact/" title="Contact">contact</a> us through this site.', 'Contact us', '', 'inherit', 'open', 'open', '', '50-revision-v1', '', '', '2015-03-07 21:04:59', '2015-03-07 21:04:59', '', 50, 'http://104.236.246.227/50-revision-v1/', 0, 'revision', '', 0),
(131, 1, '2015-03-07 21:05:52', '2015-03-07 21:05:52', 'Books With Wings is a collaborative project between Canadian students and their counterparts in Afghanistan. As of September 2009, we will have sent over 8500 up-to-date medical books worth nearly $1.4 million.', 'Who we are', '', 'inherit', 'open', 'open', '', '49-revision-v1', '', '', '2015-03-07 21:05:52', '2015-03-07 21:05:52', '', 49, 'http://104.236.246.227/49-revision-v1/', 0, 'revision', '', 0),
(132, 1, '2015-03-07 21:38:21', '2015-03-07 21:38:21', '', 'Contact Books With Wings', '', 'inherit', 'open', 'open', '', '17-revision-v1', '', '', '2015-03-07 21:38:21', '2015-03-07 21:38:21', '', 17, 'http://104.236.246.227/17-revision-v1/', 0, 'revision', '', 0),
(134, 1, '2015-03-07 22:18:07', '2015-03-07 22:18:07', 'If you would like to make a monetary donation to Books With Wings please contact:\r\n<address>\r\nDevelopment and Advancement Services<br>\r\n179 Extended Education Complex<br>\r\nUniversity of Manitoba<br>\r\nWinnipeg, MB R3T-2N2\r\nPhone: (204) 474-9195, 1-800-330-8066<br>\r\nFax (204) 474-7635<br>\r\nemail: development@umanitoba.ca  or  advancement_services@umanitoba.ca \r\n</address>', 'Donate to Books With Wings', '', 'inherit', 'open', 'open', '', '15-revision-v1', '', '', '2015-03-07 22:18:07', '2015-03-07 22:18:07', '', 15, 'http://104.236.246.227/15-revision-v1/', 0, 'revision', '', 0),
(135, 1, '2015-03-07 22:19:47', '2015-03-07 22:19:47', 'If you would like to make a monetary donation to Books With Wings please contact:\r\n<address>\r\nDevelopment and Advancement Services<br>\r\n179 Extended Education Complex<br>\r\nUniversity of Manitoba<br>\r\nWinnipeg, MB R3T-2N2\r\nPhone: (204) 474-9195, 1-800-330-8066<br>\r\nFax (204) 474-7635<br>\r\nemail: development@umanitoba.ca  or<br>\r\nadvancement_services@umanitoba.ca<br> \r\n</address>', 'Donate to Books With Wings', '', 'inherit', 'open', 'open', '', '15-revision-v1', '', '', '2015-03-07 22:19:47', '2015-03-07 22:19:47', '', 15, 'http://104.236.246.227/15-revision-v1/', 0, 'revision', '', 0),
(136, 1, '2015-03-07 22:20:59', '2015-03-07 22:20:59', 'If you would like to make a monetary donation to Books With Wings please contact:\r\n<address>\r\n<strong>Development and Advancement Services</strong><br>\r\n179 Extended Education Complex<br>\r\nUniversity of Manitoba<br>\r\nWinnipeg, MB R3T-2N2\r\nPhone: (204) 474-9195, 1-800-330-8066<br>\r\nFax (204) 474-7635<br>\r\nemail: development@umanitoba.ca  or<br>\r\nadvancement_services@umanitoba.ca<br> \r\n</address>', 'Donate to Books With Wings', '', 'inherit', 'open', 'open', '', '15-revision-v1', '', '', '2015-03-07 22:20:59', '2015-03-07 22:20:59', '', 15, 'http://104.236.246.227/15-revision-v1/', 0, 'revision', '', 0),
(137, 1, '2015-03-07 22:30:36', '2015-03-07 22:30:36', '<h2>Monetary Donations</h2>\nIf you would like to make a monetary donation to Books With Wings please contact:\n<address>\n<strong>Development and Advancement Services</strong><br>\n179 Extended Education Complex<br>\nUniversity of Manitoba<br>\nWinnipeg, MB R3T-2N2\nPhone: (204) 474-9195, 1-800-330-8066<br>\nFax (204) 474-7635<br>\nemail: development@umanitoba.ca  or<br>\nadvancement_services@umanitoba.ca<br> \n</address>\n\nCheques can be made out to "The University of Manitoba" with a note on them that the donation is for Books With Wings.\n\nIf you wish to make a donation online, please visit:\n\n<a href="http://umanitoba.ca/admin/dev_adv/">http://umanitoba.ca/admin/dev_adv/</a>\n\nWhen using the electronic donation page, you must indicate in the comment box that the donation is for Books With Wings or select "Books For Afghanistan Fund" from the drop down list.\n\nIn order to receive a tax deductible receipt, you  must include your name and address information with the donation.\n\n<h2>Book Donations</h2>\n\nBooks may be dropped off at the entrance to the Neil John Maclean Health Sciences Library, located on the 2nd floor of the Brodie Centre, 272 McDermot Ave, Winnipeg.\n\nWe will pick up books on request within Winnipeg. Please contact Dr. Richard Gordon (GordonR@cc.UManitoba.ca)  to arrange this. We do not have any budget to pay for shipping to Winnipeg.\n\n<h2>Donor Recognition</h2>\n\nBooks With Wings would like to recognize the following donors for their generous contributions:\n\nJan Johnson\n\nElizabeth Dafoe Library\n\nCancer Nursing textbooks for The Books with Wings project were provided through funding from Dr. Lesley Degner\'s Chair Award entitled: Evidence-Based Nursing Practice in Cancer Care, Palliative Care and Cancer Prevention. The Chair Award is sponsored by the Canadian Health Services Research Foundation, the Canadian Institutes of Health Research and the Winnipeg Regional Health Authority, with matching funds provided by the Faculty of Nursing, University of Manitoba.', 'Donate to Books With Wings', '', 'inherit', 'open', 'open', '', '15-autosave-v1', '', '', '2015-03-07 22:30:36', '2015-03-07 22:30:36', '', 15, 'http://104.236.246.227/15-autosave-v1/', 0, 'revision', '', 0),
(138, 1, '2015-03-07 22:26:46', '2015-03-07 22:26:46', '<h2>Monetary Donations</h2>\r\nIf you would like to make a monetary donation to Books With Wings please contact:\r\n<address>\r\n<strong>Development and Advancement Services</strong><br>\r\n179 Extended Education Complex<br>\r\nUniversity of Manitoba<br>\r\nWinnipeg, MB R3T-2N2\r\nPhone: (204) 474-9195, 1-800-330-8066<br>\r\nFax (204) 474-7635<br>\r\nemail: development@umanitoba.ca  or<br>\r\nadvancement_services@umanitoba.ca<br> \r\n</address>\r\n\r\nCheques can be made out to "The University of Manitoba" with a note on them that the donation is for Books With Wings. \r\nIf you wish to make a donation online, please visit:\r\n<a href="http://umanitoba.ca/admin/dev_adv/">http://umanitoba.ca/admin/dev_adv/</a>\r\n\r\nWhen using the electronic donation page, you must indicate in the comment box that the donation is for Books With Wings or select "Books For Afghanistan Fund" from the drop down list.\r\n\r\nIn order to receive a tax deductible receipt, you  must include your name and address information with the donation. ', 'Donate to Books With Wings', '', 'inherit', 'open', 'open', '', '15-revision-v1', '', '', '2015-03-07 22:26:46', '2015-03-07 22:26:46', '', 15, 'http://104.236.246.227/15-revision-v1/', 0, 'revision', '', 0),
(139, 1, '2015-03-07 22:30:50', '2015-03-07 22:30:50', '<h2>Monetary Donations</h2>\r\nIf you would like to make a monetary donation to Books With Wings please contact:\r\n<address>\r\n<strong>Development and Advancement Services</strong><br>\r\n179 Extended Education Complex<br>\r\nUniversity of Manitoba<br>\r\nWinnipeg, MB R3T-2N2\r\nPhone: (204) 474-9195, 1-800-330-8066<br>\r\nFax (204) 474-7635<br>\r\nemail: development@umanitoba.ca  or<br>\r\nadvancement_services@umanitoba.ca<br> \r\n</address>\r\n\r\nCheques can be made out to "The University of Manitoba" with a note on them that the donation is for Books With Wings.\r\n\r\nIf you wish to make a donation online, please visit:\r\n\r\n<a href="http://umanitoba.ca/admin/dev_adv/">http://umanitoba.ca/admin/dev_adv/</a>\r\n\r\nWhen using the electronic donation page, you must indicate in the comment box that the donation is for Books With Wings or select "Books For Afghanistan Fund" from the drop down list.\r\n\r\nIn order to receive a tax deductible receipt, you  must include your name and address information with the donation.\r\n\r\n<h2>Book Donations</h2>\r\n\r\nBooks may be dropped off at the entrance to the Neil John Maclean Health Sciences Library, located on the 2nd floor of the Brodie Centre, 272 McDermot Ave, Winnipeg.\r\n\r\nWe will pick up books on request within Winnipeg. Please contact Dr. Richard Gordon (GordonR@cc.UManitoba.ca)  to arrange this. We do not have any budget to pay for shipping to Winnipeg.\r\n\r\n<h2>Donor Recognition</h2>\r\n\r\nBooks With Wings would like to recognize the following donors for their generous contributions:\r\n\r\nJan Johnson\r\n\r\nElizabeth Dafoe Library\r\n\r\nCancer Nursing textbooks for The Books with Wings project were provided through funding from Dr. Lesley Degner\'s Chair Award entitled: Evidence-Based Nursing Practice in Cancer Care, Palliative Care and Cancer Prevention. The Chair Award is sponsored by the Canadian Health Services Research Foundation, the Canadian Institutes of Health Research and the Winnipeg Regional Health Authority, with matching funds provided by the Faculty of Nursing, University of Manitoba.', 'Donate to Books With Wings', '', 'inherit', 'open', 'open', '', '15-revision-v1', '', '', '2015-03-07 22:30:50', '2015-03-07 22:30:50', '', 15, 'http://104.236.246.227/15-revision-v1/', 0, 'revision', '', 0),
(140, 1, '2015-03-07 22:33:21', '2015-03-07 22:33:21', 'The mission of Books With Wings is to get books to the universities and libraries of Afghanistan. ', 'Getting Books to Afghanistan', '', 'inherit', 'open', 'open', '', '48-autosave-v1', '', '', '2015-03-07 22:33:21', '2015-03-07 22:33:21', '', 48, 'http://104.236.246.227/48-autosave-v1/', 0, 'revision', '', 0),
(141, 1, '2015-03-07 22:33:33', '2015-03-07 22:33:33', 'The mission of Books With Wings is to get books to the universities and libraries of Afghanistan.\r\n\r\n"We are motivated by the intense desire for education by Afghan people of all ages, including children, and the rampant optimism in Afghanistan" -R. Gordon', 'Getting Books to Afghanistan', '', 'inherit', 'open', 'open', '', '48-revision-v1', '', '', '2015-03-07 22:33:33', '2015-03-07 22:33:33', '', 48, 'http://104.236.246.227/48-revision-v1/', 0, 'revision', '', 0),
(142, 1, '2015-03-07 22:38:43', '2015-03-07 22:38:43', '<h2>Instructions for Volunteers</h2>\r\n\r\nVolunteers in Canada please note we have simplified cataloguing instructions for the books for April, 2010. For each book:\r\n\r\n1) Put the books in boxes by shelf order (by catalog number on the spine)\r\n\r\n2) Write into an Excel spreadsheet:\r\n\r\nName of your Books With Wings chapter\r\nBox Number\r\nLC or NLM Number\r\nISBN (generally found on the back of the title page)\r\n     If the book does not have an ISBN number, then write down its authors, title, year published, publisher, and city of publication.\r\n\r\n3) Send the files by email to Atifa Rawan at rawana@u.library.arizona.edu and Richard Gordon at gordonr@cc.umanitoba.ca as they are completed.\r\n\r\nQuick Links:\r\n\r\nPlease click here to download (PDF) instructions on how to find, enter, and submit Library of Congress numbers to our coordinator.', 'Books With Wings volunteer information', '', 'inherit', 'open', 'open', '', '13-revision-v1', '', '', '2015-03-07 22:38:43', '2015-03-07 22:38:43', '', 13, 'http://104.236.246.227/13-revision-v1/', 0, 'revision', '', 0),
(143, 1, '2015-03-07 22:43:08', '2015-03-07 22:43:08', '<h2>Call for Volunteers in Specific Disciplines</h2>\r\nBooks With Wings has been sending up to date medical books to the medical schools of Afghanistan. We would like to expand to other disciplines, as the need for books in Afghan universities in all subjects is great. Examples of requests we have had from Afghanistan are:\r\nBusiness\r\nComputer Science\r\nDentistry\r\nEducation\r\nEngineering\r\nEnglish\r\nMathematics\r\nMidwifery\r\nPublic Health\r\nScience\r\n\r\nThe volunteer work involves:\r\n\r\n•     Making contact with colleagues in Afghanistan to assess the state of their libraries and needs\r\n\r\n•     Finding sources of donated books (students, professors, professionals, publishers, libraries, bookstores, etc.)\r\n\r\n•     Finding and organizing volunteers to label the books with Library of Congress catalog numbers, and to box and ship the books\r\n\r\n<h2>Instructions for Volunteers</h2>\r\n\r\nVolunteers in Canada please note we have simplified cataloguing instructions for the books for April, 2010. For each book:\r\n\r\n1) Put the books in boxes by shelf order (by catalog number on the spine)\r\n\r\n2) Write into an Excel spreadsheet:\r\n\r\nName of your Books With Wings chapter\r\nBox Number\r\nLC or NLM Number\r\nISBN (generally found on the back of the title page)\r\n     If the book does not have an ISBN number, then write down its authors, title, year published, publisher, and city of publication.\r\n\r\n3) Send the files by email to Atifa Rawan at rawana@u.library.arizona.edu and Richard Gordon at gordonr@cc.umanitoba.ca as they are completed.\r\n\r\nQuick Links:\r\n\r\nPlease click here to download (PDF) instructions on how to find, enter, and submit Library of Congress numbers to our coordinator.', 'Books With Wings volunteer information', '', 'inherit', 'open', 'open', '', '13-revision-v1', '', '', '2015-03-07 22:43:08', '2015-03-07 22:43:08', '', 13, 'http://104.236.246.227/13-revision-v1/', 0, 'revision', '', 0),
(144, 1, '2015-03-07 22:46:49', '2015-03-07 22:46:49', '<h2>Call for Volunteers in Specific Disciplines</h2>\r\nBooks With Wings has been sending up to date medical books to the medical schools of Afghanistan. We would like to expand to other disciplines, as the need for books in Afghan universities in all subjects is great. Examples of requests we have had from Afghanistan are:\r\n<ul>\r\n<li>Business</li>\r\n<li>Computer Science</li>\r\n<li>Dentistry</li>\r\n<li>Education</li>\r\n<li>Engineering</li>\r\n<li>English</li>\r\n<li>Mathematics</li>\r\n<li>Midwifery</li>\r\n<li>Public Health</li>\r\n<li>Science</li>\r\n</ul>\r\n\r\nThe volunteer work involves:\r\n\r\n•     Making contact with colleagues in Afghanistan to assess the state of their libraries and needs\r\n\r\n•     Finding sources of donated books (students, professors, professionals, publishers, libraries, bookstores, etc.)\r\n\r\n•     Finding and organizing volunteers to label the books with Library of Congress catalog numbers, and to box and ship the books\r\n\r\n<h2>Instructions for Volunteers</h2>\r\n\r\nVolunteers in Canada please note we have simplified cataloguing instructions for the books for April, 2010. For each book:\r\n\r\n1) Put the books in boxes by shelf order (by catalog number on the spine)\r\n\r\n2) Write into an Excel spreadsheet:\r\n\r\nName of your Books With Wings chapter\r\nBox Number\r\nLC or NLM Number\r\nISBN (generally found on the back of the title page)\r\n     If the book does not have an ISBN number, then write down its authors, title, year published, publisher, and city of publication.\r\n\r\n3) Send the files by email to Atifa Rawan at rawana@u.library.arizona.edu and Richard Gordon at gordonr@cc.umanitoba.ca as they are completed.\r\n\r\nQuick Links:\r\n\r\nPlease click here to download (PDF) instructions on how to find, enter, and submit Library of Congress numbers to our coordinator.', 'Books With Wings volunteer information', '', 'inherit', 'open', 'open', '', '13-revision-v1', '', '', '2015-03-07 22:46:49', '2015-03-07 22:46:49', '', 13, 'http://104.236.246.227/13-revision-v1/', 0, 'revision', '', 0),
(145, 1, '2015-03-07 22:48:55', '2015-03-07 22:48:55', '<h2>Call for Volunteers in Specific Disciplines</h2>\r\nBooks With Wings has been sending up to date medical books to the medical schools of Afghanistan. We would like to expand to other disciplines, as the need for books in Afghan universities in all subjects is great. Examples of requests we have had from Afghanistan are:\r\n<ul>\r\n<li>Business</li>\r\n<li>Computer Science</li>\r\n<li>Dentistry</li>\r\n<li>Education</li>\r\n<li>Engineering</li>\r\n<li>English</li>\r\n<li>Mathematics</li>\r\n<li>Midwifery</li>\r\n<li>Public Health</li>\r\n<li>Science</li>\r\n</ul>\r\n\r\nThe volunteer work involves:\r\n<ul>\r\n<li>Making contact with colleagues in Afghanistan to assess the state of their libraries and needs</li>\r\n<li>Finding and organizing volunteers to label the books with Library of Congress catalog numbers, and to box and ship the books</li>\r\n<li>Finding and organizing volunteers to label the books with Library of Congress catalog numbers, and to box and ship the books</li>\r\n</ul>\r\n\r\n<h2>Instructions for Volunteers</h2>\r\n\r\nVolunteers in Canada please note we have simplified cataloguing instructions for the books for April, 2010. For each book:\r\n\r\n1) Put the books in boxes by shelf order (by catalog number on the spine)\r\n\r\n2) Write into an Excel spreadsheet:\r\n\r\nName of your Books With Wings chapter\r\nBox Number\r\nLC or NLM Number\r\nISBN (generally found on the back of the title page)\r\n     If the book does not have an ISBN number, then write down its authors, title, year published, publisher, and city of publication.\r\n\r\n3) Send the files by email to Atifa Rawan at rawana@u.library.arizona.edu and Richard Gordon at gordonr@cc.umanitoba.ca as they are completed.\r\n\r\nQuick Links:\r\n\r\nPlease click here to download (PDF) instructions on how to find, enter, and submit Library of Congress numbers to our coordinator.', 'Books With Wings volunteer information', '', 'inherit', 'open', 'open', '', '13-revision-v1', '', '', '2015-03-07 22:48:55', '2015-03-07 22:48:55', '', 13, 'http://104.236.246.227/13-revision-v1/', 0, 'revision', '', 0),
(146, 1, '2015-03-07 22:59:05', '2015-03-07 22:59:05', 'Books With Wings was conceived in December, 2001. RG was watching a CNN TV interview of the head librarian at Kabul University. We were shown a single shelf of books remaining, with bullet holes in some of them. The reporter pulled one book off the shelf. It was Milton’s “Paradise Lost”. At the end of the interview the librarian turned to the camera and pleaded for people to send books. RG said to himself: “I can do that”. He went to Vienna for a scientific meeting, returned to work jet lagged, and going down the stairs to his lab, just past the Dean’s office, he turned around, deciding to see the Dean about how to get books to Afghanistan. As he turned, he broke three bones in his foot (metatarsals) and ended up in the nearby hospital instead. Recovering at home in bed, he had plenty of time to search the Web and phone people.\r\n\r\nIt seemed the number one problem had by others collecting books for Afghanistan was that they got them donated easily enough, but had no way to get them to Afghanistan. Shipping to Afghanistan was, and remains, the central problem. Fortunately Canadian Forces agreed to ship books. When RG finally met with Dean of Medicine Brian Henderson, he suggested approaching the medical students, who took it on as a class project, and via their network spread it to medical students at most other universities in Canada. The University of Manitoba Neil John Maclean Health Sciences Library made a major contribution of duplicate books, which kicked things off.\r\n\r\nHundreds of volunteers in Canada, Afghanistan and the USA have been involved. For example, Mrs. Vicel Meregillano-Hicks (Catholic Relief Services) and Dr. Ahmad Zia Shams (Herat Medical Faculty) took the idea ahead in Herat, Afghanistan with Richard Gordon, and later on extended their efforts to other provinces/universities with more volunteers/contributors. About 20,000 up to date, mostly medical books have been sent (through 2014), worth about $3 million. We have started Books With Wings USA chapters. We are expanding to other disciplines besides medicine, and new Chapters are beginning in all three countries.\r\n', 'About Books With Wings', '', 'inherit', 'open', 'open', '', '11-revision-v1', '', '', '2015-03-07 22:59:05', '2015-03-07 22:59:05', '', 11, 'http://104.236.246.227/11-revision-v1/', 0, 'revision', '', 0),
(147, 1, '2015-03-07 23:01:32', '2015-03-07 23:01:32', 'Books With Wings was conceived in December, 2001. RG was watching a CNN TV interview of the head librarian at Kabul University. We were shown a single shelf of books remaining, with bullet holes in some of them. The reporter pulled one book off the shelf. It was Milton’s “Paradise Lost”. At the end of the interview the librarian turned to the camera and pleaded for people to send books. RG said to himself: “I can do that”. He went to Vienna for a scientific meeting, returned to work jet lagged, and going down the stairs to his lab, just past the Dean’s office, he turned around, deciding to see the Dean about how to get books to Afghanistan. As he turned, he broke three bones in his foot (metatarsals) and ended up in the nearby hospital instead. Recovering at home in bed, he had plenty of time to search the Web and phone people.\r\n\r\nIt seemed the number one problem had by others collecting books for Afghanistan was that they got them donated easily enough, but had no way to get them to Afghanistan. Shipping to Afghanistan was, and remains, the central problem. Fortunately Canadian Forces agreed to ship books. When RG finally met with Dean of Medicine Brian Henderson, he suggested approaching the medical students, who took it on as a class project, and via their network spread it to medical students at most other universities in Canada. The University of Manitoba Neil John Maclean Health Sciences Library made a major contribution of duplicate books, which kicked things off.\r\n\r\nHundreds of volunteers in Canada, Afghanistan and the USA have been involved. For example, Mrs. Vicel Meregillano-Hicks (Catholic Relief Services) and Dr. Ahmad Zia Shams (Herat Medical Faculty) took the idea ahead in Herat, Afghanistan with Richard Gordon, and later on extended their efforts to other provinces/universities with more volunteers/contributors. About 20,000 up to date, mostly medical books have been sent (through 2014), worth about $3 million. We have started Books With Wings USA chapters. We are expanding to other disciplines besides medicine, and new Chapters are beginning in all three countries.\r\n\r\nCash donations to Books With Wings are tax deductible via the University of Manitoba, which will issue a tax receipt honored by Canada. We need a volunteer to make a similar arrangement in the USA.\r\n \r\n100% of all cash donations go for:\r\n\r\n<ol>\r\n<li>book labeling and packaging materials</li>\r\n<li>shipping within North America</li>\r\n<li>shipping to Kabul</li>\r\n<li>shipping within Afghanistan</li>\r\n<li>purchase of specialty books, such as midwifery and landmine injury books, that generally don’t show up in donations</li>\r\n<li>occasional pizza and drinks for volunteers</li>\r\n</ol>\r\n\r\nBooks With Wings has no paid staff: 100% volunteers.', 'About Books With Wings', '', 'inherit', 'open', 'open', '', '11-revision-v1', '', '', '2015-03-07 23:01:32', '2015-03-07 23:01:32', '', 11, 'http://104.236.246.227/11-revision-v1/', 0, 'revision', '', 0),
(148, 1, '2015-03-07 23:03:51', '2015-03-07 23:03:51', 'Books With Wings was conceived in December, 2001. RG was watching a CNN TV interview of the head librarian at Kabul University. We were shown a single shelf of books remaining, with bullet holes in some of them. The reporter pulled one book off the shelf. It was Milton’s “Paradise Lost”. At the end of the interview the librarian turned to the camera and pleaded for people to send books. RG said to himself: “I can do that”. He went to Vienna for a scientific meeting, returned to work jet lagged, and going down the stairs to his lab, just past the Dean’s office, he turned around, deciding to see the Dean about how to get books to Afghanistan. As he turned, he broke three bones in his foot (metatarsals) and ended up in the nearby hospital instead. Recovering at home in bed, he had plenty of time to search the Web and phone people.\r\n\r\nIt seemed the number one problem had by others collecting books for Afghanistan was that they got them donated easily enough, but had no way to get them to Afghanistan. Shipping to Afghanistan was, and remains, the central problem. Fortunately Canadian Forces agreed to ship books. When RG finally met with Dean of Medicine Brian Henderson, he suggested approaching the medical students, who took it on as a class project, and via their network spread it to medical students at most other universities in Canada. The University of Manitoba Neil John Maclean Health Sciences Library made a major contribution of duplicate books, which kicked things off.\r\n\r\nHundreds of volunteers in Canada, Afghanistan and the USA have been involved. For example, Mrs. Vicel Meregillano-Hicks (Catholic Relief Services) and Dr. Ahmad Zia Shams (Herat Medical Faculty) took the idea ahead in Herat, Afghanistan with Richard Gordon, and later on extended their efforts to other provinces/universities with more volunteers/contributors. About 20,000 up to date, mostly medical books have been sent (through 2014), worth about $3 million. We have started Books With Wings USA chapters. We are expanding to other disciplines besides medicine, and new Chapters are beginning in all three countries.\r\n\r\nCash donations to Books With Wings are tax deductible via the University of Manitoba, which will issue a tax receipt honored by Canada. We need a volunteer to make a similar arrangement in the USA.\r\n \r\n<h2>Cach Donations</h2>\r\n\r\n100% of all cash donations go for:\r\n\r\n<ol>\r\n<li>book labeling and packaging materials</li>\r\n<li>shipping within North America</li>\r\n<li>shipping to Kabul</li>\r\n<li>shipping within Afghanistan</li>\r\n<li>purchase of specialty books, such as midwifery and landmine injury books, that generally don’t show up in donations</li>\r\n<li>occasional pizza and drinks for volunteers</li>\r\n</ol>\r\n\r\nBooks With Wings has no paid staff: 100% volunteers. Please have a look at the <a href="http://104.236.246.227/make-a-donation/" title="Make a donation">donation</a> page on this site for more information.', 'About Books With Wings', '', 'inherit', 'open', 'open', '', '11-revision-v1', '', '', '2015-03-07 23:03:51', '2015-03-07 23:03:51', '', 11, 'http://104.236.246.227/11-revision-v1/', 0, 'revision', '', 0),
(149, 1, '2015-03-07 23:11:30', '2015-03-07 23:11:30', 'Books With Wings was conceived in December, 2001. RG was watching a CNN TV interview of the head librarian at Kabul University. We were shown a single shelf of books remaining, with bullet holes in some of them. The reporter pulled one book off the shelf. It was Milton’s “Paradise Lost”. At the end of the interview the librarian turned to the camera and pleaded for people to send books. RG said to himself: “I can do that”. He went to Vienna for a scientific meeting, returned to work jet lagged, and going down the stairs to his lab, just past the Dean’s office, he turned around, deciding to see the Dean about how to get books to Afghanistan. As he turned, he broke three bones in his foot (metatarsals) and ended up in the nearby hospital instead. Recovering at home in bed, he had plenty of time to search the Web and phone people.\r\n\r\nIt seemed the number one problem had by others collecting books for Afghanistan was that they got them donated easily enough, but had no way to get them to Afghanistan. Shipping to Afghanistan was, and remains, the central problem. Fortunately Canadian Forces agreed to ship books. When RG finally met with Dean of Medicine Brian Henderson, he suggested approaching the medical students, who took it on as a class project, and via their network spread it to medical students at most other universities in Canada. The University of Manitoba Neil John Maclean Health Sciences Library made a major contribution of duplicate books, which kicked things off.\r\n\r\nHundreds of volunteers in Canada, Afghanistan and the USA have been involved. For example, Mrs. Vicel Meregillano-Hicks (Catholic Relief Services) and Dr. Ahmad Zia Shams (Herat Medical Faculty) took the idea ahead in Herat, Afghanistan with Richard Gordon, and later on extended their efforts to other provinces/universities with more volunteers/contributors. About 20,000 up to date, mostly medical books have been sent (through 2014), worth about $3 million. We have started Books With Wings USA chapters. We are expanding to other disciplines besides medicine, and new Chapters are beginning in all three countries.\r\n\r\nCash donations to Books With Wings are tax deductible via the University of Manitoba, which will issue a tax receipt honored by Canada. We need a volunteer to make a similar arrangement in the USA.\r\n \r\n<h2>Cash Donations</h2>\r\n\r\n100% of all cash donations go for:\r\n\r\n<ol>\r\n<li>book labeling and packaging materials</li>\r\n<li>shipping within North America</li>\r\n<li>shipping to Kabul</li>\r\n<li>shipping within Afghanistan</li>\r\n<li>purchase of specialty books, such as midwifery and landmine injury books, that generally don’t show up in donations</li>\r\n<li>occasional pizza and drinks for volunteers</li>\r\n</ol>\r\n\r\nBooks With Wings has no paid staff: 100% volunteers. Please have a look at the <a href="//localhost:3000/make-a-donation/" title="Make a donation">donation</a> page on this site for more information.', 'About Books With Wings', '', 'inherit', 'open', 'open', '', '11-revision-v1', '', '', '2015-03-07 23:11:30', '2015-03-07 23:11:30', '', 11, 'http://104.236.246.227/11-revision-v1/', 0, 'revision', '', 0),
(150, 1, '2015-03-07 23:12:55', '2015-03-07 23:12:55', '“We are motivated by the intense desire for education by Afghan people of all ages, including children, and the rampant optimism in Afghanistan” -R. Gordon\r\n\r\nBooks With Wings was conceived in December, 2001. RG was watching a CNN TV interview of the head librarian at Kabul University. We were shown a single shelf of books remaining, with bullet holes in some of them. The reporter pulled one book off the shelf. It was Milton’s “Paradise Lost”. At the end of the interview the librarian turned to the camera and pleaded for people to send books. RG said to himself: “I can do that”. He went to Vienna for a scientific meeting, returned to work jet lagged, and going down the stairs to his lab, just past the Dean’s office, he turned around, deciding to see the Dean about how to get books to Afghanistan. As he turned, he broke three bones in his foot (metatarsals) and ended up in the nearby hospital instead. Recovering at home in bed, he had plenty of time to search the Web and phone people.\r\n\r\nIt seemed the number one problem had by others collecting books for Afghanistan was that they got them donated easily enough, but had no way to get them to Afghanistan. Shipping to Afghanistan was, and remains, the central problem. Fortunately Canadian Forces agreed to ship books. When RG finally met with Dean of Medicine Brian Henderson, he suggested approaching the medical students, who took it on as a class project, and via their network spread it to medical students at most other universities in Canada. The University of Manitoba Neil John Maclean Health Sciences Library made a major contribution of duplicate books, which kicked things off.\r\n\r\nHundreds of volunteers in Canada, Afghanistan and the USA have been involved. For example, Mrs. Vicel Meregillano-Hicks (Catholic Relief Services) and Dr. Ahmad Zia Shams (Herat Medical Faculty) took the idea ahead in Herat, Afghanistan with Richard Gordon, and later on extended their efforts to other provinces/universities with more volunteers/contributors. About 20,000 up to date, mostly medical books have been sent (through 2014), worth about $3 million. We have started Books With Wings USA chapters. We are expanding to other disciplines besides medicine, and new Chapters are beginning in all three countries.\r\n\r\nCash donations to Books With Wings are tax deductible via the University of Manitoba, which will issue a tax receipt honored by Canada. We need a volunteer to make a similar arrangement in the USA.\r\n \r\n<h2>Cash Donations</h2>\r\n\r\n100% of all cash donations go for:\r\n\r\n<ol>\r\n<li>book labeling and packaging materials</li>\r\n<li>shipping within North America</li>\r\n<li>shipping to Kabul</li>\r\n<li>shipping within Afghanistan</li>\r\n<li>purchase of specialty books, such as midwifery and landmine injury books, that generally don’t show up in donations</li>\r\n<li>occasional pizza and drinks for volunteers</li>\r\n</ol>\r\n\r\nBooks With Wings has no paid staff: 100% volunteers. Please have a look at the <a href="//localhost:3000/make-a-donation/" title="Make a donation">donation</a> page on this site for more information.', 'About Books With Wings', '', 'inherit', 'open', 'open', '', '11-revision-v1', '', '', '2015-03-07 23:12:55', '2015-03-07 23:12:55', '', 11, 'http://104.236.246.227/11-revision-v1/', 0, 'revision', '', 0),
(151, 1, '2015-03-07 23:14:57', '2015-03-07 23:14:57', '<blockquote>\r\n<p>We are motivated by the intense desire for education by Afghan people of all ages, including children, and the rampant optimism in Afghanistan” -R. Gordon</p>\r\n</blockquote>\r\n\r\nBooks With Wings was conceived in December, 2001. RG was watching a CNN TV interview of the head librarian at Kabul University. We were shown a single shelf of books remaining, with bullet holes in some of them. The reporter pulled one book off the shelf. It was Milton’s “Paradise Lost”. At the end of the interview the librarian turned to the camera and pleaded for people to send books. RG said to himself: “I can do that”. He went to Vienna for a scientific meeting, returned to work jet lagged, and going down the stairs to his lab, just past the Dean’s office, he turned around, deciding to see the Dean about how to get books to Afghanistan. As he turned, he broke three bones in his foot (metatarsals) and ended up in the nearby hospital instead. Recovering at home in bed, he had plenty of time to search the Web and phone people.\r\n\r\nIt seemed the number one problem had by others collecting books for Afghanistan was that they got them donated easily enough, but had no way to get them to Afghanistan. Shipping to Afghanistan was, and remains, the central problem. Fortunately Canadian Forces agreed to ship books. When RG finally met with Dean of Medicine Brian Henderson, he suggested approaching the medical students, who took it on as a class project, and via their network spread it to medical students at most other universities in Canada. The University of Manitoba Neil John Maclean Health Sciences Library made a major contribution of duplicate books, which kicked things off.\r\n\r\nHundreds of volunteers in Canada, Afghanistan and the USA have been involved. For example, Mrs. Vicel Meregillano-Hicks (Catholic Relief Services) and Dr. Ahmad Zia Shams (Herat Medical Faculty) took the idea ahead in Herat, Afghanistan with Richard Gordon, and later on extended their efforts to other provinces/universities with more volunteers/contributors. About 20,000 up to date, mostly medical books have been sent (through 2014), worth about $3 million. We have started Books With Wings USA chapters. We are expanding to other disciplines besides medicine, and new Chapters are beginning in all three countries.\r\n\r\nCash donations to Books With Wings are tax deductible via the University of Manitoba, which will issue a tax receipt honored by Canada. We need a volunteer to make a similar arrangement in the USA.\r\n \r\n<h2>Cash Donations</h2>\r\n\r\n100% of all cash donations go for:\r\n\r\n<ol>\r\n<li>book labeling and packaging materials</li>\r\n<li>shipping within North America</li>\r\n<li>shipping to Kabul</li>\r\n<li>shipping within Afghanistan</li>\r\n<li>purchase of specialty books, such as midwifery and landmine injury books, that generally don’t show up in donations</li>\r\n<li>occasional pizza and drinks for volunteers</li>\r\n</ol>\r\n\r\nBooks With Wings has no paid staff: 100% volunteers. Please have a look at the <a href="//localhost:3000/make-a-donation/" title="Make a donation">donation</a> page on this site for more information.', 'About Books With Wings', '', 'inherit', 'open', 'open', '', '11-revision-v1', '', '', '2015-03-07 23:14:57', '2015-03-07 23:14:57', '', 11, 'http://104.236.246.227/11-revision-v1/', 0, 'revision', '', 0),
(152, 1, '2015-03-07 23:18:45', '2015-03-07 23:18:45', '<blockquote>\r\n<p>Books With Wings is a collaborative project between Canadian students and their counterparts in Afghanistan.As of September 2009, we will have sent over 8500 up-to-date medical books worth nearly $1.4 million.</p>\r\n</blockquote>', 'Getting Books to Afghanistan', '', 'inherit', 'open', 'open', '', '48-revision-v1', '', '', '2015-03-07 23:18:45', '2015-03-07 23:18:45', '', 48, 'http://104.236.246.227/48-revision-v1/', 0, 'revision', '', 0),
(153, 1, '2015-03-07 23:19:30', '2015-03-07 23:19:30', '<blockquote>\r\n<p>Books With Wings is a collaborative project between Canadian students and their counterparts in Afghanistan. As of September 2009, we will have sent over 8500 up-to-date medical books worth nearly $1.4 million.</p>\r\n</blockquote>', 'Getting Books to Afghanistan', '', 'inherit', 'open', 'open', '', '48-revision-v1', '', '', '2015-03-07 23:19:30', '2015-03-07 23:19:30', '', 48, 'http://104.236.246.227/48-revision-v1/', 0, 'revision', '', 0),
(154, 1, '2015-03-07 23:59:08', '2015-03-07 23:59:08', '<blockquote>\r\n<p>We are motivated by the intense desire for education by Afghan people of all ages, including children, and the rampant optimism in Afghanistan -R. Gordon</p>\r\n</blockquote>\r\n\r\nBooks With Wings was conceived in December, 2001. RG was watching a CNN TV interview of the head librarian at Kabul University. We were shown a single shelf of books remaining, with bullet holes in some of them. The reporter pulled one book off the shelf. It was Milton’s “Paradise Lost”. At the end of the interview the librarian turned to the camera and pleaded for people to send books. RG said to himself: “I can do that”. He went to Vienna for a scientific meeting, returned to work jet lagged, and going down the stairs to his lab, just past the Dean’s office, he turned around, deciding to see the Dean about how to get books to Afghanistan. As he turned, he broke three bones in his foot (metatarsals) and ended up in the nearby hospital instead. Recovering at home in bed, he had plenty of time to search the Web and phone people.\r\n\r\nIt seemed the number one problem had by others collecting books for Afghanistan was that they got them donated easily enough, but had no way to get them to Afghanistan. Shipping to Afghanistan was, and remains, the central problem. Fortunately Canadian Forces agreed to ship books. When RG finally met with Dean of Medicine Brian Henderson, he suggested approaching the medical students, who took it on as a class project, and via their network spread it to medical students at most other universities in Canada. The University of Manitoba Neil John Maclean Health Sciences Library made a major contribution of duplicate books, which kicked things off.\r\n\r\nHundreds of volunteers in Canada, Afghanistan and the USA have been involved. For example, Mrs. Vicel Meregillano-Hicks (Catholic Relief Services) and Dr. Ahmad Zia Shams (Herat Medical Faculty) took the idea ahead in Herat, Afghanistan with Richard Gordon, and later on extended their efforts to other provinces/universities with more volunteers/contributors. About 20,000 up to date, mostly medical books have been sent (through 2014), worth about $3 million. We have started Books With Wings USA chapters. We are expanding to other disciplines besides medicine, and new Chapters are beginning in all three countries.\r\n\r\nCash donations to Books With Wings are tax deductible via the University of Manitoba, which will issue a tax receipt honored by Canada. We need a volunteer to make a similar arrangement in the USA.\r\n \r\n<h2>Cash Donations</h2>\r\n\r\n100% of all cash donations go for:\r\n\r\n<ol>\r\n<li>book labeling and packaging materials</li>\r\n<li>shipping within North America</li>\r\n<li>shipping to Kabul</li>\r\n<li>shipping within Afghanistan</li>\r\n<li>purchase of specialty books, such as midwifery and landmine injury books, that generally don’t show up in donations</li>\r\n<li>occasional pizza and drinks for volunteers</li>\r\n</ol>\r\n\r\nBooks With Wings has no paid staff: 100% volunteers. Please have a look at the <a href="//localhost:3000/make-a-donation/" title="Make a donation">donation</a> page on this site for more information.', 'About Books With Wings', '', 'inherit', 'open', 'open', '', '11-revision-v1', '', '', '2015-03-07 23:59:08', '2015-03-07 23:59:08', '', 11, 'http://104.236.246.227/11-revision-v1/', 0, 'revision', '', 0),
(155, 1, '2015-03-08 00:03:25', '2015-03-08 00:03:25', 'Books With Wings is a registered Canadian charity. It is based out of the University of Manitaba, and has chapters throughoht', 'Who we are', '', 'inherit', 'open', 'open', '', '49-autosave-v1', '', '', '2015-03-08 00:03:25', '2015-03-08 00:03:25', '', 49, 'http://104.236.246.227/49-autosave-v1/', 0, 'revision', '', 0),
(156, 1, '2015-03-08 00:03:45', '2015-03-08 00:03:45', 'Books With Wings is a registered Canadian charity. It is based out of the University of Manitaba, and has chapters throughout Canada, the United States, and Great Britian.', 'Who we are', '', 'inherit', 'open', 'open', '', '49-revision-v1', '', '', '2015-03-08 00:03:45', '2015-03-08 00:03:45', '', 49, 'http://104.236.246.227/49-revision-v1/', 0, 'revision', '', 0),
(158, 1, '2015-03-08 01:56:26', '2015-03-08 01:56:26', '', 'Get involved parent', '', 'trash', 'open', 'open', '', 'get-involved-parent', '', '', '2015-03-08 02:00:03', '2015-03-08 02:00:03', '', 0, 'http://104.236.246.227/?page_id=158', 0, 'page', '', 0),
(159, 1, '2015-03-08 01:56:26', '2015-03-08 01:56:26', '', 'Get involved parent', '', 'inherit', 'open', 'open', '', '158-revision-v1', '', '', '2015-03-08 01:56:26', '2015-03-08 01:56:26', '', 158, 'http://104.236.246.227/158-revision-v1/', 0, 'revision', '', 0),
(160, 1, '2015-03-08 01:58:09', '2015-03-08 01:58:09', '', 'Books With Wings Chapters', '', 'publish', 'open', 'closed', '', 'chapters', '', '', '2015-03-08 02:16:18', '2015-03-08 02:16:18', '', 162, 'http://104.236.246.227/?page_id=160', 0, 'page', '', 0),
(161, 1, '2015-03-08 01:57:05', '2015-03-08 01:57:05', '', 'Chapters', '', 'inherit', 'open', 'open', '', '160-revision-v1', '', '', '2015-03-08 01:57:05', '2015-03-08 01:57:05', '', 160, 'http://104.236.246.227/160-revision-v1/', 0, 'revision', '', 0),
(162, 1, '2015-03-08 02:00:32', '2015-03-08 02:00:32', '', 'Volunteer', '', 'publish', 'open', 'open', '', 'volunteer', '', '', '2015-03-08 02:00:32', '2015-03-08 02:00:32', '', 0, 'http://104.236.246.227/?page_id=162', 0, 'page', '', 0),
(163, 1, '2015-03-08 02:00:32', '2015-03-08 02:00:32', '', 'Volunteer', '', 'inherit', 'open', 'open', '', '162-revision-v1', '', '', '2015-03-08 02:00:32', '2015-03-08 02:00:32', '', 162, 'http://104.236.246.227/162-revision-v1/', 0, 'revision', '', 0),
(164, 1, '2015-03-08 02:03:57', '2015-03-08 02:03:57', ' ', '', '', 'publish', 'open', 'open', '', '164', '', '', '2015-03-08 02:03:57', '2015-03-08 02:03:57', '', 0, 'http://104.236.246.227/?p=164', 2, 'nav_menu_item', '', 0),
(165, 1, '2015-03-08 02:03:57', '2015-03-08 02:03:57', '', 'BWW Volunteer Information', '', 'publish', 'open', 'open', '', 'bww-volunteer-information', '', '', '2015-03-08 02:03:57', '2015-03-08 02:03:57', '', 162, 'http://104.236.246.227/?p=165', 3, 'nav_menu_item', '', 0),
(166, 1, '2015-03-08 02:03:57', '2015-03-08 02:03:57', ' ', '', '', 'publish', 'open', 'open', '', '166', '', '', '2015-03-08 02:03:57', '2015-03-08 02:03:57', '', 162, 'http://104.236.246.227/?p=166', 5, 'nav_menu_item', '', 0),
(167, 1, '2015-03-08 02:03:57', '2015-03-08 02:03:57', '', 'Register To Volunteer', '', 'publish', 'open', 'open', '', 'register-to-volunteer', '', '', '2015-03-08 02:03:57', '2015-03-08 02:03:57', '', 162, 'http://104.236.246.227/?p=167', 4, 'nav_menu_item', '', 0),
(168, 1, '2015-03-08 02:16:18', '2015-03-08 02:16:18', '', 'Books With Wings Chapters', '', 'inherit', 'open', 'open', '', '160-revision-v1', '', '', '2015-03-08 02:16:18', '2015-03-08 02:16:18', '', 160, 'http://104.236.246.227/160-revision-v1/', 0, 'revision', '', 0) ;
INSERT INTO `wp_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(169, 1, '2015-03-08 06:00:29', '2015-03-08 06:00:29', '<p>Books With Wings is a collaborative project between Canadian students and their counterparts in Afghanistan. As of September 2009, we will have sent over 8500 up-to-date medical books worth nearly $1.4 million.</p>', 'Getting Books to Afghanistan', '', 'inherit', 'open', 'open', '', '48-revision-v1', '', '', '2015-03-08 06:00:29', '2015-03-08 06:00:29', '', 48, 'http://104.236.246.227/48-revision-v1/', 0, 'revision', '', 0),
(170, 1, '2015-03-08 18:35:36', '2015-03-08 18:35:36', '<img src="http://104.236.246.227/app/uploads/2015/03/Afghan_students_hold_supplies_given_to_them_at_a_school_in_the_Shah_Wali_Kot_district_Kandahar_province_Afghanistan_Feb._16_2014_1230x760.jpg" alt="Afghan students hold supplies given to them at a school in the Shah Wali Kot district, Kandahar province, Afghanistan" width="1230" height="760" class="alignnone size-full wp-image-172" /><blockquote>\neducation is the most powerful weapon which you can use to the change the world. - Nelson Mandela\n</blockquote>\n\nAs you drives past small villages in Afghanistan one thing that stands out above everything else is the number of children seen either in school uniforms or with books in hand. Although ruined historical sites and war-torn buildings are hard to miss but another thing that cannot go unnoticed is the Afghan people’s thirst for education. In the countryside children can be seen reading books when taking their sheep and goats for grazing.\n\nMore than 42% of the Afghan population is below 14 years of age. With the passion that the Afghan population has for books it can be estimated that in order to meet the needs of this young population, Afghanistan will need to bring about major improvements in the country’s education system. As Nelson Mandela has beautifully stated that “education is the most powerful weapon which you can use to the change the world.” It is our responsibility as the more privileged students to share this invaluable weapon with the students of Afghanistan. The aim of Books with Wings is to collect up to date university textbooks and share them with university students in Afghanistan in order to aid the country in moving towards independence and self-reliance.', 'Value of Education in Afghanistan', '', 'inherit', 'open', 'open', '', '56-autosave-v1', '', '', '2015-03-08 18:35:36', '2015-03-08 18:35:36', '', 56, 'http://104.236.246.227/56-autosave-v1/', 0, 'revision', '', 0),
(171, 1, '2015-03-08 06:40:30', '2015-03-08 06:40:30', '<blockquote>\r\neducation is the most powerful weapon which you can use to the change the world. - Nelson Mandela\r\n</blockquote>\r\n\r\nAs you drives past small villages in Afghanistan one thing that stands out above everything else is the number of children seen either in school uniforms or with books in hand. Although ruined historical sites and war-torn buildings are hard to miss but another thing that cannot go unnoticed is the Afghan people’s thirst for education. In the countryside children can be seen reading books when taking their sheep and goats for grazing.\r\n\r\nMore than 42% of the Afghan population is below 14 years of age. With the passion that the Afghan population has for books it can be estimated that in order to meet the needs of this young population, Afghanistan will need to bring about major improvements in the country’s education system. As Nelson Mandela has beautifully stated that “education is the most powerful weapon which you can use to the change the world.” It is our responsibility as the more privileged students to share this invaluable weapon with the students of Afghanistan. The aim of Books with Wings is to collect up to date university textbooks and share them with university students in Afghanistan in order to aid the country in moving towards independence and self-reliance.', 'Value of Education in Afghanistan', '', 'inherit', 'open', 'open', '', '56-revision-v1', '', '', '2015-03-08 06:40:30', '2015-03-08 06:40:30', '', 56, 'http://104.236.246.227/56-revision-v1/', 0, 'revision', '', 0),
(172, 1, '2015-03-08 18:33:52', '2015-03-08 18:33:52', '', 'Afghan_students_hold_supplies_given_to_them_at_a_school_in_the_Shah_Wali_Kot_district,_Kandahar_province,_Afghanistan,_Feb._16,_2014_1230x760', '', 'inherit', 'open', 'open', '', 'afghan_students_hold_supplies_given_to_them_at_a_school_in_the_shah_wali_kot_district_kandahar_province_afghanistan_feb-_16_2014_1230x760', '', '', '2015-03-08 18:35:22', '2015-03-08 18:35:22', '', 56, 'http://104.236.246.227/app/uploads/2015/03/Afghan_students_hold_supplies_given_to_them_at_a_school_in_the_Shah_Wali_Kot_district_Kandahar_province_Afghanistan_Feb._16_2014_1230x760.jpg', 0, 'attachment', 'image/jpeg', 0),
(173, 1, '2015-03-08 18:35:59', '2015-03-08 18:35:59', '<blockquote>\r\neducation is the most powerful weapon which you can use to the change the world. - Nelson Mandela\r\n</blockquote>\r\n\r\nAs you drives past small villages in Afghanistan one thing that stands out above everything else is the number of children seen either in school uniforms or with books in hand. Although ruined historical sites and war-torn buildings are hard to miss but another thing that cannot go unnoticed is the Afghan people’s thirst for education. In the countryside children can be seen reading books when taking their sheep and goats for grazing.\r\n\r\n<img src="http://104.236.246.227/app/uploads/2015/03/Afghan_students_hold_supplies_given_to_them_at_a_school_in_the_Shah_Wali_Kot_district_Kandahar_province_Afghanistan_Feb._16_2014_1230x760.jpg" alt="Afghan students hold supplies given to them at a school in the Shah Wali Kot district, Kandahar province, Afghanistan" width="1230" height="760" class="alignnone size-full wp-image-172" />\r\n\r\nMore than 42% of the Afghan population is below 14 years of age. With the passion that the Afghan population has for books it can be estimated that in order to meet the needs of this young population, Afghanistan will need to bring about major improvements in the country’s education system. As Nelson Mandela has beautifully stated that “education is the most powerful weapon which you can use to the change the world.” It is our responsibility as the more privileged students to share this invaluable weapon with the students of Afghanistan. The aim of Books with Wings is to collect up to date university textbooks and share them with university students in Afghanistan in order to aid the country in moving towards independence and self-reliance.', 'Value of Education in Afghanistan', '', 'inherit', 'open', 'open', '', '56-revision-v1', '', '', '2015-03-08 18:35:59', '2015-03-08 18:35:59', '', 56, 'http://104.236.246.227/56-revision-v1/', 0, 'revision', '', 0),
(174, 1, '2015-03-08 18:36:13', '2015-03-08 18:36:13', '<blockquote>Education is the most powerful weapon which you can use to the change the world. - Nelson Mandela</blockquote>\r\nAs you drives past small villages in Afghanistan one thing that stands out above everything else is the number of children seen either in school uniforms or with books in hand. Although ruined historical sites and war-torn buildings are hard to miss but another thing that cannot go unnoticed is the Afghan people’s thirst for education. In the countryside children can be seen reading books when taking their sheep and goats for grazing.\r\n\r\n<img class="alignnone size-full wp-image-172" src="http://104.236.246.227/app/uploads/2015/03/Afghan_students_hold_supplies_given_to_them_at_a_school_in_the_Shah_Wali_Kot_district_Kandahar_province_Afghanistan_Feb._16_2014_1230x760.jpg" alt="Afghan students hold supplies given to them at a school in the Shah Wali Kot district, Kandahar province, Afghanistan" width="1230" height="760" />\r\n\r\nMore than 42% of the Afghan population is below 14 years of age. With the passion that the Afghan population has for books it can be estimated that in order to meet the needs of this young population, Afghanistan will need to bring about major improvements in the country’s education system. As Nelson Mandela has beautifully stated that “education is the most powerful weapon which you can use to the change the world.” It is our responsibility as the more privileged students to share this invaluable weapon with the students of Afghanistan. The aim of Books with Wings is to collect up to date university textbooks and share them with university students in Afghanistan in order to aid the country in moving towards independence and self-reliance.', 'Value of Education in Afghanistan', '', 'inherit', 'open', 'open', '', '56-revision-v1', '', '', '2015-03-08 18:36:13', '2015-03-08 18:36:13', '', 56, 'http://104.236.246.227/56-revision-v1/', 0, 'revision', '', 0),
(175, 1, '2015-03-08 19:00:24', '2015-03-08 19:00:24', '<h2>General information for volunteers</h2>\r\n\r\n\r\n<h2>Call for Volunteers in Specific Disciplines</h2>\r\nBooks With Wings has been sending up to date medical books to the medical schools of Afghanistan. We would like to expand to other disciplines, as the need for books in Afghan universities in all subjects is great. Examples of requests we have had from Afghanistan are:\r\n<ul>\r\n	<li>Business</li>\r\n	<li>Computer Science</li>\r\n	<li>Dentistry</li>\r\n	<li>Education</li>\r\n	<li>Engineering</li>\r\n	<li>English</li>\r\n	<li>Mathematics</li>\r\n	<li>Midwifery</li>\r\n	<li>Public Health</li>\r\n	<li>Science</li>\r\n</ul>\r\nThe volunteer work involves:\r\n<ul>\r\n	<li>Making contact with colleagues in Afghanistan to assess the state of their libraries and needs</li>\r\n	<li>Finding and organizing volunteers to label the books with Library of Congress catalog numbers, and to box and ship the books</li>\r\n	<li>Finding and organizing volunteers to label the books with Library of Congress catalog numbers, and to box and ship the books</li>\r\n</ul>\r\n<h2>Instructions for Volunteers</h2>\r\nVolunteers in Canada please note we have simplified cataloguing instructions for the books for April, 2010. For each book:\r\n\r\n1) Put the books in boxes by shelf order (by catalog number on the spine)\r\n\r\n2) Write into an Excel spreadsheet:\r\n\r\nName of your Books With Wings chapter\r\nBox Number\r\nLC or NLM Number\r\nISBN (generally found on the back of the title page)\r\nIf the book does not have an ISBN number, then write down its authors, title, year published, publisher, and city of publication.\r\n\r\n3) Send the files by email to Atifa Rawan at rawana@u.library.arizona.edu and Richard Gordon at gordonr@cc.umanitoba.ca as they are completed.\r\n\r\nQuick Links:\r\n\r\nPlease click here to download (PDF) instructions on how to find, enter, and submit Library of Congress numbers to our coordinator.', 'Books With Wings volunteer information', '', 'inherit', 'open', 'open', '', '13-revision-v1', '', '', '2015-03-08 19:00:24', '2015-03-08 19:00:24', '', 13, 'http://104.236.246.227/13-revision-v1/', 0, 'revision', '', 0),
(176, 1, '2015-03-08 19:50:01', '2015-03-08 19:50:01', '', 'Home Featured Img', '', 'inherit', 'open', 'open', '', '53-revision-v1', '', '', '2015-03-08 19:50:01', '2015-03-08 19:50:01', '', 53, 'http://104.236.246.227/53-revision-v1/', 0, 'revision', '', 0),
(177, 1, '2015-03-08 19:50:53', '2015-03-08 19:50:53', '', 'Home Featured Img', '', 'inherit', 'open', 'open', '', '53-revision-v1', '', '', '2015-03-08 19:50:53', '2015-03-08 19:50:53', '', 53, 'http://104.236.246.227/53-revision-v1/', 0, 'revision', '', 0),
(178, 1, '2015-03-08 20:04:27', '2015-03-08 20:04:27', '<blockquote>Education is the most powerful weapon which you can use to the change the world. - Nelson Mandela</blockquote>\r\nAs you drives past small villages in Afghanistan one thing that stands out above everything else is the number of children seen either in school uniforms or with books in hand. Although ruined historical sites and war-torn buildings are hard to miss but another thing that cannot go unnoticed is the Afghan people’s thirst for education. In the countryside children can be seen reading books when taking their sheep and goats for grazing.\r\n\r\n<img class="alignnone size-full wp-image-172" src="//localhost:3000/app/uploads/2015/03/Afghan_students_hold_supplies_given_to_them_at_a_school_in_the_Shah_Wali_Kot_district_Kandahar_province_Afghanistan_Feb._16_2014_1230x760.jpg" alt="Afghan students hold supplies given to them at a school in the Shah Wali Kot district, Kandahar province, Afghanistan" width="1230" height="760" />\r\n\r\nMore than 42% of the Afghan population is below 14 years of age. With the passion that the Afghan population has for books it can be estimated that in order to meet the needs of this young population, Afghanistan will need to bring about major improvements in the country’s education system. As Nelson Mandela has beautifully stated that “education is the most powerful weapon which you can use to the change the world.” It is our responsibility as the more privileged students to share this invaluable weapon with the students of Afghanistan. The aim of Books with Wings is to collect up to date university textbooks and share them with university students in Afghanistan in order to aid the country in moving towards independence and self-reliance.', 'Value of Education in Afghanistan', '', 'inherit', 'open', 'open', '', '56-revision-v1', '', '', '2015-03-08 20:04:27', '2015-03-08 20:04:27', '', 56, 'http://104.236.246.227/56-revision-v1/', 0, 'revision', '', 0) ;

#
# End of data contents of table `wp_posts`
# --------------------------------------------------------



#
# Delete any existing table `wp_rg_form`
#

DROP TABLE IF EXISTS `wp_rg_form`;


#
# Table structure of table `wp_rg_form`
#

CREATE TABLE `wp_rg_form` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(150) NOT NULL,
  `date_created` datetime NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `is_trash` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_rg_form`
#
INSERT INTO `wp_rg_form` ( `id`, `title`, `date_created`, `is_active`, `is_trash`) VALUES
(1, 'Contact Us', '2015-03-06 00:33:45', 1, 0),
(2, 'Contact Nanaimo Chapter', '2015-03-07 21:32:06', 1, 0) ;

#
# End of data contents of table `wp_rg_form`
# --------------------------------------------------------



#
# Delete any existing table `wp_rg_form_meta`
#

DROP TABLE IF EXISTS `wp_rg_form_meta`;


#
# Table structure of table `wp_rg_form_meta`
#

CREATE TABLE `wp_rg_form_meta` (
  `form_id` mediumint(8) unsigned NOT NULL,
  `display_meta` longtext,
  `entries_grid_meta` longtext,
  `confirmations` longtext,
  `notifications` longtext,
  PRIMARY KEY (`form_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_rg_form_meta`
#
INSERT INTO `wp_rg_form_meta` ( `form_id`, `display_meta`, `entries_grid_meta`, `confirmations`, `notifications`) VALUES
(1, '{"title":"Contact Us","description":"A generic contact form","labelPlacement":"top_label","descriptionPlacement":"below","button":{"type":"text","text":"Submit","imageUrl":""},"fields":[{"type":"text","id":1,"label":"Your name","adminLabel":"","isRequired":true,"size":"medium","errorMessage":"","inputs":null,"labelPlacement":"","descriptionPlacement":"","subLabelPlacement":"","placeholder":"","multipleFiles":false,"maxFiles":"","calculationFormula":"","calculationRounding":"","enableCalculation":"","disableQuantity":false,"displayAllCategories":false,"inputMask":false,"inputMaskValue":"","allowsPrepopulate":false,"formId":1,"pageNumber":1,"choices":"","conditionalLogic":""},{"type":"email","id":2,"label":"Your email address","adminLabel":"","isRequired":true,"size":"medium","errorMessage":"","inputs":null,"labelPlacement":"","descriptionPlacement":"","subLabelPlacement":"","placeholder":"","multipleFiles":false,"maxFiles":"","calculationFormula":"","calculationRounding":"","enableCalculation":"","disableQuantity":false,"displayAllCategories":false,"inputMask":false,"inputMaskValue":"","allowsPrepopulate":false,"formId":1,"pageNumber":1,"choices":"","conditionalLogic":""},{"type":"text","id":3,"label":"Subject","adminLabel":"","isRequired":false,"size":"medium","errorMessage":"","inputs":null,"labelPlacement":"","descriptionPlacement":"","subLabelPlacement":"","placeholder":"","multipleFiles":false,"maxFiles":"","calculationFormula":"","calculationRounding":"","enableCalculation":"","disableQuantity":false,"displayAllCategories":false,"inputMask":false,"inputMaskValue":"","allowsPrepopulate":false,"formId":1,"pageNumber":1,"choices":"","conditionalLogic":""},{"type":"textarea","id":4,"label":"Your message","adminLabel":"","isRequired":false,"size":"medium","errorMessage":"","inputs":null,"labelPlacement":"","descriptionPlacement":"","subLabelPlacement":"","placeholder":"","multipleFiles":false,"maxFiles":"","calculationFormula":"","calculationRounding":"","enableCalculation":"","disableQuantity":false,"displayAllCategories":false,"inputMask":false,"inputMaskValue":"","allowsPrepopulate":false,"formId":1,"pageNumber":1,"choices":"","conditionalLogic":""}],"id":1,"useCurrentUserAsAuthor":true,"postContentTemplateEnabled":false,"postTitleTemplateEnabled":false,"postTitleTemplate":"","postContentTemplate":"","lastPageButton":null,"pagination":null,"firstPageCssClass":null}', '', '{"54f8f5ea228db":{"id":"54f8f5ea228db","name":"Default Confirmation","isDefault":true,"type":"message","message":"Thanks for contacting us! We will get in touch with you shortly.","url":"","pageId":"","queryString":""}}', '{"54f8f5ea2181f":{"isActive":true,"id":"54f8f5ea2181f","name":"Admin Notification","event":"form_submission","to":"sicossart@gmail.com","toType":"email","bcc":"","subject":"New submission from {form_title}","message":"{all_fields}","from":"{admin_email}","fromName":"","replyTo":"","routing":null,"conditionalLogic":null,"disableAutoformat":""}}'),
(2, '{"title":"Contact Nanaimo Chapter","description":"A generic contact form","labelPlacement":"top_label","descriptionPlacement":"below","button":{"type":"text","text":"Submit","imageUrl":""},"fields":[{"type":"text","id":1,"label":"Your name","adminLabel":"","isRequired":true,"size":"medium","errorMessage":"","inputs":null,"labelPlacement":"","descriptionPlacement":"","subLabelPlacement":"","placeholder":"","multipleFiles":false,"maxFiles":"","calculationFormula":"","calculationRounding":"","enableCalculation":"","disableQuantity":false,"displayAllCategories":false,"inputMask":false,"inputMaskValue":"","allowsPrepopulate":false,"formId":2,"pageNumber":1,"choices":"","conditionalLogic":"","displayOnly":""},{"type":"email","id":2,"label":"Your email address","adminLabel":"","isRequired":true,"size":"medium","errorMessage":"","inputs":null,"labelPlacement":"","descriptionPlacement":"","subLabelPlacement":"","placeholder":"","multipleFiles":false,"maxFiles":"","calculationFormula":"","calculationRounding":"","enableCalculation":"","disableQuantity":false,"displayAllCategories":false,"inputMask":false,"inputMaskValue":"","allowsPrepopulate":false,"formId":2,"pageNumber":1,"choices":"","conditionalLogic":"","displayOnly":""},{"type":"text","id":3,"label":"Subject","adminLabel":"","isRequired":false,"size":"medium","errorMessage":"","inputs":null,"labelPlacement":"","descriptionPlacement":"","subLabelPlacement":"","placeholder":"","multipleFiles":false,"maxFiles":"","calculationFormula":"","calculationRounding":"","enableCalculation":"","disableQuantity":false,"displayAllCategories":false,"inputMask":false,"inputMaskValue":"","allowsPrepopulate":false,"formId":2,"pageNumber":1,"choices":"","conditionalLogic":"","displayOnly":""},{"type":"textarea","id":4,"label":"Your message","adminLabel":"","isRequired":false,"size":"medium","errorMessage":"","inputs":null,"labelPlacement":"","descriptionPlacement":"","subLabelPlacement":"","placeholder":"","multipleFiles":false,"maxFiles":"","calculationFormula":"","calculationRounding":"","enableCalculation":"","disableQuantity":false,"displayAllCategories":false,"inputMask":false,"inputMaskValue":"","allowsPrepopulate":false,"formId":2,"pageNumber":1,"choices":"","conditionalLogic":"","displayOnly":""}],"id":2,"useCurrentUserAsAuthor":true,"postContentTemplateEnabled":false,"postTitleTemplateEnabled":false,"postTitleTemplate":"","postContentTemplate":"","lastPageButton":null,"pagination":null,"firstPageCssClass":null,"notifications":{"54f8f5ea2181f":{"isActive":true,"id":"54f8f5ea2181f","name":"Admin Notification","event":"form_submission","to":"sicossart@gmail.com","toType":"email","bcc":"","subject":"New submission from {form_title}","message":"{all_fields}","from":"{admin_email}","fromName":"","replyTo":"","routing":null,"conditionalLogic":null,"disableAutoformat":""}},"confirmations":{"54f8f5ea228db":{"id":"54f8f5ea228db","name":"Default Confirmation","isDefault":true,"type":"message","message":"Thanks for contacting us! We will get in touch with you shortly.","url":"","pageId":"","queryString":""}},"subLabelPlacement":"below","cssClass":"","enableHoneypot":"","enableAnimation":"","save":{"enabled":"","button":{"type":"link","text":"Save and Continue Later"}},"limitEntries":"","limitEntriesCount":"","limitEntriesPeriod":"","limitEntriesMessage":"","scheduleForm":"","scheduleStart":"","scheduleStartHour":"","scheduleStartMinute":"","scheduleStartAmpm":"","scheduleEnd":"","scheduleEndHour":"","scheduleEndMinute":"","scheduleEndAmpm":"","schedulePendingMessage":"","scheduleMessage":"","requireLogin":"","requireLoginMessage":""}', NULL, '{"54f8f5ea228db":{"id":"54f8f5ea228db","name":"Default Confirmation","isDefault":true,"type":"message","message":"Thanks for contacting us! We will get in touch with you shortly.","url":"","pageId":"","queryString":""}}', '{"54f8f5ea2181f":{"isActive":true,"id":"54f8f5ea2181f","name":"Admin Notification","event":"form_submission","to":"sicossart@gmail.com","toType":"email","bcc":"","subject":"New submission from {form_title}","message":"{all_fields}","from":"{admin_email}","fromName":"","replyTo":"","routing":null,"conditionalLogic":null,"disableAutoformat":""}}') ;

#
# End of data contents of table `wp_rg_form_meta`
# --------------------------------------------------------



#
# Delete any existing table `wp_rg_form_view`
#

DROP TABLE IF EXISTS `wp_rg_form_view`;


#
# Table structure of table `wp_rg_form_view`
#

CREATE TABLE `wp_rg_form_view` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `form_id` mediumint(8) unsigned NOT NULL,
  `date_created` datetime NOT NULL,
  `ip` char(15) DEFAULT NULL,
  `count` mediumint(8) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `form_id` (`form_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_rg_form_view`
#
INSERT INTO `wp_rg_form_view` ( `id`, `form_id`, `date_created`, `ip`, `count`) VALUES
(1, 1, '2015-03-07 01:57:56', '192.168.50.1', 1),
(2, 1, '2015-03-07 20:22:25', '192.168.50.1', 2),
(3, 1, '2015-03-08 01:43:30', '192.168.50.1', 1),
(4, 1, '2015-03-08 18:21:08', '192.168.50.1', 2),
(5, 1, '2015-03-08 19:54:56', '192.168.50.1', 4),
(6, 1, '2015-03-08 20:00:50', '192.168.50.1', 4) ;

#
# End of data contents of table `wp_rg_form_view`
# --------------------------------------------------------



#
# Delete any existing table `wp_rg_incomplete_submissions`
#

DROP TABLE IF EXISTS `wp_rg_incomplete_submissions`;


#
# Table structure of table `wp_rg_incomplete_submissions`
#

CREATE TABLE `wp_rg_incomplete_submissions` (
  `uuid` char(32) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `form_id` mediumint(8) unsigned NOT NULL,
  `date_created` datetime NOT NULL,
  `ip` varchar(39) NOT NULL,
  `source_url` longtext NOT NULL,
  `submission` longtext NOT NULL,
  PRIMARY KEY (`uuid`),
  KEY `form_id` (`form_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_rg_incomplete_submissions`
#

#
# End of data contents of table `wp_rg_incomplete_submissions`
# --------------------------------------------------------



#
# Delete any existing table `wp_rg_lead`
#

DROP TABLE IF EXISTS `wp_rg_lead`;


#
# Table structure of table `wp_rg_lead`
#

CREATE TABLE `wp_rg_lead` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `form_id` mediumint(8) unsigned NOT NULL,
  `post_id` bigint(20) unsigned DEFAULT NULL,
  `date_created` datetime NOT NULL,
  `is_starred` tinyint(1) NOT NULL DEFAULT '0',
  `is_read` tinyint(1) NOT NULL DEFAULT '0',
  `ip` varchar(39) NOT NULL,
  `source_url` varchar(200) NOT NULL DEFAULT '',
  `user_agent` varchar(250) NOT NULL DEFAULT '',
  `currency` varchar(5) DEFAULT NULL,
  `payment_status` varchar(15) DEFAULT NULL,
  `payment_date` datetime DEFAULT NULL,
  `payment_amount` decimal(19,2) DEFAULT NULL,
  `payment_method` varchar(30) DEFAULT NULL,
  `transaction_id` varchar(50) DEFAULT NULL,
  `is_fulfilled` tinyint(1) DEFAULT NULL,
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `transaction_type` tinyint(1) DEFAULT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'active',
  PRIMARY KEY (`id`),
  KEY `form_id` (`form_id`),
  KEY `status` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_rg_lead`
#
INSERT INTO `wp_rg_lead` ( `id`, `form_id`, `post_id`, `date_created`, `is_starred`, `is_read`, `ip`, `source_url`, `user_agent`, `currency`, `payment_status`, `payment_date`, `payment_amount`, `payment_method`, `transaction_id`, `is_fulfilled`, `created_by`, `transaction_type`, `status`) VALUES
(1, 1, NULL, '2015-03-06 00:46:44', 0, 1, '192.168.50.1', 'http://104.236.246.227/chapter/books-with-wings-nanaimo-chapter/', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', 'CAD', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'active'),
(2, 1, NULL, '2015-03-06 00:54:20', 0, 0, '192.168.50.1', 'http://104.236.246.227/chapter/books-with-wings-nanaimo-chapter/', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', 'CAD', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'active'),
(3, 1, NULL, '2015-03-06 01:01:35', 0, 0, '192.168.50.1', 'http://104.236.246.227/chapter/books-with-wings-nanaimo-chapter/', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', 'CAD', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'active'),
(4, 1, NULL, '2015-03-06 01:08:03', 0, 0, '192.168.50.1', 'http://104.236.246.227/chapter/books-with-wings-nanaimo-chapter/', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', 'CAD', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'active'),
(5, 1, NULL, '2015-03-06 01:12:32', 0, 0, '192.168.50.1', 'http://104.236.246.227/chapter/books-with-wings-nanaimo-chapter/', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', 'CAD', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'active'),
(6, 1, NULL, '2015-03-06 01:13:02', 0, 0, '192.168.50.1', 'http://104.236.246.227/chapter/books-with-wings-nanaimo-chapter/', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', 'CAD', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'active'),
(7, 1, NULL, '2015-03-06 01:14:10', 0, 0, '192.168.50.1', 'http://104.236.246.227/chapter/books-with-wings-nanaimo-chapter/', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', 'CAD', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'active'),
(8, 1, NULL, '2015-03-08 18:56:31', 0, 0, '192.168.50.1', 'http://104.236.246.227/contact/', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.76 Safari/537.36', 'CAD', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'active') ;

#
# End of data contents of table `wp_rg_lead`
# --------------------------------------------------------



#
# Delete any existing table `wp_rg_lead_detail`
#

DROP TABLE IF EXISTS `wp_rg_lead_detail`;


#
# Table structure of table `wp_rg_lead_detail`
#

CREATE TABLE `wp_rg_lead_detail` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `lead_id` int(10) unsigned NOT NULL,
  `form_id` mediumint(8) unsigned NOT NULL,
  `field_number` float NOT NULL,
  `value` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `form_id` (`form_id`),
  KEY `lead_id` (`lead_id`),
  KEY `lead_field_number` (`lead_id`,`field_number`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_rg_lead_detail`
#
INSERT INTO `wp_rg_lead_detail` ( `id`, `lead_id`, `form_id`, `field_number`, `value`) VALUES
(1, 1, 1, '1', 'simon'),
(2, 1, 1, '2', 'scossar3@gmail.com'),
(3, 1, 1, '3', 'test'),
(4, 1, 1, '4', 'test'),
(5, 2, 1, '1', 'simon'),
(6, 2, 1, '2', 'scossar3@gmail.com'),
(7, 2, 1, '3', 'test'),
(8, 2, 1, '4', 'Will this work?'),
(9, 3, 1, '1', 'simon'),
(10, 3, 1, '2', 'scossar3@gmail.com'),
(11, 3, 1, '3', 'test'),
(12, 3, 1, '4', 'test'),
(13, 4, 1, '1', 'simon'),
(14, 4, 1, '2', 'scossar3@gmail.com'),
(15, 4, 1, '3', 'another email'),
(16, 4, 1, '4', 'this is another email'),
(17, 5, 1, '1', 'Sion'),
(18, 5, 1, '2', 'scossar3@gmail.com'),
(19, 5, 1, '3', 'to the skies'),
(20, 5, 1, '4', 'this will fly to the skies'),
(21, 6, 1, '1', 'Sion'),
(22, 6, 1, '2', 'scossar3@gmail.com'),
(23, 6, 1, '3', 'to the skies'),
(24, 6, 1, '4', 'this will fly to the skies'),
(25, 7, 1, '1', 'Sion'),
(26, 7, 1, '2', 'scossar3@gmail.com'),
(27, 7, 1, '3', 'test email'),
(28, 7, 1, '4', 'this should go somewhere'),
(29, 8, 1, '1', 'Simon'),
(30, 8, 1, '2', 'scossar3@gmail.com'),
(31, 8, 1, '3', 'test'),
(32, 8, 1, '4', 'test') ;

#
# End of data contents of table `wp_rg_lead_detail`
# --------------------------------------------------------



#
# Delete any existing table `wp_rg_lead_detail_long`
#

DROP TABLE IF EXISTS `wp_rg_lead_detail_long`;


#
# Table structure of table `wp_rg_lead_detail_long`
#

CREATE TABLE `wp_rg_lead_detail_long` (
  `lead_detail_id` bigint(20) unsigned NOT NULL,
  `value` longtext,
  PRIMARY KEY (`lead_detail_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_rg_lead_detail_long`
#

#
# End of data contents of table `wp_rg_lead_detail_long`
# --------------------------------------------------------



#
# Delete any existing table `wp_rg_lead_meta`
#

DROP TABLE IF EXISTS `wp_rg_lead_meta`;


#
# Table structure of table `wp_rg_lead_meta`
#

CREATE TABLE `wp_rg_lead_meta` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `form_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `lead_id` bigint(20) unsigned NOT NULL,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`id`),
  KEY `meta_key` (`meta_key`),
  KEY `lead_id` (`lead_id`),
  KEY `form_id_meta_key` (`form_id`,`meta_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_rg_lead_meta`
#

#
# End of data contents of table `wp_rg_lead_meta`
# --------------------------------------------------------



#
# Delete any existing table `wp_rg_lead_notes`
#

DROP TABLE IF EXISTS `wp_rg_lead_notes`;


#
# Table structure of table `wp_rg_lead_notes`
#

CREATE TABLE `wp_rg_lead_notes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lead_id` int(10) unsigned NOT NULL,
  `user_name` varchar(250) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `date_created` datetime NOT NULL,
  `value` longtext,
  `note_type` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `lead_id` (`lead_id`),
  KEY `lead_user_key` (`lead_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_rg_lead_notes`
#

#
# End of data contents of table `wp_rg_lead_notes`
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_term_relationships`
#
INSERT INTO `wp_term_relationships` ( `object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(27, 2, 0),
(29, 2, 0),
(56, 3, 0),
(56, 4, 0),
(103, 5, 0),
(104, 5, 0),
(112, 5, 0),
(117, 6, 0),
(122, 6, 0),
(164, 2, 0),
(165, 2, 0),
(166, 2, 0),
(167, 2, 0) ;

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
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_term_taxonomy`
#
INSERT INTO `wp_term_taxonomy` ( `term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 6),
(3, 3, 'category', '', 0, 1),
(4, 4, 'category', '', 0, 1),
(5, 5, 'nav_menu', '', 0, 3),
(6, 6, 'nav_menu', '', 0, 2) ;

#
# End of data contents of table `wp_term_taxonomy`
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
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_terms`
#
INSERT INTO `wp_terms` ( `term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Primary Navigation', 'primary-navigation', 0),
(3, 'life in Afghanistan', 'life-in-afghanistan', 0),
(4, 'currently selected', 'currently-selected', 0),
(5, 'Volunteer Navigation', 'volunteer-navigation', 0),
(6, 'Donation Navigation', 'donation-navigation', 0) ;

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
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8;


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
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(11, 1, 'wp_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', 'wp360_locks,wp390_widgets,wp410_dfw'),
(13, 1, 'show_welcome_panel', '1'),
(15, 1, 'wp_dashboard_quick_press_last_post_id', '3'),
(16, 1, 'wp_user-settings', 'post_dfw=off&libraryContent=browse&imgsize=full&urlbutton=none&editor=html'),
(17, 1, 'wp_user-settings-time', '1425841221'),
(18, 1, 'managenav-menuscolumnshidden', 'a:4:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";}'),
(19, 1, 'metaboxhidden_nav-menus', 'a:3:{i:0;s:8:"add-post";i:1;s:12:"add-post_tag";i:2;s:15:"add-post_format";}'),
(20, 1, 'nav_menu_recently_edited', '2'),
(21, 1, 'closedpostboxes_post', 'a:0:{}'),
(22, 1, 'metaboxhidden_post', 'a:7:{i:0;s:9:"formatdiv";i:1;s:23:"acf-group_54f7c18aa2897";i:2;s:11:"postexcerpt";i:3;s:13:"trackbacksdiv";i:4;s:10:"postcustom";i:5;s:16:"commentstatusdiv";i:6;s:7:"slugdiv";}'),
(23, 1, 'closedpostboxes_toplevel_page_wpcf7', 'a:0:{}'),
(24, 1, 'metaboxhidden_toplevel_page_wpcf7', 'a:0:{}'),
(25, 1, '_donor_firstname', 'Simon'),
(26, 1, '_donor_lastname', 'Cossar'),
(27, 1, '_donor_website', ''),
(28, 1, '_donor_address', ''),
(29, 1, '_donor_zip', ''),
(30, 1, '_donor_town', 'Nanaimo'),
(31, 1, '_donor_logo', ''),
(32, 1, 'session_tokens', 'a:10:{s:64:"4eb307b85e4960f8f5e122cd4ab3cb192c2a7dfa3cd7e4e4468dafb9fc2caaf1";a:4:{s:10:"expiration";i:1425863974;s:2:"ip";s:12:"192.168.50.1";s:2:"ua";s:121:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36";s:5:"login";i:1425691174;}s:64:"22eceb6c40fe91310ef8bb25477359394ce652b6d9cef844d852494ba04cf6ab";a:4:{s:10:"expiration";i:1425933764;s:2:"ip";s:12:"192.168.50.1";s:2:"ua";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.76 Safari/537.36";s:5:"login";i:1425760964;}s:64:"9d7593d992212e92769191e17e4513db4ed4bac648139317f0d63ca829f58cde";a:4:{s:10:"expiration";i:1425933784;s:2:"ip";s:12:"192.168.50.1";s:2:"ua";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.76 Safari/537.36";s:5:"login";i:1425760984;}s:64:"81efa823ef6b3a3d9d96bb0b2d9a1841562310919ff319acbc9e8fd825652f22";a:4:{s:10:"expiration";i:1425933923;s:2:"ip";s:12:"192.168.50.1";s:2:"ua";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.76 Safari/537.36";s:5:"login";i:1425761123;}s:64:"83a09a38fc31d9c848ed04ecb20401ca30b85c545f05d1b4db0ebfbf73cd5fe0";a:4:{s:10:"expiration";i:1425933972;s:2:"ip";s:12:"192.168.50.1";s:2:"ua";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.76 Safari/537.36";s:5:"login";i:1425761172;}s:64:"0c5abbbbeb514d2f731b7c0a02e712e31cee92c0ae95e468b1cd8c7be52c65d3";a:4:{s:10:"expiration";i:1425952195;s:2:"ip";s:12:"192.168.50.1";s:2:"ua";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.76 Safari/537.36";s:5:"login";i:1425779395;}s:64:"d65cb1accf4844348e93cca3647cc4abb7794a85ac3a2da924f8399fb29840e0";a:4:{s:10:"expiration";i:1425952710;s:2:"ip";s:12:"192.168.50.1";s:2:"ua";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.76 Safari/537.36";s:5:"login";i:1425779910;}s:64:"d8507c4518983da96b90138c9c2f99eca9ea06ccf4ad00755bbc4b14e0e0b867";a:4:{s:10:"expiration";i:1425952726;s:2:"ip";s:12:"192.168.50.1";s:2:"ua";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.76 Safari/537.36";s:5:"login";i:1425779926;}s:64:"d91f3dc74cf551d934ee36fa9bfe2c9b4f9250af030f26a83a231a73f1ebd50e";a:4:{s:10:"expiration";i:1426017830;s:2:"ip";s:12:"192.168.50.1";s:2:"ua";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.76 Safari/537.36";s:5:"login";i:1425845030;}s:64:"61d18fe408d2164423c798bfecca2838cdf615404e7312d1aab273aa4ba1c2dc";a:4:{s:10:"expiration";i:1426019715;s:2:"ip";s:12:"192.168.50.1";s:2:"ua";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.76 Safari/537.36";s:5:"login";i:1425846915;}}'),
(33, 2, 'nickname', 'bookswithwings'),
(34, 2, 'first_name', 'Simon'),
(35, 2, 'last_name', 'Cossar'),
(36, 2, 'description', ''),
(37, 2, 'rich_editing', 'true'),
(38, 2, 'comment_shortcuts', 'false'),
(39, 2, 'admin_color', 'fresh'),
(40, 2, 'use_ssl', '0'),
(41, 2, 'show_admin_bar_front', 'true'),
(42, 2, 'wp_capabilities', 'a:1:{s:10:"subscriber";b:1;}'),
(43, 2, 'wp_user_level', '0'),
(44, 2, 'custom_field_1', 'Nanaimo'),
(45, 2, 'custom_field_2', 'Canada'),
(46, 2, 'custom_field_3', 'Select a state'),
(47, 2, 'custom_field_4', ''),
(48, 2, 'custom_field_5', ''),
(49, 3, 'nickname', '12three'),
(50, 3, 'first_name', ''),
(51, 3, 'last_name', ''),
(52, 3, 'description', ''),
(53, 3, 'rich_editing', 'true'),
(54, 3, 'comment_shortcuts', 'false'),
(55, 3, 'admin_color', 'fresh'),
(56, 3, 'use_ssl', '0'),
(57, 3, 'show_admin_bar_front', 'true'),
(58, 3, 'wp_capabilities', 'a:1:{s:10:"subscriber";b:1;}'),
(59, 3, 'wp_user_level', '0'),
(60, 3, 'custom_field_1', ''),
(61, 3, 'custom_field_2', ''),
(62, 3, 'custom_field_3', ''),
(63, 3, 'custom_field_4', ''),
(64, 3, 'custom_field_5', ''),
(65, 1, 'closedpostboxes_page', 'a:0:{}'),
(66, 1, 'metaboxhidden_page', 'a:7:{i:0;s:23:"acf-group_54f896133abd6";i:1;s:23:"acf-group_54f7c18aa2897";i:2;s:10:"postcustom";i:3;s:16:"commentstatusdiv";i:4;s:11:"commentsdiv";i:5;s:7:"slugdiv";i:6;s:9:"authordiv";}'),
(67, 1, 'meta-box-order_dashboard', 'a:4:{s:6:"normal";s:15:"mandrill_widget";s:4:"side";s:18:"rg_forms_dashboard";s:7:"column3";s:0:"";s:7:"column4";s:0:"";}') ;

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
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(64) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(60) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_users`
#
INSERT INTO `wp_users` ( `ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BioLylCh93.XU0/GSA8JeUul1DnU1Q/', 'admin', 'scossar2@gmail.com', '', '2015-03-04 21:12:49', '', 0, 'admin'),
(2, 'bookswithwings', '$P$BFsjdquBHYYh6mdQ9X4hEVHL1ZBiyJ/', 'bookswithwings', 'scossar3@gmail.com', '', '2015-03-07 20:30:06', '', 0, 'Simon Cossar'),
(3, '12three', '$P$BLOviXeXQnfE/J/4UlLqE2OiChAXtw.', '12three', '12three@example.com', '', '2015-03-07 22:11:31', '', 0, '12three') ;

#
# End of data contents of table `wp_users`
# --------------------------------------------------------

#
# Add constraints back in
#

