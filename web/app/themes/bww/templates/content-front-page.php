<?php namespace Testeleven\BWW; ?>
<?php use Testeleven\BWW\CustomLoops; ?>
<?php use Testeleven\BWW\Chapters; ?>
<div class="attention">
	<div class="text">
		<?php testeleven_post_in_position( 'site-description', 'positioned_full' ); ?>
	</div>
	<div class="img">
		<?php testeleven_post_in_position( 'home-featured-img', 'positioned_image' ); ?>
	</div>
</div>
<div class="front-page-post">
  <?php CustomLoops\display_single_post_by_category('life-in-afghanistan'); ?>
</div>
<aside class="sidebar" role="complementary">
	<?php testeleven_post_in_position('our-chapters', 'positioned_title', 3); ?>
	<?php testeleven_post_in_position('how-bww-is-structured', 'positioned_full', 4); ?>
	<?php Chapters\display_chapters(); ?>
</aside>
