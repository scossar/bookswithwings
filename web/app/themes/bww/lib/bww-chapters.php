<?php
namespace Testeleven\BWW\Chapters;

/**
 * Register the 'chapter' custom post type
 */
function register_chapter() {
	$labels = array(
		'name' => __('Chapters', 'sage'),
		'singular_name' => __('Chapter', 'sage'),
		'add_new' => 'Add New Chapter',
		'add_new_item' => 'Add New Chapter',
		'edit_item' => 'Edit Chapter',
	);
	$args = array(
		'labels' => $labels,
		'public' => true,
		'has_archive' => true,
		'supports' => array('title', 'revisions'),
	);
	register_post_type('chapter', $args);
}
add_action('init', 'Testeleven\BWW\Chapters\register_chapter');

/**
 * Change the editor 'Enter title here' text to 'Enter chapter name'
 */
function custom_chapter_title($input) {
	global $post_type;

	if (is_admin() && 'Enter title here' == $input && 'chapter' == $post_type) {
		return 'Enter chapter name here';
	}

	return $input;
}
add_filter('gettext', 'Testeleven\BWW\Chapters\custom_chapter_title');

/**
 * Display the chapter archives as a list of links.
 */
function display_chapters() {
	$args = array(
		'post_type' => 'chapter',
	);
	$query = new \WP_Query($args);
	?>
	<?php if ($query->have_posts()) : ?>
		<ul class="chapter-list">
		  <?php while ($query->have_posts()) : $query->the_post(); ?>
			  <li>
				  <a href="<?php the_permalink(); ?>">
					  <?php the_title(); ?>
				  </a>
			  </li>
		  <?php endwhile; ?>
		</ul>
	<?php endif; ?>
<?php
	wp_reset_postdata();
}

/**
 * Display a single chapter
 */
function display_single_chapter() {
	?>
	<?php while (have_posts()) : the_post(); ?>
		<header>
		  <h1><?php the_title(); ?></h1>
		</header>
		<?php if ($description = get_field('chapter_description')) : ?>
			<div class="chapter-description">
				<?php echo $description; ?>
			</div>
		<?php endif; ?>
		<?php
		$city = get_field('chapter_city');
		$province = get_field('chapter_province');
		$country = get_field('chapter_country');
		?>
		<?php if ($city || $province || $country) : ?>
			<div class="chapter-location">
				<h2>Location</h2>
				<?php if (($city && $province) || ($city && $country)) : ?>
					<p><?php echo "$city, $province $country"; ?></p>
				<?php else : ?>
					<p><?php echo "$city $province $country" ?></p>
				<?php endif; ?>
			</div>
		<?php endif; ?>

	<?php endwhile; ?>
<?php
}