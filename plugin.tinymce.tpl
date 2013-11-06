//<?php

/* @plugin TinyMCE4
 * @events OnRichTextEditorInit , OnRichTextEditorRegister
 * @propiets 
*/

$e = $modx->event;

$plugin_base = 'assets/plugins/tinymce_4/';

if ($e->name === 'OnRichTextEditorRegister') {
	$e->output('TinyMCE 4');
} else {
$prte = (isset($_POST['which_editor']) ? $_POST['which_editor'] : false);
$srte = ($modx->config['which_editor'] ? $modx->config['which_editor'] : false);	

if ($prte === 'TinyMCE 4' || !$prte && $srte == 'TinyMCE 4') {	
$e->output('<!-- TinyMCE 4 -->' . "\n");
$e->output('<script type="text/javascript" src="../' . $plugin_base . '/js/tinymce/tinymce.min.js"></script>' . "\n");
$e->output('<script type="text/javascript">' . "\n");
$e->output('var editor;' . "\n");
$e->output("
tinymce.init({
	mode                             : 'exact',
 elements                         : 'ta',
	language                         : 'ru',
	schema                           : 'html5',
	valid_styles                     : {
		'*' : 'color,font-size,font-family,background-color,font-weight,font-style,text-decoration,float,margin,margin-top,margin-right,margin-bottom,margin-left,display'
		},
	plugins                          : [
			'advlist autolink autosave link image lists charmap print preview hr anchor pagebreak spellchecker',
			'searchreplace wordcount visualblocks visualchars code fullscreen insertdatetime media nonbreaking',
			'save table contextmenu directionality emoticons template textcolor paste fullpage textcolor'
		],
	add_unload_trigger               : false,
	autosave_ask_before_unload       : false,
	toolbar1                         : 'code undo redo | cut copy paste pastetext | searchreplace | print fullscreen | styleselect formatselect fontsizeselect',
	toolbar2                         : 'bold italic underline strikethrough | forecolor backcolor | alignleft aligncenter alignright alignjustify | bullist numlist | outdent indent blockquote | link unlink anchor image media help  | inserttime preview',
	toolbar3                         : 'table | hr removeformat | subscript superscript | charmap emoticons | ltr rtl | spellchecker | visualchars visualblocks nonbreaking template pagebreak restoredraft | insertfile insertimage',
	menubar                          : false,
//		toolbar_items_size               : 'small',
})
");
$e->output('</script>' . "\n");
$e->output('<!-- TinyMCE 4 Plugin -->' . "\n");
}
}
