<?php

defined( 'ABSPATH' ) or die( 'The authorities have been notified!' );

class Testeleven_Positioned_Content {
	protected static $instance = null;

	// Initialize if there isn't already an instance
	public static function get_instance() {
		self::$instance === null && self::$instance = new self;

		return self::$instance;
	}

	protected function __construct() {
		add_action('init', array($this, 'register_positioned_types'));
	}

	// Create the 'positioned' post types
	protected function create_positioned_full() {
		$labels = array(
			'name' => __('Positioned Full Posts', 't11pc'),
			'singular_name' => __('Positioned Full Post', 't11pc'),
		);
		$args = array(
			'labels' => $labels,
			'public' => true,
			'has_archive' => false,
			'supports' => array('title', 'editor', 'revisions', 'thumbnail', 'author'),
		);
		register_post_type('positioned_full', $args);
	}

	protected function create_positioned_content() {
		$labels = array(
			'name' => __('Positioned Content', 't11pc'),
		);
		$args = array(
			'labels' => $labels,
	    'public' => true,
			'has_archive' => false,
			'supports' => array('editor', 'revisions', 'author'),
		);
		register_post_type('positioned_content', $args);
	}

	protected function create_positioned_heading() {
		$labels = array(
			'name' => __('Positioned Headings', 't11pc'),
			'singular_name' => __('Positioned Heading', 't11pc'),
		);
		$args = array(
			'labels' => $labels,
			'public' => true,
			'has_archive' => false,
			'supports' => array('revisions', 'author'),
		);
		register_post_type('positioned_heading', $args);
	}

	protected function create_positioned_image() {
		$labels = array(
			'name' => __('Positioned Images', 't11pc'),
			'singular_name' => __('Positioned Image', 't11pc'),
		);
		$args = array(
			'labels' => $labels,
			'public' => true,
			'has_archive' => false,
			'supports' => array('revisions', 'author'),
		);
		register_post_type('positioned_image', $args);
	}

	public function register_positioned_types() {
		$this->create_positioned_full();
		$this->create_positioned_content();
		$this->create_positioned_heading();
		$this->create_positioned_image();
	}

	public function initialize_post($position, $post_type, $preview_page = 'home') {
		// Create a temporary title based on the position slug.
		$tmp_title = ucwords(str_replace('-', ' ', $position));
		// Create some temporary content.
		$tmp_content = 'Dapibus aliquam magna. Ornare phasellus lobortis, metus sodales ut, sem eget sit. Commodo eu pharetra, pellentesque ut, id ut. Nam sit, ac accumsan, a quos. Aenean est dui, in lectus ultricies. Quam elit, hendrerit aliquam vivamus, quisque suscipit.';
		// Create a temporary image
//		$tmp_image = plugin_dir_url(__FILE__) . 'images/image.jpg';

		// Check to see if the post already exists.
		if (!$this->posts_in_position($position, $post_type)) {
			// Create the post based on the post type
			switch($post_type) {
				case 'positioned_full':
					$args = array(
						'post_title' => $tmp_title,
						'post_content' => $tmp_content,
						'post_status' => 'publish',
						'post_type' => $post_type,
					);
					$post_id = wp_insert_post($args);
					// Add the 'post_position' and 'preview_page' metadata to the post.
				  update_post_meta($post_id, 'post_position', $position);
					update_post_meta($post_id, 'preview_page', $preview_page);
					break;
			}
		}
	}

	protected function posts_in_position($position, $post_type) {
		$args = array(
			'meta_key' => 'post_position',
			'meta_value' => $position,
			'post_type' => $post_type,
		);
		$query = new WP_Query($args);
		return $query->have_posts();
	}

}

