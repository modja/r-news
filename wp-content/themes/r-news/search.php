<?php
/**
 * The template for displaying search results pages
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/#search-result
 *
 * @package r-news
 */

get_header();
?>


 <!-- POST LIST -->
  <section class="posts-list">
    <div class="container">
      <div class="columns">

        <div class="column is-two-third">
         
		<?php if ( have_posts() ) : ?>			
		 	<h1 class="title is-4 is-inline-block"><?php
					printf( esc_html__( 'Search Results for: %s', 'r-news' ), '<span>' . get_search_query() . '</span>' );
					?>
			</h1> 
		<?php

			/* Start the Loop */
			while ( have_posts() ) :
				the_post();

				get_template_part( 'template-parts/content', 'search' );

			endwhile;

			the_posts_navigation();

		else :

			get_template_part( 'template-parts/content', 'none' );

		endif;
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
                  <h4 class="title"><a href="#">Business Gathering Bersama Ralali.Com “Drive Businesses In E-Commerce</a></h4>
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

























































  

<?php
//get_sidebar();
get_footer();
