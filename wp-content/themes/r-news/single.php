<?php
/**
 * The template for displaying all single posts
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/#single-post
 *
 * @package r-news
 */

get_header();
?>
<!--
Single.php
-->


			<?php
			while ( have_posts() ) :
				the_post();

				get_template_part( 'template-parts/content', get_post_type() );


			endwhile; // End of the loop.
			?>
	 
<?php
//get_sidebar();
get_footer();
