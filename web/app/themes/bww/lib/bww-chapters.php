<?php
namespace Testeleven\BWW\Chapters;

/**
 * Register the 'chapter' custom post type
 */
function register_chapter() {
	$labels = array(
		'name'          => __( 'Chapters', 'sage' ),
		'singular_name' => __( 'Chapter', 'sage' ),
		'add_new'       => 'Add New Chapter',
		'add_new_item'  => 'Add New Chapter',
		'edit_item'     => 'Edit Chapter',
	);
	$args   = array(
		'labels'      => $labels,
		'public'      => true,
		'has_archive' => true,
		'supports'    => array( 'title', 'revisions' ),
	);
	register_post_type( 'chapter', $args );
}

add_action( 'init', 'Testeleven\BWW\Chapters\register_chapter' );

/**
 * Change the editor 'Enter title here' text to 'Enter chapter name'
 */
function custom_chapter_title( $input ) {
	global $post_type;

	if ( is_admin() && 'Enter title here' == $input && 'chapter' == $post_type ) {
		return 'Enter chapter name here';
	}

	return $input;
}

add_filter( 'gettext', 'Testeleven\BWW\Chapters\custom_chapter_title' );

/**
 * Display the chapter archives as a list of links.
 */
function display_chapters() {
	$args  = array(
		'post_type' => 'chapter',
	);
	$query = new \WP_Query( $args );
	?>
	<?php if ( $query->have_posts() ) : ?>
		<ul>
			<?php while ( $query->have_posts() ) : $query->the_post(); ?>
				<li>
					<a href="<?php the_permalink(); ?>"><?php the_title(); ?></a>
				</li>
			<?php endwhile; ?>
		</ul>
	<?php endif; ?>
	<?php
	wp_reset_postdata();
}

/**
 * Display a single chapter
 */
function display_single_chapter() {
	?>
	<?php while ( have_posts() ) : the_post(); ?>
		<div class="editable">
			<header>
				<h1><?php the_title(); ?></h1>
			</header>

			<?php if ( $description = get_field( 'chapter_description' ) ) : ?>
				<div class="chapter-description">
					<?php echo $description; ?>
				</div>
			<?php endif; ?>

			<?php
			$city     = get_field( 'chapter_city' );
			$province = get_field( 'chapter_province' );
			$country  = get_field( 'chapter_country' );
			$address  = get_field( 'chapter_address' );
			?>
			<?php if ( $city || $province || $country || $address ) : ?>
				<div class="chapter-location">
					<h2>Location</h2>
					<?php if ( $address ) : ?>
						<p class="chapter-address"><?php echo $address; ?></p>
					<?php endif; ?>
					<?php // We want a comma after $city if it is followed by $country or $Province. ?>
					<?php if ( ( $city && $province ) || ( $city && $country ) ) : ?>
						<p><?php echo "$city, $province $country"; ?></p>
					<?php else : ?>
						<p><?php echo "$city $province $country" ?></p>
					<?php endif; ?>
				</div>
			<?php endif; ?>
			<?php if ( $email = get_field( 'chapter_email' ) ) : ?>
				<div class="email">
					<h2>Email</h2>

					<p><?php echo $email; ?></p>
				</div>
			<?php endif; ?>

			<?php if ( $telephone = get_field( 'chapter_telephone' ) ) : ?>
				<?php
				// Clean the number
				$clean_number = (int) preg_replace( '/\D/', '', $telephone );
				?>
				<div class="telephone">
					<h2>Telephone</h2>
					<a
						href="tel:<?php echo $clean_number; ?>"><?php echo $telephone; ?></a>
				</div>
			<?php endif; ?>

			<?php if ( $website = get_field( 'chapter_website' ) ) : ?>
				<div class="website">
					<h2>Website</h2>

					<p><a href="<?php echo $website; ?>"><?php echo $website; ?></a></p>
				</div>
			<?php endif; ?>
			<?php if ( ! is_preview() ) : ?>
				<div class="edit-post"><?php edit_post_link(); ?></div>
			<?php endif; ?>
		</div>
	<?php endwhile; ?>
<?php
	wp_reset_postdata();
}

/**
 * Display a contact form for the chapter if it has one.
 */
function display_chapter_contact_form() {
	if ($contact_form = get_field('chapter_contact_id')) {
		echo '<h2>Contact ' . get_the_title() . '</h2>';
		gravity_form( $contact_form, false, false, false, '', false );
	}
}

