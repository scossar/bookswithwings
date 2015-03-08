<ul class="secondary-menu">
	<?php // If the user is an admin, give the link to the admin page. ?>
	<?php if (current_user_can('manage_options')) : ?>
		<li>
		  <a href="<?php echo get_site_url(); ?>/wp-admin">Admin Area</a>
		</li>
	<?php endif; ?>
	<?php // If the user is logged in, give the logout link, otherwise give the login link. ?>
	<?php if (is_user_logged_in()) : ?>
		<?php $home_url = get_home_url(); ?>
		<li>
		  <a href="<?php echo wp_logout_url($home_url); ?>">Logout</a>
		</li>
	<?php else : ?>
		<li>
		  <a href="<?php echo \Roots\Sage\Utils\get_permalink_by_slug('login'); ?>">Login/Register</a>
		</li>
	<?php endif; ?>
	<?php // If we're not on the homepage, give the 'Home' link. ?>
	<?php if (!is_front_page()) : ?>
		<li>
			<a href="<?php echo get_home_url(); ?>">Home</a>
		</li>
	<?php endif; ?>
	<li>
		<a href="<?php echo \Roots\Sage\Utils\get_permalink_by_slug('contact'); ?>">
			Contact
		</a>
	</li>

</ul>