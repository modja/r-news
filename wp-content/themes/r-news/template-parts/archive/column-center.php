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
	           
                <h4 class="title"><a href="<?php echo esc_url( get_permalink() ) ?>"> <?php the_title() ?></a></h4>
                <!-- <h4 class="title"><?php the_title() ?></h4> -->

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


	<?php
 	//start query here...
$results = $wpdb->get_results( "SELECT wp.id,wp.post_type,wp.post_title,wpm.meta_value,
(SELECT meta_value FROM wp_postmeta AS wpm2 WHERE wpm2.post_id = wp.id AND wpm2.meta_key = 'timeforread'  LIMIT 1) AS readtime,
wp.post_modified_gmt 
FROM `wp_posts` AS wp
LEFT JOIN wp_postmeta AS wpm ON (wp.ID = wpm.post_id)
WHERE wpm.meta_key = 'readcounter' AND wp.post_type = 'post'  AND wp.post_status = 'publish'
ORDER BY CAST(`wpm`.`meta_value` AS UNSIGNED INTEGER) DESC LIMIT 5", OBJECT );
	 $i=1;
	 foreach($results AS $row){

	?>
	    <article class="media">
              <div class="media-left">
                  <div class="order-number">0<?php echo $i?></div>
              </div>
              <div class="media-content">
                <div class="content content-text-editor">
                  <div class="post-categories">
<?php
		$category_array = wp_get_post_categories($row->id);
		$category_list = "";
		foreach ( $category_array as $categories ) {
		$category_list .= sprintf("<span><a href='%s'>%s</a></span> ",get_category_link($categories),get_cat_name( $categories ));
		}
		echo $category_list;
		?>                    
		
		</div>
                  <h4 class="title"><a href="<?php echo esc_url( get_permalink($row->id) ); ?>"><?php echo $row->post_title ?></a></h4>
                  <div class="post-meta columns is-mobile is-gapless">
                    <div class="column has-text-left">
                      <span class="post-date">
			<?php printf( _x( '%s ago', 
				  '%s = human-readable time difference', 
				  'your-text-domain' ),
				  human_time_diff( get_the_time( 'U',$row->id ), current_time( 'timestamp' ) ) ); ?>
			</span>
                    </div>
                    <div class="column has-text-right">
                      <span class="post-read-time"><i class="fa fa-clock-o""></i> <?php echo $row->readtime ?></span>
                    </div>
                  </div>
                </div>
              </div>
            </article>
    	<?php 
	$i++;	
	} ?>


          </div>
        </div>

      </div>
    </div>
  </section>
  <!-- /END POST LIST -->










































