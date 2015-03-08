<?php
/**
 * Plugin Name: Positioned Content
 * Text Domain: t11-positioned
 */

require_once(__DIR__ . '/autoloader.php');

// Register the positioned post types
$post_types = Testeleven_Positioned_Post_Types::get_instance();

// Get an instance of the plugin
$plugin = Testeleven_Positioned_Content_Plugin::get_instance();

// Register a position
$site_description = new Position('site-description', 'front-page.php');
$home_featured_image = new Position('home-featured-img', 'front-page.php');
$footer_who_we_are = new Position('footer-who', 'front-page.php');
$footer_where_we_are = new Position('footer-where', 'front-page.php');

// Create the post
$plugin->create_positioned_post('Positioned_Post_Creator', 'positioned_full', $site_description);
$plugin->create_positioned_post('Positioned_Post_Creator', 'positioned_image', $home_featured_image);
$plugin->create_positioned_post('Positioned_Post_Creator', 'positioned_full', $footer_who_we_are);
$plugin->create_positioned_post('Positioned_Post_Creator', 'positioned_full', $footer_where_we_are);

require_once(__DIR__ . '/lib/testeleven_positioned_template_tags.php');
