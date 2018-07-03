<?php
/**
 * Template part for displaying posts
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/
 *
 * @package r-news
 */

?>
<!-- KABAR BISNIS TERBARU -->
  <div class="container is-fullhd">
    <section class="kabar-bisnis-terbaru">

     <div class="column">
      <h4 class="title is-4 is-inline-block">Kabar Bisnis Terbaru</h4> 
	<h6 class="subtitle is-6 is-inline-block">Perkembangan bisnis saat ini</h6>
     </div>

 

      <div class="column">     
	
	<?php get_template_part( 'template-parts/index/column', 'data01' ); ?>
	<?php get_template_part( 'template-parts/index/column', 'data02' ); ?>
	<?php get_template_part( 'template-parts/index/column', 'data03' ); ?>

      </div>


 
    </section>
  </div>
  <!-- /END KABAR BISNIS TERBARU -->




 <!-- NEWSLETTER -->
  <div class="container is-fluid">
    <section class="newsletter">
      <div class="container is-fullhd">
        <div class="columns is-mobile">

          <div class="column has-text-centered inner">
            <h4 class="title is-4 is-uppercase">Subsribe Newsletter Kami</h4>
            <p>Langganan untuk update semua berita dan informasi kami Kami</p>
            <br>
            <div class="columns is-flex is-centered is-gapless">
              <div class="field has-addons">
                <div class="control">
                  <input class="input is-medium is-rounded" type="text" placeholder="Alamat Email Anda">
                </div>
                <div class="control">
                  <a class="button is-medium is-rounded is-warning">Berlangganan</a>
                </div>
              </div>
            </div>
          </div>

        </div>
      </div>
    </section>
  </div>
  <!-- /END NEWSLETTER -->



