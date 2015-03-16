<?php get_template_part('templates/page', 'header'); ?>

<?php if (!have_posts()) : ?>
  <div class="alert alert-warning">
<!--    --><?php //_e('Sorry, no results were found.', 'sage'); ?>
	  <?php _e('Sorry, there are not yet any posts in this category. Books With Wings
	            is run entirely by volunteers. If you would like to help out, please
	            get in contact with us through this site.', 'sage'); ?>
  </div>
<?php endif; ?>

<?php while (have_posts()) : the_post(); ?>
  <?php get_template_part('templates/content', get_post_type() != 'post' ? get_post_type() : get_post_format()); ?>
<?php endwhile; ?>

<?php the_posts_navigation(); ?>
