<?php use Roots\Sage\Nav; ?>
<nav class="volunteer-menu" role="navigation">
	<?php
	if (has_nav_menu('donation_navigation')) :
		wp_nav_menu(['theme_location' => 'donation_navigation',
		             'walker' => new Nav\SageNavWalker(), 'menu_class' => 'nav nav-pills nav-justified']);
	endif;
	?>
</nav>