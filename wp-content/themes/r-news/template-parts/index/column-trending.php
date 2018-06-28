<?php
/**
 * Template part for displaying posts
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/
 *
 * @package r-news
 */

?>
 
   <!-- TRENDING NEWS -->
  <section class="trending-news">
    <div class="container">
      <div class="columns">
        <div class="column">
          <span class="trending-news-label">Trending News :</span> 
          <?php
          	global $post;
		$args = array( 'numberposts' => 5, 'offset'=> 0);
		$myposts = get_posts( $args );
		foreach( $myposts as $post ) :  
		setup_postdata($post); ?>
         
         <a class="button is-rounded is-dark"  href="<?php the_permalink(); ?>"><?php the_title(); ?></a>
         <?php endforeach; wp_reset_postdata(); ?>

        
        </div>
      </div>
    </div>
  </section>
  <!-- /END TRENDING NEWS -->

