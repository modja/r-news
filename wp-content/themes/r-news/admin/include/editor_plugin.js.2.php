<?php 
header( 'Content-Type: text/javascript' );

?>
(function()
{

    tinymce.PluginManager.add( 'modal_button', function( editor, url )
    {
	 
        editor.addButton('modal_button', {
            	text: 'Modal',
		icon: '',
		classes: 'ampforwp-copy-content-button ', 
		tooltip: 'Set your text into popup-ing modal', 
		onclick: function() {
		     var selection = editor.selection.getContent();
			if(selection)
				editor.insertContent("[modal]"+selection+"[/modal]");
		} 
            
        });

    });
    
    
   
})();
