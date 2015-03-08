<?php

namespace Testeleven\BWW\Admin;

function update_message($message) {
	if (('positioned_full' == get_post_type()) ||
	    ('positioned_content' == get_post_type()) ||
	    ('positioned_title' == get_post_type()) ||
	    ('positioned_image' == get_post_type())) {
		$message = '';
	}
	return $message;
}
add_filter('post_updated_messages', 'Testeleven\BWW\Admin\update_message');

// Remove dashboard widgets
function remove_dashboard_meta() {
	remove_meta_box('dashboard_incoming_links', 'dashboard', 'normal');
	remove_meta_box('dashboard_plugins', 'dashboard', 'normal');
	remove_meta_box('dashboard_primary', 'dashboard', 'side');
	remove_meta_box('dashboard_secondary', 'dashboard', 'normal');
	remove_meta_box('dashboard_quick_press', 'dashboard', 'side');
	remove_meta_box('dashboard_recent_comments', 'dashboard', 'normal');
	remove_meta_box('dashboard_right_now', 'dashboard', 'normal');
	remove_meta_box('dashboard_activity', 'dashboard', 'normal');
}
add_action( 'wp_dashboard_setup', 'Testeleven\BWW\Admin\remove_dashboard_meta' );

// Remove welcome panel
remove_action('welcome_panel', 'wp_welcome_panel');


// Use this function to find the names of the menu pages that you wish to remove.
//add_action('admin_init', 'testeleven_debug_admin_menu');
function testeleven_debug_admin_menu() {
	echo '<pre>' . print_r($GLOBALS['menu'], true) . '</pre>';
}

// Hide the admin bar
add_filter('show_admin_bar', '__return_false');

function hide_add_new() {
	if (('positioned_full' == get_post_type()) ||
	    ('positioned_content' == get_post_type()) ||
	    ('positioned_title' == get_post_type()) ||
	    ('positioned_image' == get_post_type())) {
		echo '<style type="text/css">
    #favorite-actions {display:none;}
    .add-new-h2{display:none;}
    .tablenav{display:none;}
    </style>';
	}
}
add_action('admin_head', 'Testeleven\BWW\Admin\hide_add_new');