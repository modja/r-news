<?php
/**
 * The main template file
 *
 * This is the most generic template file in a WordPress theme
 * and one of the two required files for a theme (the other being style.css).
 * It is used to display a page when nothing more specific matches a query.
 * E.g., it puts together the home page when no home.php file exists.
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/
 *
 * @package r-news
 */

get_header();
?>
<article class="single-post">
    <div class="container">
	<div class="content-wrapper">
	   <section class="error-404 not-found">
				<header class="page-header">
					<h1 class="page-title"><?php esc_html_e( 'Oops! That page can&rsquo;t be found.', 'r-news' ); ?></h1>
				</header><!-- .page-header -->

				<div class="page-content">
				<p>
				<?php esc_html_e( 'It looks like nothing was found at this location. Maybe try doing some search?', 'r-news' ); ?>
				</p>
				</div>
	</section>
	</div>
    </div>
</article>
	
<?php
//get_sidebar();
get_footer();
?>











 

