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
<article class="single-post">
    		<div class="container">
		
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
	
	</div> 

<?php
//get_sidebar();
get_footer();
