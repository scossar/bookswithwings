<?php if ( ! empty( $field['description'] ) ) : ?><small class="checkbox-description"><?php echo $field['description']; ?></small><?php endif; ?>
<input type="checkbox" class="input-checkbox" value="1" name="<?php echo esc_attr( $key ); ?>" id="<?php echo esc_attr( $key ); ?>" <?php checked( $field['value'], 1 ); ?>/>

