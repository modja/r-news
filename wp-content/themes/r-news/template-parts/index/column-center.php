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
		$category_link = get_category_link( $category->cat_ID ); 
	
	?>			
 	<section class="kabar-bisnis-terbaru">
	    
 	<div class="columns">
	     <div class="column">
	      <h4 class="title is-section-title is-4 is-inline-block"><?php echo $category->name?></h4> 
			<h6 class="subtitle is-section-subtitle is-6 is-inline-block">Perkembangan bisnis saat ini</h6>
	     </div>
	     <div class="column is-one-quarter is-hidden-mobile has-text-right">
		  <a class="button is-rounded is-medium" href="<?php echo $category_link?>">Lihat Semua</a>
	      </div>
	</div>

			 
	 <div class="columns">     
	     <div class="column">
		<?php	 set_query_var( 'category_id', $category->cat_ID );
			 get_template_part( 'template-parts/index/column', 'data01' );
			 get_template_part( 'template-parts/index/column', 'data02' );
			 get_template_part( 'template-parts/index/column', 'data03' ); 
		?>
		</div>      	
	</div>
    </section>

<?php
		}
?>



 
  </div>
  <!-- /END KABAR BISNIS TERBARU -->




