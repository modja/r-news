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
	  <section class="columns">	 
	      <div class="column">      
		  <span class="trending-news-label">Trending News : </span>          
			<?php st_the_tags(); ?>      
	      </div>
	      <div class="column is-one-quarter is-hidden-mobile has-text-right">
		  	<a class="button is-rounded is-medium">Lihat Semua</a>
	      </div>	 
	  </section>
  </div>
  <!-- /END TRENDING NEWS -->

