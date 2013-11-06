простейший плагин, для редактора TinyMCE 4 в MODx EVO

Установка:

создайте папку tinymce_4 по адресу assets/plugins/
закинуть файлы
создать плагин TinyMCE 4 с кодом (файйл plugin.tinymce.tpl) 


/* @plugin TinyMCE4
 * @events OnRichTextEditorInit , OnRichTextEditorRegister
 * @propiets 
*/


global $modx, $content;

$plugin_base = 'assets/plugins/tinymce_4/';
if (is_file(MODX_BASE_PATH . $plugin_base . 'plugin.tinymce.php')) {
	require MODX_BASE_PATH . $plugin_base . 'plugin.tinymce.php';
}








события OnRichTextEditorInit , OnRichTextEditorRegister
