<article <?php post_class(); ?>>
  <header>
	  <?php // For the moment we will not have the title link to the article - we'll just display it here until we get more posts. ?>
    <h2 class="entry-title"><?php the_title(); ?></h2>
	  <div class="post-metadata">
	    <?php get_template_part('templates/entry-meta'); ?>
	  </div>
  </header>
  <div class="entry-content">
    <?php the_content(); ?>
  </div>
</article>
