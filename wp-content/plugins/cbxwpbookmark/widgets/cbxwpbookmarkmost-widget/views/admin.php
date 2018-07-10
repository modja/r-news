<!-- This file is used to markup the administration form of the widget. -->

<!-- Widget Tittle -->
<p>
	<label for="<?php echo $this->get_field_id('title'); ?>">
		<?php esc_html_e('Title:', "cbxwpbookmark"); ?>
	</label>

	<input class="widefat" id="<?php echo $this->get_field_id('title'); ?>"
		   name="<?php echo $this->get_field_name('title'); ?>" type="text" value="<?php echo $title; ?>"/>
</p>

<!-- Display Limit -->
<p>
	<label for="<?php echo $this->get_field_id('limit'); ?>">
		<?php esc_html_e('Display Limit:', "cbxwpbookmark"); ?>
	</label>

	<input class="widefat" id="<?php echo $this->get_field_id('limit'); ?>"
		   name="<?php echo $this->get_field_name('limit'); ?>" type="text" value="<?php echo $limit; ?>"/>
</p>

<!-------------------------------
 ** Days Dropdown Selection **
------------------------------->

<p>
	<label for="<?php echo $this->get_field_id('daytime'); ?>"> <?php esc_html_e('Select Time Duration :', "cbxwpbookmark"); ?>
		<select class="widefat" id="<?php echo $this->get_field_id('daytime'); ?>"
				name="<?php echo $this->get_field_name('daytime'); ?>">
			<option value="0"><?php esc_html_e('-- All Time --', "cbxwpbookmark"); ?></option>
			<option value="1" <?php echo ($daytime == '1') ? 'selected="selected"' : ''; ?>>
				<?php esc_html_e("1 Day", 'cbxwpbookmark'); ?>
			</option>
			<option value="7" <?php echo ($daytime == "7") ? 'selected="selected"' : ''; ?>>
				<?php esc_html_e("7 Days", 'cbxwpbookmark'); ?>
			</option>
			<option value="30" <?php echo ($daytime == "30") ? 'selected="selected"' : ''; ?>>
				<?php esc_html_e("30 Days", 'cbxwpbookmark'); ?>
			</option>
			<option value="180" <?php echo ($daytime == "180") ? 'selected="selected"' : ''; ?>>
				<?php esc_html_e("6 Months", 'cbxwpbookmark'); ?>
			</option>
			<option value="365" <?php echo ($daytime == "365") ? 'selected="selected"' : ''; ?>>
				<?php esc_html_e("1 Year", 'cbxwpbookmark'); ?>
			</option>
		</select>
	</label>

</p>

<?php
	$object_types = cbxwpbookmark_object_types();
?>

<p>
	<label for="<?php echo $this->get_field_id('type'); ?>"> <?php esc_html_e('Object Type :', "cbxwpbookmark"); ?>

		<select class="widefat" id="<?php echo $this->get_field_id('type'); ?>"
				name="<?php echo $this->get_field_name('type'); ?>">

			<option value="" <?php echo ($type == "") ? 'selected="selected"' : ''; ?>>
				<?php esc_html_e("-- All --", "cbxwpbookmark") ?>
			</option>
			<?php
				if (isset($object_types['builtin']['types'])) {
					echo '<optgroup label="' . __('Built-in Post Types', 'cbxwpbookmark') . '">';
					foreach ($object_types['builtin']['types'] as $key => $name) {
						$selected = ($key == $type) ? ' selected="selected" ' : '';
						echo '<option value="' . $key . '" ' . $selected . ' >' . $name . '</option>';
					}
					echo '</optgroup>';
				}

				if (isset($object_types['custom']['types'])) {
					echo '<optgroup label="' . __('Custom Post Types', 'cbxwpbookmark') . '">';
					foreach ($object_types['custom']['types'] as $key => $name) {
						$selected = ($key == $type) ? ' selected="selected" ' : '';
						echo '<option value="' . $key . '" ' . $selected . ' >' . $name . '</option>';
					}
					echo '</optgroup>';
				}
			?>

		</select>

	</label>

</p>


<!-- Order Selection -->

<p>
	<label for="<?php echo $this->get_field_id('orderby'); ?>"><?php esc_html_e("Order By", "cbxwpbookmark") ?>

		<select class="widefat" id="<?php echo $this->get_field_id('orderby'); ?>"
				name="<?php echo $this->get_field_name('orderby'); ?>">

			<option
				value="object_id" <?php echo ($orderby == "object_id") ? 'selected="selected"' : ''; ?>> <?php esc_html_e("Post ID", "cbxwpbookmark") ?>     </option>
			<option
				value="object_type" <?php echo ($orderby == "object_type") ? 'selected="selected"' : ''; ?>> <?php esc_html_e("Object Type", "cbxwpbookmark") ?> </option>
			<option
				value="object_count" <?php echo ($orderby == "object_count") ? 'selected="selected"' : ''; ?>> <?php esc_html_e("Bookmark Count", "cbxwpbookmark") ?> </option>

		</select>

	</label>

</p>

<!-- Selection of Asending or Desending -->

<p>
	<label for="<?php echo $this->get_field_id('order'); ?>"><?php esc_html_e("Order", "cbxwpbookmark") ?>

		<select class="widefat" id="<?php echo $this->get_field_id('order'); ?>"
				name="<?php echo $this->get_field_name('order'); ?>">
			<option
				value="asc" <?php echo ($order == "asc") ? 'selected="selected"' : ''; ?>> <?php esc_html_e("Asending", "cbxwpbookmark") ?> </option>
			<option
				value="desc" <?php echo ($order == "desc") ? 'selected="selected"' : ''; ?>> <?php esc_html_e("Desending", "cbxwpbookmark") ?> </option>
		</select>
	</label>

</p>

<!-- show count -->
<p>
	<label for="<?php echo $this->get_field_id('show_count'); ?>"><?php esc_html_e("Show Count", "cbxwpbookmark") ?>

		<select class="widefat" id="<?php echo $this->get_field_id('show_count'); ?>"
				name="<?php echo $this->get_field_name('show_count'); ?>">

			<option value="1" <?php echo ($show_count == "1") ? 'selected="selected"' : ''; ?>>
				<?php esc_html_e("Yes", "cbxwpbookmark") ?>
			</option>

			<option value="0" <?php echo ($show_count == "0") ? 'selected="selected"' : ''; ?>>
				<?php esc_html_e("No", "cbxwpbookmark") ?>
			</option>

		</select>

	</label>

</p>

<!-- show count -->
<p>
	<label for="<?php echo $this->get_field_id('show_thumb'); ?>"><?php esc_html_e("Show Thumb", "cbxwpbookmark") ?>
		<select class="widefat" id="<?php echo $this->get_field_id('show_thumb'); ?>"	name="<?php echo $this->get_field_name('show_thumb'); ?>">
			<option value="1" <?php echo ($show_thumb == 1) ? 'selected="selected"' : ''; ?>>
				<?php esc_html_e("Yes", "cbxwpbookmark") ?>
			</option>
			<option value="0" <?php echo ($show_thumb == 0) ? 'selected="selected"' : ''; ?>>
				<?php esc_html_e("No", "cbxwpbookmark") ?>
			</option>

		</select>
	</label>
</p>