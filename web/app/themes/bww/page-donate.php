<?php while (have_posts()) : the_post(); ?>
	<?php // To add a donation form to the site, uncomment the next line. ?>
<!--	--><?php //get_template_part('templates/menu', 'donate'); ?>
	<?php get_template_part('templates/page', 'header'); ?>
	<?php get_template_part('templates/content', 'page'); ?>
<?php endwhile; ?>