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
   
     <?php

		$categories = get_categories();
		foreach($categories AS $category){
	?>			
 	<section class="kabar-bisnis-terbaru">
	     <div class="column">
	      <h4 class="title is-4 is-inline-block"><?php echo $category->name?></h4> 
		<h6 class="subtitle is-6 is-inline-block">Perkembangan bisnis saat ini</h6>
	     </div>
		 
	 <div class="column">     
	<?php	 set_query_var( 'category_id', $category->cat_ID );
		 get_template_part( 'template-parts/index/column', 'data01' );
		 get_template_part( 'template-parts/index/column', 'data02' );
		 get_template_part( 'template-parts/index/column', 'data03' ); 
	?>
      	</div>
    </section>

<?php
		}
?>



 
  </div>
  <!-- /END KABAR BISNIS TERBARU -->




