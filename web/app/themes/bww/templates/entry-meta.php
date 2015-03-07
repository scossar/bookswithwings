<time class="updated" datetime="<?= get_the_time('c'); ?>"><?= get_the_date(); ?></time>
<p class="byline author vcard">
	<?php echo __('By', 'sage'); ?> <?php the_author(); ?>
</p>
