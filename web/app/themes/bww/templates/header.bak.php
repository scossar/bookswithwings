<?php use Roots\Sage\Nav; ?>

<header class="banner navbar navbar-default navbar-static-top" role="banner">
<!--	<div class="preview-info">-->
<!--		<div class="alert alert-info" role="alert">-->
<!--			You are viewing this page in preview mode. If you like what you see, please-->
<!--			go back to the previous tab and save your work. Thanks.-->
<!--		</div>-->
<!--	</div>-->
	<!--  <div class="site-highlight"></div>-->
	<div class="container">
		<div class="row">
			<div class="site-logo">
				<a href="<?php echo esc_url(home_url('/')); ?>">
					<img src="<?php echo get_template_directory_uri(); ?>/assets/images/bww_logo_4_md.png"
					     alt="Books With Wings"/>
				</a>
			</div>
			<div class="header-secondary hidden-xs">
				<nav class="te-secondary-navigation" role="navigation">
					<?php get_template_part('templates/secondary-menu'); ?>
				</nav>
			</div>
			<div class="navbar-header">
				<div class="text-center">
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".navbar-collapse">
						<span class="sr-only">Toggle navigation</span>
						Menu
					</button>
				</div>
			</div>
			<div class="primary-nav-container">
				<nav class="collapse navbar-collapse" role="navigation">
					<?php
					if (has_nav_menu('primary_navigation')) :
					wp_nav_menu(['theme_location' => 'primary_navigation', 'walker' => new Nav\SageNavWalker(), 'menu_class' => 'nav navbar-nav']);
					endif;
					?>
				</nav>
			</div>
		</div><!-- end of row -->
	</div>
</header>
