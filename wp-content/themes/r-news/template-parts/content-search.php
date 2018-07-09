<?php
/**
 * Template part for displaying results in search pages
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/
 *
 * @package r-news
 */
?>



<<<<<<< HEAD
	<article class="media columns">
            <div class="media-content column is-two-third">
              <div class="content content-text-editor">
                <div class="post-categories">
                  <span>
 		  <?php
				$category_array = wp_get_post_categories(get_the_ID());
				$category_list = "";
				foreach ( $category_array as $categories ) {
				$category_list .= sprintf("<a href='%s'>%s</a> ",get_category_link($categories),get_cat_name( $categories ));
				}
            			echo $category_list;
			?>
			</span>
                </div>
	           
                <h4 class="title"><a href="<?php echo get_permalink()?>"><?php the_title() ?></a></h4>

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
          
=======
<article class="media columns">
  <div class="media-content column is-two-third">
    <div class="content content-text-editor">
      <div class="post-categories">
        <span>
         <?php
         $category_array = wp_get_post_categories(get_the_ID());
         $category_list = "";
         foreach ( $category_array as $categories ) {
          $category_list .= sprintf("<a href='%s'>%s</a> ",get_category_link($categories),get_cat_name( $categories ));
        }
        echo $category_list;
        ?>
      </span>
    </div>
    
    <h4 class="title"><a href="<?php echo esc_url( get_permalink() ) ?>"> <?php the_title() ?></a></h4>

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

>>>>>>> 00d0c4db66692770bd097ba1df805c6d8209106f













