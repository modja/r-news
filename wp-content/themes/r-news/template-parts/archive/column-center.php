<?php
/**
 * Template part for displaying posts
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/
 *
 * @package r-news
 */

?>
<!-- KABAR BISNIS TERBARU -->
  <div class="container is-fullhd">
    <section class="kabar-bisnis-terbaru">

     <div class="column">
      <h4 class="title is-4 is-inline-block">Kabar Bisnis Terbaru</h4> 
	<h6 class="subtitle is-6 is-inline-block">Perkembangan bisnis saat ini</h6>
     </div>

 

      <div class="column">

     
 	<?php
		global $post,$cat;
		$args = array( 'numberposts' => 8, 'offset'=> 0 , 'category' => $cat);
		$myposts = get_posts( $args );
		$number = 1;
		foreach( $myposts as $post ){
		setup_postdata($post); 
	?>
	
	<?php 
	if(($number%3) == 1){ 
	?>
	<div class="tile is-ancestor">
	<?php }?>
	 
          <div class="tile is-parent">
            <article class="tile is-child box post-card">
              <figure>
               <?php $image = wp_get_attachment_image_src( get_post_thumbnail_id( $post->ID ), 'single-post-thumbnail' ); ?>
           	 <img src="<?php echo $image[0]; ?>">

                <figcaption>
                  <div class="post-categories">
                     <?php
			$category_array = wp_get_post_categories($post->ID);
			$category_list = "";
			foreach ( $category_array as $categories ) {
			$category_list .= sprintf("<a href='%s'>%s</a> ",get_category_link($categories),get_cat_name( $categories ));
			}
            		echo $category_list;
			?>
                  </div>
                  <a href="#"><h6 class="title is-6"><?php the_title(); ?></h6></a>
                  <div class="post-meta columns is-mobile is-gapless">
                    <div class="column has-text-left">
                      <span class="post-date">
			<?php printf( _x( '%s ago', 
                                                        '%s = human-readable time difference', 
                                                        'your-text-domain' ), 
					human_time_diff( get_the_time( 'U' ), current_time( 'timestamp' ) ) ); ?>
			</span>
                    </div>
                    <div class="column has-text-right">
			<?php $timeforread = get_post_meta( $post->ID, 'timeforread', true ); ?>
                      <span class="post-read-time"><?=$timeforread?></span>
                    </div>
                  </div>
                  <div class="blurb">
                    <p><?php the_content("read more.."); ?></p>
                  </div>
                  <div class="post-meta columns is-mobile">
                    <div class="column has-text-left">
                      <span class="post-comment"><i class="fa fa-eye"></i> 2081</span>
                      <span class="post-share"><i class="fa fa-comments-o"></i></span>
                    </div>
                    <div class="column has-text-right">
                      <span class="post-share"><i class="fa fa-share-square-o"></i></span>
                      <span class="post-bookmark"><i class="fa fa-bookmark-o"></i></span>
                    </div>
                  </div>
                </figcaption>
              </figure>
            </article>
          </div>

	<?php
	if(($number%3) == 0){
	?>
	
	<!-- Widget : leads Magnet start here -->
	 <div class="tile is-parent">
          <article class="tile is-child box post-card image-related-promo" style="background-image: url('http://fpoimg.com/400x600?text=2:3&bg_color=85c0db&text_color=ffffff')">
              <figure class="">
              </figure>
            </article>
          </div>
	<!-- Widget : leads Magnet end here -->
	
		</div>
	<?php };
	//endforeach
	$number++;
	
	
	}
	wp_reset_postdata(); 
	?>


	</div>


 
    </section>
  </div>
  <!-- /END KABAR BISNIS TERBARU -->
