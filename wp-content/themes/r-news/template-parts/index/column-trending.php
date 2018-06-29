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
 <div class="container is-fullhd">
	  <section class="trending-news columns">	 
	      <div class="column">      
		  <span class="trending-news-label">Trending News : </span>          
			<?php st_the_tags(); ?>      
	      </div>	 
	  </section>
  </div>
  <!-- /END TRENDING NEWS -->

