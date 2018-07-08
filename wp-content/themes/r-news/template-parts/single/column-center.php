<?php
/**
 * Template part for displaying posts
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/
 *
 * @package r-news
 */

global $post,$cat;

$exclude_id = $post->ID;
?>



<!-- RELATED NEWS -->
<section class="related-news">

	<div class="container">
		<div class="title is-4">Related News</div>

		<div class="column">
			<div class="tile is-ancestor">
				<?php

				$args = array( 'numberposts' => 4, 'offset'=> 0, 'exclude'      => array($exclude_id) );
				$myposts = get_posts( $args );
				$number = 1;
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

									<a href="<?php echo esc_url( get_permalink() ) ?>"><h6 class="title is-6"><?php the_title() ?></h6></a>
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
					}
					wp_reset_postdata(); 
					?>
				</div>


			</div>


		</div>
	</section>

	<!-- /END RELATED NEWS -->
