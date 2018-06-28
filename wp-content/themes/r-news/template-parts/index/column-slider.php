<?php
/**
 * Template part for displaying posts
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/
 *
 * @package r-news
 */

?>

<!-- POPULAR POST SLIDER -->
  <section class="container is-fluid">
    <div id="film_roll" class="popular-post-slider">
      
      <?php
		global $post;
		$args = array( 'numberposts' => 5, 'offset'=> 0);
		$myposts = get_posts( $args );
		foreach( $myposts as $post ) :  
		setup_postdata($post); ?>
      
      
       <div>
        <figure>
          <img src="http://fpoimg.com/556x291?text=Preview">
          <div class="post-categories">
            <?php
				$category_array = wp_get_post_categories($post->ID);
				$category_list = "";
				foreach ( $category_array as $categories ) {
					$category_list .= sprintf("<a href='%s'>%s</a>",get_category_link($categories),get_cat_name( $categories ));
				}
            ?>
           <?php echo $category_list?>
             
          </div>
          <figcaption>
			  <a href="<?php the_permalink(); ?>"><?php the_title(); ?></a>
		  </figcaption>
          <div class="post-meta columns">
            <div class="column is-one-third">
              <span class="post-date"><?php printf( _x( '%s ago', 
                                                        '%s = human-readable time difference', 
                                                        'your-text-domain' ), human_time_diff( get_the_time( 'U' ), current_time( 'timestamp' ) ) ); ?></span>
            </div>
              
            <div class="column has-text-right">
              <span class="post-comment"><i class="fa fa-comment"></i></span>
              <span class="post-share"><i class="fa fa-share"></i></span>
              <span class="post-bookmark"><i class="fa fa-bookmark-o"></i></span>
            </div>
          </div>
        </figure>
      </div>
	<?php endforeach; wp_reset_postdata(); ?>

     </div>
  </section>
  <!-- / END POPULAR POST SLIDER -->
