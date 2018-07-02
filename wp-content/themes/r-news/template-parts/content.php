<?php
/**
 * Template part for displaying posts
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/
 *
 * @package r-news
 */

$categories = get_the_category();
$cat_id = $categories[0]->cat_ID;
$ancestors = get_category_parents($cat_id, true, ' &raquo; ');

//read counter
$count = get_post_meta( $post->ID, 'readcounter', true );
if ($count =='') {
    $count = 1;  // if the meta value isn't set, use 1 as a default
}else
  $count++;

update_post_meta( $post->ID, 'readcounter', $count );


?>



<div>
	<?php
	echo '<a href="">Home</a> &raquo; ';
	echo $ancestors;
	echo '<span class="breadcrumb-active-cat">'.the_title().'</span>';
	?>
</div>


<article id="post-<?php the_ID(); ?>" >
	<header class="entry-header">
		<h1 class="entry-title"><?php the_title()?></h1>
		<h2><?php echo get_post_meta( $post->ID, 'timeforread', true );?></h2>

		<?php
		/**
		if ( is_singular() ) :
			the_title( '<h1 class="entry-title">', '</h1>' );
		else :
			the_title( '<h2 class="entry-title"><a href="' . esc_url( get_permalink() ) . '" rel="bookmark">', '</a></h2>' );
		endif;
		**/
		

		if ( 'post' === get_post_type() ) :
			?>
			<div class="entry-meta">
				<?php
				the_content();
				?>
			</div><!-- .entry-meta -->
		<?php endif; ?>
	</header><!-- .entry-header -->

	 

	<div class="entry-content">
		<?php
		the_content( sprintf(
			wp_kses(
		
				__( 'Continue reading<span class="screen-reader-text"> "%s"</span>', 'r-news' ),
				array(
					'span' => array(
						'class' => array(),
					),
				)
			),
			get_the_title()
		) );

		wp_link_pages( array(
			'before' => '<div class="page-links">' . esc_html__( 'Pages:', 'r-news' ),
			'after'  => '</div>',
		) );
		?>
	</div><!-- .entry-content -->

</article><!-- #post-<?php the_ID(); ?> -->
