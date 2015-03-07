<div class="editable">
	<?php the_content(); ?>
	<?php if ( ! is_preview() ) : ?>
		<div class="edit-post"><?php edit_post_link(); ?></div>
	<?php endif; ?>

</div>
<?php wp_link_pages(['before' => '<nav class="page-nav"><p>' . __('Pages:', 'sage'), 'after' => '</p></nav>']); ?>
