<?php
$editor = array(
	'media_buttons' => false,
	'textarea_rows' => 8,
	'quicktags'     => false,
	'tinymce'       => array(
		'plugins' => '',
		'theme_advanced_buttons1' => 'bold,italic,|,bullist,numlist,|,undo,redo,|,|,code',
		'theme_advanced_buttons2' => '',
		'theme_advanced_buttons3' => '',
		'theme_advanced_buttons4' => ''
	),
);
wp_editor( isset( $field['value'] ) ? esc_textarea( $field['value'] ) : '', $key, $editor );