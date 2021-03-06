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
		<?php	 
			//leads magnet
			 $posts_leads_magnet = get_posts( 
					array( 'posts_per_page' 	=> 1,
						'category' 		=> $category->cat_ID ,
						'post_type' 		=> 'leadmagnet',
						'orderby'   		=> 'date',
						'order'            	=> 'DESC') 
					);	
			 $LMId = "";				
			foreach($posts_leads_magnet AS $LM)
				$LMId = $LM->ID;
			 
			//related promo
			$posts_related_promo = get_posts( 
					array( 'posts_per_page' 	=> 2,
						'category' 		=> $category->cat_ID ,
						'post_type' 		=> 'relatedpromo',
						'orderby'   		=> 'date',
						'order'            	=> 'DESC') 
					);	
			 $RPId = array();				
			foreach($posts_related_promo AS $RP)
				$RPId[] = $RP->ID;
 
			 set_query_var( 'category_id', $category->cat_ID );
			 set_query_var( 'lead_magnet_id', $LMId );
			 set_query_var( 'related_promo_id', $RPId );


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




