<div class="bww-chapter">
	<header>
		<h2>
			<a href="<?php the_permalink(); ?>"><?php the_title(); ?></a>
		</h2>
	</header>
	<?php if ($description = get_field('chapter_description')) : ?>
		<div class="chapter-description">
			<?php echo $description; ?>
		</div>
		<div class="read-more">
			<a href="<?php the_permalink(); ?>">more details...</a>
		</div>
	<?php endif; ?>
</div>
