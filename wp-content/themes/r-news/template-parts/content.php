<?php
/**
 * Template part for displaying posts
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/
 *
 * @package r-news
 */

$categories = get_the_category();
$cat_id = $categories[0]->cat_ID;
$ancestors = get_category_parents($cat_id, true,"");



//read counter
$count = get_post_meta( $post->ID, 'readcounter', true );
if ($count =='') {
    $count = 1;  // if the meta value isn't set, use 1 as a default
}else
  $count++;

update_post_meta( $post->ID, 'readcounter', $count );


?>
<article class="single-post">
    		<div class="container">
	
		<div id="post-<?php the_ID(); ?>" class="content-wrapper">
			
			<nav class="breadcrumb is-size-7" aria-label="breadcrumbs">
			  <ul>
			    <li><a href="#">Home</a></li>
			    <li><?php echo $ancestors; ?></li>
			    <li class="is-active"><a href="#" aria-current="page"><?php echo the_title()?></a></li>
			  </ul>
			</nav>


			<div class="categories">
		 	<?php
				
						$category_array = wp_get_post_categories($post->ID);
						$category_list = "";
						foreach ( $category_array as $categories ) {
				$category_list .= sprintf("<a href='%s'>%s</a>, ",get_category_link($categories),get_cat_name( $categories ));					
						}
			    
				echo $category_list;
			?>
			</div>

			<h1 class="title is-1"><?php the_title()?></h1>
			<div class="meta columns is-mobile is-gapless">
			  
			<div class="column has-text-left">
			    <span class="post-date">
			       
			<?php echo do_shortcode('[Sassy_Social_Share style="background-color:#FFF;"]') ?>		
			<!-- Share to
			      <a class="navbar-start navbar-item is-inline-block" href="#"><i class="fa fa-facebook"></i></a>
			      <a class="navbar-start navbar-item is-inline-block" href="#"><i class="fa fa-twitter"></i></a>
			      <a class="navbar-start navbar-item is-inline-block" href="#"><i class="fa fa-instagram"></i></a>
			      <a class="navbar-start navbar-item is-inline-block" href="#"><i class="fa fa-google-plus"></i></a>
			      <a class="navbar-start navbar-item is-inline-block" href="#"><i class="fa fa-youtube-play"></i></a>
			-->			
		    	</span>
			  </div>
			  <div class="column has-text-right">
			    <span class="post-read-time"><?php echo get_post_meta( $post->ID, 'timeforread', true );?> <a class="navbar-end navbar-item is-inline-block" href="#"><i class="fa fa-bookmark-o"></i></a></span>
			  </div>
			</div>
		</div>
	
	<section class="featured-image">
	    <?php $image = wp_get_attachment_image_src( get_post_thumbnail_id( $post->ID ), 'single-post-thumbnail' ); ?>
            <img src="<?php echo $image[0]; ?>">
      	
	</section>
	

        


        <div class="content-wrapper content-text-editor">
		 <?php
		if ( 'post' === get_post_type() ) :
				?>
					<?php
					the_content();
					?>
			<?php endif; 
		?>
 
<hr>

        <div class="tags">
		<?php
		$posttags = get_the_tags();
		if ($posttags) {
		  foreach($posttags as $tag) {
		    echo sprintf("<a href='%s' class='button is-light is-rounded'>%s</a>",get_tag_link($tag->term_id),$tag->name) ; 
		  }
		}
		?>
		
	</div>

        <span class="post-date">
          
	<?php echo do_shortcode('[Sassy_Social_Share style="background-color:#FFF;"]') ?>	
	<!-- Share to 
          <a class="navbar-start navbar-item is-inline-block" href="#"><i class="fa fa-facebook"></i></a>
          <a class="navbar-start navbar-item is-inline-block" href="#"><i class="fa fa-twitter"></i></a>
          <a class="navbar-start navbar-item is-inline-block" href="#"><i class="fa fa-instagram"></i></a>
          <a class="navbar-start navbar-item is-inline-block" href="#"><i class="fa fa-google-plus"></i></a>
          <a class="navbar-start navbar-item is-inline-block" href="#"><i class="fa fa-youtube-play"></i></a>
	-->
        </span>
        <hr>
        <br>

        <div class="title is-4">Penulis</div>

        <section class="media">

          <figure class="media-left">
            <p class="image is-64x64">
              <?php  echo get_avatar( get_the_author_meta( 'ID' ), 64 );?>
            </p>
          </figure>
          <div class="media-content">
            <div class="content">
              <p>
                <strong><?php echo sprintf("%s %s",get_the_author_meta("first_name"),get_the_author_meta("last_name"));?></strong>
                <br>
                <?php echo sprintf("%s",nl2br(get_the_author_meta('description')));?> 
              </p>
            </div>
          </div>
          <div class="media-right">
            <a class="navbar-start navbar-item is-inline-block" href="#"><i class="fa fa-facebook"></i></a>
            <a class="navbar-start navbar-item is-inline-block" href="#"><i class="fa fa-twitter"></i></a>
            <a class="navbar-start navbar-item is-inline-block" href="#"><i class="fa fa-instagram"></i></a>
            <a class="navbar-start navbar-item is-inline-block" href="#"><i class="fa fa-google-plus"></i></a>
            <a class="navbar-start navbar-item is-inline-block" href="#"><i class="fa fa-youtube-play"></i></a>
          </div>
        </section>

        <hr>
        <br>
	<?php
	//if ( comments_open() || get_comments_number() ) :
		echo do_shortcode('[Fancy_Facebook_Comments style="background-color:#FFF;"]');
	//endif;

	?>

 </div>

	</article>
  </div>

 
<?php

			// If comments are open or we have at least one comment, load up the comment template.
			if ( comments_open() || get_comments_number() ) :
				//comments_template();
			endif;


?>






	<?php get_template_part( 'template-parts/single/column', 'center' ); ?>
</div>


 
