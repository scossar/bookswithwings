<?php

function testeleven_customize_donation_form_fields($fields) {
	$fields['donation']['donation_amount']['label'] = 'Donation amount';
	$fields['donation']['donation_message']['required'] = false;
	$fields['donation']['donation_message']['label'] = 'You may include a message';
	$fields['donation']['recurring_donation']['label'] = 'You may choose to make a recurring donation';
	$fields['donation']['anonymous_donation']['label'] = 'You may choose to make an anonymous donation';

	return $fields;
}
add_filter('submit_donation_form_fields', 'testeleven_customize_donation_form_fields');