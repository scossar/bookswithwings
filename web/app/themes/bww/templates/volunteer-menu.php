<?php use Roots\Sage\Nav; ?>
<div class="volunteer-menu container">
	<div class="row">

		<nav class="sub-navigation" role="navigation">
			<?php
			if (has_nav_menu('volunteer_navigation')) :
				wp_nav_menu([
					'theme_location' => 'volunteer_navigation',
					'walker'         => new Nav\SageNavWalker(),
					'menu_class'     => 'nav nav-tabs nav-justified'
				]);
			endif;
			?>
		</nav>
	</div>
</div>
