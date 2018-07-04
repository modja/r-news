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
	
	<?php get_template_part( 'template-parts/index/column', 'data01' ); ?>
	<?php get_template_part( 'template-parts/index/column', 'data02' ); ?>
	<?php get_template_part( 'template-parts/index/column', 'data03' ); ?>

      </div>


 
    </section>
  </div>
  <!-- /END KABAR BISNIS TERBARU -->




