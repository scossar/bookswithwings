<footer class="content-info" role="contentinfo">
	<div class="container">
		<div class="row">
			<div class="footer-1">
				<?php testeleven_post_in_position('footer-who', 'positioned_full'); ?>
			</div>
			<div class="footer-2">
				<?php testeleven_post_in_position('footer-where','positioned_full'); ?>
			</div>
			<div class="footer-3">
				<?php dynamic_sidebar('sidebar-footer'); ?>
			</div>
			<div class="testeleven">
				&copy; 2014-<?php echo date("Y"); ?> testeleven web development
			</div>
		</div>
	</div>
	<?php // Scale images (somewhat) correctly for <IE9 ?>
	<!--[if lt IE 9 ]>
	<script>
		var imgs, i, w;
		var imgs = document.getElementsByTagName( 'img' );
		for( i = 0; i < imgs.length; i++ ) {
			w = imgs[i].getAttribute( 'width' );
			if ( 615 < w ) {
				imgs[i].removeAttribute( 'width' );
				imgs[i].removeAttribute( 'height' );
			}
		}
	</script>
	<![endif]-->
</footer>