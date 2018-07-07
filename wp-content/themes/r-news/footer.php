<?php
/**
 * The template for displaying the footer
 *
 * Contains the closing of the #content div and all content after.
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package r-news
 */

?>

 
<?php wp_footer(); ?>





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








 <script type="text/javascript">
   $(document).ready(function(){

      $('#main-menu').scrollTabs({
        scroll_distance: 350,
        scroll_duration: 350,
        left_arrow_size: 26,
        right_arrow_size: 26,
        click_callback: function(e){
          var val = $(this).attr('rel');
          if(val){
            window.location.href = val;
          }
        }
      });

      jQuery(window).load(function() {
        var film_roll = new FilmRoll({
          configure_load: true,
          container: '#film_roll',
          prev: false,
          next: false
        });
      });

      //search
      $("#mainsearchTrigger").click(function(event){
	event.preventDefault();
        $("#mainsearch").slideToggle();
      });




      // Modals
      $(".modal-button").click(function(e) {
        e.preventDefault();
        $(this).next().addClass("is-active");  
      });

      $(".modal-close").click(function() {
         $(this).parent().removeClass("is-active");
      });
      $(".delete").click(function() {
         $(this).parent().parent().parent().removeClass("is-active");
      });




    });

  </script>

  <!-- Google Analytics: change UA-XXXXX-Y to be your site's ID. -->
  <script>
    window.ga = function () { ga.q.push(arguments) }; ga.q = []; ga.l = +new Date;
    ga('create', 'UA-XXXXX-Y', 'auto'); ga('send', 'pageview')
  </script>



</body>
</html>
