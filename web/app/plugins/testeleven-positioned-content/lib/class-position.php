<?php
/*
 * Class Position returns an object that associates a 'position' with a
 * 'preview_position'.
 */
class Position {
	protected $position;
	protected $preview_template;

	function __construct($position, $preview_template) {
		$this->position = $position;
		$this->preview_template = $preview_template;

		// Add filter to locate the correct preview template
//		add_filter('single_template', array($this, 'set_preview_template'));
	}

	public function get_position() {
		return $this->position;
	}

	public function get_preview_template() {
		return $this->preview_template;
	}

//	public function set_preview_template($templates) {
//		if (is_preview()) {
//			$templates = locate_template(array($this->preview_template, $templates));
//		}
//		return $templates;
//	}
}