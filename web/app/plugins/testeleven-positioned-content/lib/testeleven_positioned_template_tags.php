<?php

// Template tags for displaying positioned posts and positioned post previews.

// 'private' functions for displaying posts and post previews

function testeleven_display_positioned_full($position, $heading_level = 2, $meta_data = false) {
	// Query for the post at this position
	$query = testeleven_get_posts_at_position($position, 'positioned_full');
	?>
	<?php if ($query->have_posts()) : ?>
		<?php while ($query->have_posts()) : $query->the_post(); ?>
			<div class="editable">
				<article <?php post_class(); ?> id="<?php echo $position; ?>">
					<?php if (has_post_thumbnail()) : ?>
						<div class="featured-image">
							<?php the_post_thumbnail(); ?>
						</div>
				  <?php endif; ?>
					<header>
						<?php $title = get_the_title(); ?>
						<?php testeleven_wrap_with_heading_level($title, $heading_level); ?>
						<?php if ($meta_data) : ?>
							<?php get_template_part('templates/entry-meta'); ?>
						<?php endif; ?>
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

function testeleven_preview_positioned_full($position, $heading_level = 2, $meta_data = false) {
	?>
	<?php while (have_posts()) : the_post(); ?>
		<article <?php post_class(); ?> id="<?php echo $position; ?>">
			<?php if (has_post_thumbnail()) : ?>
				<div class="featured_image">
					<?php the_post_thumbnail(); ?>
				</div>
			<?php endif; ?>
			<header>
				<?php $title = get_the_title(); ?>
				<?php testeleven_wrap_with_heading_level($title, $heading_level); ?>
				<?php if ($meta_data) : ?>
					<?php get_template_part('templates/entry-meta'); ?>
			  <?php endif; ?>
			</header>
			<div class="entry-content">
				<?php the_content(); ?>
			</div>
		</article>
	<?php endwhile; ?>
<?php
	wp_reset_postdata();
}

function testeleven_display_positioned_content($position, $meta_data = false) {
	// Query for the post at this position
	$query = testeleven_get_posts_at_position($position, 'positioned_content');
	?>
	<?php if ($query->have_posts()) : ?>
		<?php while ($query->have_posts()) : $query->the_post(); ?>
			<div class="editable">
				<article <?php post_class(); ?> id="<?php echo $position; ?>">
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

function testeleven_preview_positioned_content($position) {
	?>
	<?php while (have_posts()) : the_post(); ?>
		<div class="editable">
			<article <?php post_class(); ?> id="<?php echo $position; ?>">
				<div class="entry-content">
					<?php the_content(); ?>
				</div>
			</article>
			<?php if (!is_preview()) : ?>
				<div class="edit-post"><?php edit_post_link(); ?></div>
			<?php endif; ?>
		</div>
	<?php endwhile; ?>
	<?php
	wp_reset_postdata();
}

function testeleven_display_positioned_title($position, $heading_level = 2) {
	// Query for posts at this position.
	$query = testeleven_get_posts_at_position($position, 'positioned_title');
	?>
	<?php if ($query->have_posts()) : ?>
		<?php while ($query->have_posts()) : $query->the_post(); ?>
			<div class="editable" id="<?php echo $position; ?>">
				<?php $title = get_the_title(); ?>
				<?php testeleven_wrap_with_heading_level($title, $heading_level); ?>
				<?php if (!is_preview()) : ?>
					<div class="edit-post"><?php edit_post_link(); ?></div>
				<?php endif; ?>
			</div>
		<?php endwhile; ?>
	<?php endif; ?>
	<?php
	wp_reset_postdata();
}

function testeleven_preview_positioned_title($position, $heading_level = 2) {
	?>
	<?php while (have_posts()) : the_post(); ?>
		<div id="<?php echo $position; ?>">
			<?php $title = get_the_title(); ?>
			<?php testeleven_wrap_with_heading_level($title, $heading_level); ?>
		</div>
	<?php endwhile; ?>
<?php
	wp_reset_postdata();
}

function testeleven_display_positioned_image($position) {
	// Query for posts at this position.
	$query = testeleven_get_posts_at_position($position, 'positioned_image');
	?>
	<?php if ($query->have_posts()) : ?>
		<?php while ($query->have_posts()) : $query->the_post(); ?>
			<div class="editable" id="<?php echo $position; ?>">
				<?php $image = get_field('t11_pos_image'); ?>
				<img src="<?php echo $image['url']; ?>" alt="<?php echo $image['alt']; ?>"/>
				<?php if (!is_preview()) : ?>
					<div class="edit-post"><?php edit_post_link(); ?></div>
				<?php endif; ?>
			</div>
		<?php endwhile; ?>
	<?php endif; ?>
	<?php
	wp_reset_postdata();
}

function testeleven_preview_positioned_image($position) {
	?>
	<?php while (have_posts()) : the_post(); ?>
		<div id="<?php echo $position; ?>">
			<?php $image = get_field('t11_pos_image'); ?>
			<img src="<?php echo $image['url']; ?>" alt="<?php echo $image['alt']; ?>"/>
		</div>
	<?php endwhile; ?>
<?php
	wp_reset_postdata();
}

function header_level($level) {
	$format = '<h%s>this is a test</h%s>';
	echo sprintf($format, $level, $level);
}

// Query for posts at a given position
function testeleven_get_posts_at_position($position, $post_type) {
	$args = array(
		'meta_key' => 't11_position',
		'meta_value' => $position,
		'post_type' => $post_type,
	);
	return new WP_Query($args);
}

// Wrap a string in a chosen heading level
function testeleven_wrap_with_heading_level($str, $level = 2) {
	$format = '<h%2$d class="entry-title">%1$s</h%2$d>';
	echo sprintf($format, $str, $level);
}

// 'public' function to display positioned post
function testeleven_post_in_position($position, $post_type, $heading_level = 2, $meta_data = false) {
	global $post;
	if (is_preview()) {
		if (get_post_meta($post->ID, 't11_position', true) == $position) {
			switch ($post_type) {
				case 'positioned_full':
					testeleven_preview_positioned_full($position, $heading_level, $meta_data);
					break;
				case 'positioned_content':
					testeleven_preview_positioned_content($position);
					break;
				case 'positioned_title':
					testeleven_preview_positioned_title($position, $heading_level);
					break;
				case 'positioned_image':
					testeleven_preview_positioned_image($position);
					break;
				default:
					break;
			}
		} else { // We are in a preview, but not previewing this post
			switch ($post_type) {
				case 'positioned_full':
					testeleven_display_positioned_full($position, $heading_level, $meta_data);
					break;
				case 'positioned_content':
					testeleven_display_positioned_content($position, $meta_data);
					break;
				case 'positioned_title':
					testeleven_display_positioned_title($position, $heading_level);
					break;
				case 'postioned_image':
					testeleven_preview_positioned_image($position);
					break;
				default:
					break;
			}
		}

	} else {
		switch ($post_type) {
			case 'positioned_full':
				testeleven_display_positioned_full($position, $heading_level, $meta_data);
				break;
			case 'positioned_content':
				testeleven_display_positioned_content($position);
				break;
			case 'positioned_title':
				testeleven_display_positioned_title($position, $heading_level);
				break;
			case 'positioned_image':
				testeleven_display_positioned_image($position);
				break;
			default:
				break;
		}
	}
}
// Set the correct preview template
add_filter('single_template', 'testeleven_set_preview_template');
function testeleven_set_preview_template($templates) {
	global $post;
	if (is_preview()) {
		$preview_template = get_post_meta($post->ID, 't11_preview', true);
		$templates = locate_template(array($preview_template, $templates));
	}
	return $templates;
}
