<?php

namespace Roots\Sage;

use Roots\Sage\Config;
use Roots\Sage\Wrapper;
use Roots\Sage\Utils;

?>

<?php get_template_part('templates/head'); ?>
  <body <?php body_class(); ?>>
    <!--[if lt IE 9]>
      <div class="alert alert-warning">
	      It seems that you are accessing this page with an older web browser.
	      We are working to create a version of this site that will look good for you.
	      Thank you for your patience.
      </div>
    <![endif]-->
    <?php
      do_action('get_header');
    get_template_part('templates/header');
    if (is_page(array('volunteer', 'get-involved', 'register'))) {
	    get_template_part('templates/volunteer-menu');
    }
    ?>
    <div class="wrap container" role="document">
      <div class="content row">
        <main class="main" role="main">
          <?php include Wrapper\template_path(); ?>
        </main><!-- /.main -->
        <?php if (Config\display_sidebar()) : ?>
          <aside class="sidebar" role="complementary">
            <?php include Wrapper\sidebar_path(); ?>
          </aside><!-- /.sidebar -->
        <?php endif; ?>
      </div><!-- /.content -->
    </div><!-- /.wrap -->
    <?php
      get_template_part('templates/footer');
      wp_footer();
    ?>
  </body>
</html>
