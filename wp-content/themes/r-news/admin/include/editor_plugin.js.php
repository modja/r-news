<?php 
require_once(sprintf("%s/wp-load.php",dirname(dirname(dirname(dirname(dirname(dirname(__FILE__))))))));
$the_posts = get_posts(array('post_type' => 'leadmagnet'));

//if ( ! defined( 'ABSPATH' ) ) 
//	exit;
header( 'Content-Type: text/javascript' );

?>
(function()
{

    tinymce.PluginManager.add( 'lead_magnet_button', function( editor, url )
    {
	

	var buttons = [];
	
	<?php
	foreach($the_posts AS $post){
	?>
	
	buttons.push({  text: '<?php echo $post->post_title?>',
                        onclick:function() {
                                        editor.insertContent('[<?php echo sprintf("leadmagnet id=%d",$post->ID);?>]');
                                    }
                    });

 

	<?php
	}

	
	
	?>
	
        editor.addButton('lead_magnet_button', {
            type: 'menubutton',
            text: 'Lead Magnet',
            icon: false,
            menu: buttons
            
        });

    });
    
    
   
})();
