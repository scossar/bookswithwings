<?php

namespace Testeleven\BWW\CustomLoops;

/**
 * Display single post by category name. The post is selected by also including
 * a 'use' category..
 */
function display_single_post_by_category($category_slug, $use_slug = 'currently-selected') {
	// Get the category ids from the slugs.
	$category_id = get_cat_id_from_slug($category_slug);
	$use_this_id = get_cat_id_from_slug($use_slug);
	$args = array(
		'category__and' => array($category_id, $use_this_id),
		'posts_per_page' => 1,
	);
	$query = new \WP_Query($args);
	?>
	<?php if ($query->have_posts()) : ?>
		<?php while ($query->have_posts()) : $query->the_post(); ?>
			<div class="editable">
				<article <?php post_class(); ?>>
					<?php if (has_post_thumbnail()) : ?>
						<div class="featured-image">
							<?php the_post_thumbnail(); ?>
						</div>
				  <?php endif; ?>
					<header>
						<h2 class="entry-title"><?php the_title(); ?></h2>
						<div class="post-metadata">
							<?php get_template_part('templates/entry-meta'); ?>
						</div>
					</header>
					<div class="entry-content">
						<?php the_content(); ?>
					</div>
				</article>
				<?php if (!is_preview()) : ?>
					<div class="edit-post"><?php edit_post_link(); ?></div>
				<?php endif; ?>
			</div>
		<?php endwhile; ?>
	<?php endif; ?>
<?php
	wp_reset_postdata();
}

function get_cat_id_from_slug($slug) {
	$category_object = get_category_by_slug($slug);
	return $category_object->term_id;
}