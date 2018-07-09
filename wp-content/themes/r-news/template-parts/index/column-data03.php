<?php

	global $post;
	if(is_array($related_promo_id) && isset($related_promo_id[1]))
		$args 		= array( 'numberposts' => 3, 'offset'=> 5);
	else
		$args 		= array( 'numberposts' => 4, 'offset'=> 5);
	$myposts 	= get_posts( $args );
	$number 	= 1;
	$c 		= 1;


  
 ?>



	
	<div class="tile is-ancestor">



<?php
	//related promo
	if(is_array($related_promo_id) && isset($related_promo_id[1])){
		$the_related_promo_id = $related_promo_id[1];
		$related_promo  = get_post( $the_related_promo_id  );  
		$related_promo_image = wp_get_attachment_image_src( get_post_thumbnail_id( $the_related_promo_id), 'single-post-thumbnail' ); 
		$related_promo_URL = get_post_meta( $the_related_promo_id, 'relatedpromourl', true );				 

?>
	<div class="tile is-parent">
		<a href="<?php echo $related_promo_URL?>" title="<?php echo $related_promo_URL?>" target="_blank">
		<article class="tile is-child box post-card image-related-promo" 
			style="background-image: url('<?php echo $related_promo_image[0]?>')">
		<figure class=""></figure>
		</a>
		</article> 
	</div>

	

<?php }?>


<?php
foreach( $myposts as $post ){
	setup_postdata($post); 
	?>

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
					<a href="<?php echo get_permalink(); ?>">
						<h6 class="title is-6"><?php the_title(); ?></h6>
					</a>

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
						




					</figcaption>
				</figure>

				<footer class="post-meta columns is-mobile">
							<div class="column has-text-left">

								<span class="post-comment">
									<i class="fa fa-eye"></i> 
									<?php echo (get_post_meta( $post->ID, 'readcounter', true ))==''?0:get_post_meta( $post->ID, 'readcounter', true );?>
								</span>

								<span class="post-share">
									<i class="fa fa-comments-o"></i>
									<?php
									$comments = wp_count_comments($post->ID);
									echo $comments->approved;
									?>
								</span>
							</div>
							<div class="column has-text-right">
								<span class="post-share"><i class="fa fa-share-square-o"></i></span>
								<span class="post-bookmark"><i class="fa fa-bookmark-o"></i></span>
							</div>
						</footer>
			</article>
		</div>


		<?php 

	}; //endforeach
	wp_reset_postdata(); 
	?>



	
	
</div>	
