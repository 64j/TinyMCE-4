//<?php

/* @plugin TinyMCE4
 * @events OnRichTextEditorInit , OnRichTextEditorRegister
 * @propiets 
*/


global $modx, $content;

$plugin_base = 'assets/plugins/tinymce_4/';
if (is_file(MODX_BASE_PATH . $plugin_base . 'plugin.tinymce.php')) {
	require MODX_BASE_PATH . $plugin_base . 'plugin.tinymce.php';
}
