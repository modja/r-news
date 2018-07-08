<?php
/**
 * Template part for displaying posts
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/
 *
 * @package r-news
 */

global $post,$cat;
#echo $cat;
?>
 <!-- POST LIST -->
  <section class="posts-list">
    <div class="container">
      <div class="columns">

        <div class="column is-two-third">
         <?php

		$args = array( 'numberposts' => 8, 'offset'=> 0 , 'category' => $cat);
		$myposts = get_posts( $args );
		$number = 1;
		foreach( $myposts as $post ){
		setup_postdata($post); 
	?>


	<article class="media columns">
            <div class="media-content column is-two-third">
              <div class="content content-text-editor">
                <div class="post-categories">
                  <span><?php echo get_cat_name($cat);?></span>
                </div>
	           
                <!--<h4 class="title"><a href="<?php echo esc_url( get_permalink() ) ?>"> <?php the_title() ?></a></h4>-->
                <h4 class="title"><?php the_title() ?></h4>

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
                    <span class="post-read-time"><i class="fa fa-clock-o""></i> <?php echo $timeforread?></span>
                  </div>
                </div>
                <div class="blurb>">
 			<p><?php the_content("read more.."); ?></p>
                </div>
              </div>
            </div>
            <div class="media-right column is-one-third">
     		 <?php $image = wp_get_attachment_image_src( get_post_thumbnail_id( $post->ID ), 'single-post-thumbnail' ); ?>
           	 <img src="<?php echo $image[0]; ?>">
            </div>
          </article>
         <?php } 
		wp_reset_postdata(); 
	?>        
	
	</div>

        <div class="popular-r-news column is-one-third">
          <div class="box">
            <div class="title is-4">Popular di R-NEWS</div>
            
	<?php for($i=1;$i<5;$i++){?>
	    <article class="media">
              <div class="media-left">
                  <div class="order-number">0<?php echo $i?></div>
              </div>
              <div class="media-content">
                <div class="content content-text-editor">
                  <div class="post-categories">
                    <span>Entrepeuneurs</span>
                  </div>
                  <h4 class="title">Business Gathering Bersama Ralali.Com “Drive Businesses In E-Commerce</h4>
                  <div class="post-meta columns is-mobile is-gapless">
                    <div class="column has-text-left">
                      <span class="post-date">2 jam lalu</span>
                    </div>
                    <div class="column has-text-right">
                      <span class="post-read-time"><i class="fa fa-clock-o""></i> 4 menit</span>
                    </div>
                  </div>
                </div>
              </div>
            </article>
    	<?php } ?>


          </div>
        </div>

      </div>
    </div>
  </section>
  <!-- /END POST LIST -->










































