<?php

namespace Roots\Sage\Titles;

/**
 * Page titles
 */
function title() {
  if (is_home()) {
    if (get_option('page_for_posts', true)) {
      return get_the_title(get_option('page_for_posts', true));
    } else {
      return __('Latest Posts', 'sage');
    }
  } elseif (is_archive()) {
    return get_the_archive_title();
  } elseif (is_search()) {
    return sprintf(__('Search Results for %s', 'sage'), get_search_query());
  } elseif (is_404()) {
    return __('Not Found', 'sage');
  } else {
    return get_the_title();
  }
}

// Filter the archive_title to get rid of 'Archive:' and 'Category: '
function clean_up_archive_title($title) {
  if (is_post_type_archive('chapter')) {
	  $title = 'Books With Wings chapters';
  }
	if (is_archive()) {
		$title = preg_replace('/Category: /', '', $title);
	}

	return $title;
}
add_filter('get_the_archive_title', 'Roots\Sage\Titles\clean_up_archive_title');
