<?php
/**
 * The header for our theme
 *
 * This is the template that displays all of the <head> section and everything up until <div id="content">
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package r-news
 */

?>
<!doctype html>
<html <?php language_attributes(); ?>>
<head>
	<meta charset="<?php bloginfo( 'charset' ); ?>">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="profile" href="https://gmpg.org/xfn/11">
	<?php wp_head(); ?>
        <base href="<?=bloginfo("url");?>">
</head>

<body>
    
    <header class="header-nav">
        <div class="container">
        <nav class="navbar columns is-mobile" role="navigation" aria-label="main navigation">

            <div class="column is-hidden-mobile">
		
	<a class="navbar-start navbar-item is-inline-block" href="<?php echo get_option("FacebookURL") ?>" target="_blank"><i class="fa fa-facebook"></i></a>
        <a class="navbar-start navbar-item is-inline-block" href="<?php echo get_option("TwitterURL") ?>" target="_blank"><i class="fa fa-twitter"></i></a>
        <a class="navbar-start navbar-item is-inline-block" href="<?php echo get_option("InstagramURL") ?>" target="_blank"><i class="fa fa-instagram"></i></a>
        <a class="navbar-start navbar-item is-inline-block" href="<?php echo get_option("GoogleURL") ?>" target="_blank"><i class="fa fa-google-plus"></i></a>
        <a class="navbar-start navbar-item is-inline-block" href="<?php echo get_option("YoutubeURL") ?>" target="_blank"><i class="fa fa-youtube-play"></i></a>
          </div>

            <div class="column has-text-centered">
              <a class="navbar-item is-block logo-r-news" href="#"><span class="r">R</span>-NEWS</a>
            </div>

            <div class="column has-text-right">
	     <a id="mainsearchTrigger" class="navbar-end navbar-item is-inline-block" href="#"><i class="fa fa-search"></i></a>
             <a class="navbar-end navbar-item is-inline-block" href="#"><i class="fa fa-bolt"></i></a>
             <a class="navbar-end navbar-item is-inline-block" href="#"><i class="fa fa-bookmark-o"></i></a>
            </div>

      </nav>

      <?php
        $menu_name = 'menu-1';
        $locations = get_nav_menu_locations();        
        $menu = wp_get_nav_menu_object( $locations[ $menu_name ] );
        $menuitems = wp_get_nav_menu_items( $menu->term_id, array( 'order' => 'DESC' ) );
	
	//var_dump(get_the_category($post->ID));
	?>
            
        <ul id="main-menu">
		 
            <li <?php echo (empty($cat)==1) ? "class='selected'" : "" ?>><a href="">Home</a></li>
            <?php
               foreach( $menuitems as $item ):
		
                    $object_id = $item->object_id;
                    $title = $item->title;
                    $link = $item->url;
			if($object_id == $cat)
			echo sprintf("<li class='selected'><a href=%s>%s</a> </li>\n",$link,$title);	
				else                    	
			echo sprintf("<li><a href=%s>%s</a> </li>\n",$link,$title);
                endforeach;
                ?>
           </ul>
       </div>
    </header>
    
    
     
<?php
	get_search_form();		
?>
