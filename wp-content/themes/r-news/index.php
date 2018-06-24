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
  <!-- POPULAR POST SLIDER -->
  <section class="container is-fluid">
    <div id="film_roll" class="popular-post-slider">
      <div>
        <figure>
          <img src="http://fpoimg.com/556x291?text=Preview">
          <div class="post-categories">
            <a href="#">Entrepeuneurs</a> <a href="#">Bussines</a> 
          </div>
          <figcaption><a href="#">Bisnis Biskuit Coklat, Modal Kecil Peluang Besar Untung Besar</a></figcaption>
          <div class="post-meta columns">
            <div class="column is-one-third">
              <span class="post-date">2 jam lalu</span>
            </div>
            <div class="column has-text-right">
              <span class="post-comment"><i class="fa fa-comment"></i></span>
              <span class="post-share"><i class="fa fa-share"></i></span>
              <span class="post-bookmark"><i class="fa fa-bookmark-o"></i></span>
            </div>
          </div>
        </figure>
      </div>
      <div>
        <figure>
          <img src="http://fpoimg.com/556x291?text=Preview">
          <div class="post-categories">
            <a href="#">Entrepeuneurs</a> <a href="#">Bussines</a> 
          </div>
          <figcaption><a href="#">Bisnis Biskuit Coklat, Modal Kecil Peluang Besar Untung Besar</a></figcaption>
          <div class="post-meta columns">
            <div class="column is-left is-one-third">
              <span class="post-date">2 jam lalu</span>
            </div>
            <div class="column is-right">
              <span class="post-comment"><i class="fa fa-comment"></i></span>
              <span class="post-share"><i class="fa fa-share"></i></span>
              <span class="post-bookmark"><i class="fa fa-bookmark-o"></i></span>
            </div>
          </div>
        </figure>
      </div>
      <div>
        <figure>
          <img src="http://fpoimg.com/556x291?text=Preview">
          <div class="post-categories">
            <a href="#">Entrepeuneurs</a> <a href="#">Bussines</a> 
          </div>
          <figcaption><a href="#">Bisnis Biskuit Coklat, Modal Kecil Peluang Besar Untung Besar</a></figcaption>
          <div class="post-meta columns">
            <div class="column is-left is-one-third">
              <span class="post-date">2 jam lalu</span>
            </div>
            <div class="column is-right">
              <span class="post-comment"><i class="fa fa-comment"></i></span>
              <span class="post-share"><i class="fa fa-share"></i></span>
              <span class="post-bookmark"><i class="fa fa-bookmark-o"></i></span>
            </div>
          </div>
        </figure>
      </div>
      <div>
        <figure>
          <img src="http://fpoimg.com/556x291?text=Preview">
          <div class="post-categories">
            <a href="#">Entrepeuneurs</a> <a href="#">Bussines</a> 
          </div>
          <figcaption><a href="#">Bisnis Biskuit Coklat, Modal Kecil Peluang Besar Untung Besar</a></figcaption>
          <div class="post-meta columns">
            <div class="column is-left is-one-third">
              <span class="post-date">2 jam lalu</span>
            </div>
            <div class="column is-right">
              <span class="post-comment"><i class="fa fa-comment"></i></span>
              <span class="post-share"><i class="fa fa-share"></i></span>
              <span class="post-bookmark"><i class="fa fa-bookmark-o"></i></span>
            </div>
          </div>
        </figure>
      </div>
      <div>
        <figure>
          <img src="http://fpoimg.com/556x291?text=Preview">
          <div class="post-categories">
            <a href="#">Entrepeuneurs</a> <a href="#">Bussines</a> 
          </div>
          <figcaption><a href="#">Bisnis Biskuit Coklat, Modal Kecil Peluang Besar Untung Besar</a></figcaption>
          <div class="post-meta columns">
            <div class="column is-left is-one-third">
              <span class="post-date">2 jam lalu</span>
            </div>
            <div class="column is-right">
              <span class="post-comment"><i class="fa fa-comment"></i></span>
              <span class="post-share"><i class="fa fa-share"></i></span>
              <span class="post-bookmark"><i class="fa fa-bookmark-o"></i></span>
            </div>
          </div>
        </figure>
      </div>
    </div>
  </section>
  <!-- / END POPULAR POST SLIDER -->


  <!-- TRENDING NEWS -->
  <section class="container">
    <div class="trending-news columns">
      <div class="column">
        <span class="trending-news-label">Trending News :</span> 
        <a class="button is-rounded is-dark" href="#">Kaos Pisang</a>
        <a class="button is-rounded is-dark" href="#">Warung kopi</a>
        <a class="button is-rounded is-dark" href="#">Bistro Murah</a>
        <a class="button is-rounded is-dark" href="#">Bisnis Kopi JaBoDeTaBek</a>
      </div>
    </div>
  </section>

	
<?php
//get_sidebar();
get_footer();
?>
