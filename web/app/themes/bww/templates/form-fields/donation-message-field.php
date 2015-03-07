<?php
//$editor = array(
//	'media_buttons' => false,
//	'textarea_rows' => 8,
//	'quicktags'     => false,
//	'tinymce'       => array(
//		'plugins' => '',
//		'theme_advanced_buttons1' => 'bold,italic,|,bullist,numlist,|,undo,redo,|,|,code',
//		'theme_advanced_buttons2' => '',
//		'theme_advanced_buttons3' => '',
//		'theme_advanced_buttons4' => ''
//	),
//);
//wp_editor( isset( $field['value'] ) ? esc_textarea( $field['value'] ) : '', $key, $editor );
?>
<textarea rows="6" class="form-control" name="<?php echo esc_attr( $key ); ?>" id="<?php echo esc_attr( $key ); ?>" placeholder="<?php echo esc_attr( $field['placeholder'] ); ?>" value="<?php echo isset( $field['value'] ) ? esc_attr( $field['value'] ) : ''; ?>" maxlength="<?php echo ! empty( $field['maxlength'] ) ? $field['maxlength'] : ''; ?>"></textarea>
<?php if ( ! empty( $field['description'] ) ) : ?><small class="description"><?php echo $field['description']; ?></small><?php endif; ?>