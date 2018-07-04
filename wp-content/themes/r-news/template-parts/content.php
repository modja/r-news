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
$ancestors = get_category_parents($cat_id, true, ', ');

//read counter
$count = get_post_meta( $post->ID, 'readcounter', true );
if ($count =='') {
    $count = 1;  // if the meta value isn't set, use 1 as a default
}else
  $count++;

update_post_meta( $post->ID, 'readcounter', $count );
?>

<div id="post-<?php the_ID(); ?>" class="content-wrapper">
        <div class="categories">
 	<?php
		echo $ancestors;
		echo '<span class="breadcrumb-active-cat">'.the_title().'</span>';
	?>
        </div>
        <h1 class="title is-1"><?php the_title()?></h1>
        <div class="meta columns is-mobile is-gapless">
          <div class="column has-text-left">
            <span class="post-date">
              Share to 
              <a class="navbar-start navbar-item is-inline-block" href="#"><i class="fa fa-facebook"></i></a>
              <a class="navbar-start navbar-item is-inline-block" href="#"><i class="fa fa-twitter"></i></a>
              <a class="navbar-start navbar-item is-inline-block" href="#"><i class="fa fa-instagram"></i></a>
              <a class="navbar-start navbar-item is-inline-block" href="#"><i class="fa fa-google-plus"></i></a>
              <a class="navbar-start navbar-item is-inline-block" href="#"><i class="fa fa-youtube-play"></i></a>
            </span>
          </div>
          <div class="column has-text-right">
            <span class="post-read-time"><?php echo get_post_meta( $post->ID, 'timeforread', true );?> <a class="navbar-end navbar-item is-inline-block" href="#"><i class="fa fa-bookmark-o"></i></a></span>
          </div>
        </div>
        <div class="blurb">
		 <?php
		if ( 'post' === get_post_type() ) :
				?>
				<div class="entry-meta">
					<?php
					the_content();
					?>
				</div><!-- .entry-meta -->
			<?php endif; 
		?>
        </div>

<hr>

        <div class="tags">
		<?php
		$posttags = get_the_tags();
		if ($posttags) {
		  foreach($posttags as $tag) {
		    echo sprintf("<a href='%s' class='button is-light is-rounded'>%s</a>",get_tag_link($tag->term_id),$tag->name) ; 
		  }
		}
		?>
		
	</div>

        <span class="post-date">
          Share to 
          <a class="navbar-start navbar-item is-inline-block" href="#"><i class="fa fa-facebook"></i></a>
          <a class="navbar-start navbar-item is-inline-block" href="#"><i class="fa fa-twitter"></i></a>
          <a class="navbar-start navbar-item is-inline-block" href="#"><i class="fa fa-instagram"></i></a>
          <a class="navbar-start navbar-item is-inline-block" href="#"><i class="fa fa-google-plus"></i></a>
          <a class="navbar-start navbar-item is-inline-block" href="#"><i class="fa fa-youtube-play"></i></a>
        </span>

        <hr>
        <br>

        <div class="title is-4">Penulis</div>

        <section class="media">

          <figure class="media-left">
            <p class="image is-64x64">
              <?php  echo get_avatar( get_the_author_meta( 'ID' ), 64 );?>
            </p>
          </figure>
          <div class="media-content">
            <div class="content">
              <p>
                <strong><?php echo sprintf("%s %s",get_the_author_meta("first_name"),get_the_author_meta("last_name"));?></strong>
                <br>
                <?php echo sprintf("%s",nl2br(get_the_author_meta('description')));?> 
              </p>
            </div>
          </div>
          <div class="media-right">
            <a class="navbar-start navbar-item is-inline-block" href="#"><i class="fa fa-facebook"></i></a>
            <a class="navbar-start navbar-item is-inline-block" href="#"><i class="fa fa-twitter"></i></a>
            <a class="navbar-start navbar-item is-inline-block" href="#"><i class="fa fa-instagram"></i></a>
            <a class="navbar-start navbar-item is-inline-block" href="#"><i class="fa fa-google-plus"></i></a>
            <a class="navbar-start navbar-item is-inline-block" href="#"><i class="fa fa-youtube-play"></i></a>
          </div>
        </section>

        <hr>
        <br>




      </div>


 
