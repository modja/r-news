<?php
/**
 * Template part for displaying results in search pages
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/
 *
 * @package r-news
 */
?>


	<div id="post-<?php the_ID(); ?>" class="content-wrapper">
		<!---
		<div class="tile is-ancestor" >
		   
		   <div class="tile is-parent">
		      <article class="tile is-child box post-card">
			 <figure>
			    <figcaption>
			       
		-->
		
		<div class="categories">
			 <?php
				$category_array = wp_get_post_categories(get_the_ID());
				$category_list = "";
				foreach ( $category_array as $categories ) {
				$category_list .= sprintf("<a href='%s'>%s</a> ",get_category_link($categories),get_cat_name( $categories ));
				}
            			echo $category_list;
			?>			    	
	       </div>

		<?php the_title( sprintf( '<h6 class="title is-6"><a href="%s" rel="bookmark">', esc_url( get_permalink() ) ), '</a></h6>' ); ?>
			    
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
				  <span class="post-read-time"></div>
			       </div>
			       <div class="blurb">
				 <?php the_excerpt(); ?>
			       </div>
			       <div class="post-meta columns is-mobile">
				  <div class="column has-text-left">
				       <span class="post-comment">
					<i class="fa fa-eye"></i> 
		<?php echo (get_post_meta( get_the_ID(), 'readcounter', true ))==''?0:get_post_meta( get_the_ID(), 'readcounter', true );?>
					</span>

					      <span class="post-share">
						<i class="fa fa-comments-o"></i>
						<?php
						$comments = wp_count_comments(get_the_ID());
						echo $comments->approved;
						?>
					</span>
				  </div>
				<!--
				  <div class="column has-text-right">
				     <span class="post-share"><i class="fa fa-share-square-o"></i></span>
				     <span class="post-bookmark"><i class="fa fa-bookmark-o"></i></span>
				  </div>
				-->
			       </div>
			   
	</div>










