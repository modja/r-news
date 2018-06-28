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



      // $('.featured-slider').slick({
      //   centerMode: true,
      //   centerPadding: '440px',
      //   slidesToShow: 1,
      //   slidesToScroll: 1,
      //   autoplay: false,
      //   autoplaySpeed: 2000,
      //   respondTo: 'window',
      //   responsive: [
      //     {
      //       breakpoint: 1200,
      //       settings: {
      //         arrows: false,
      //         centerMode: true,
      //         centerPadding: '360px',
      //         slidesToShow: 1
      //       }
      //     },
      //     {
      //       breakpoint: 768,
      //       settings: {
      //         arrows: false,
      //         centerMode: true,
      //         centerPadding: '40px',
      //         slidesToShow: 1
      //       }
      //     }
      //   ]
      // });

    });
  </script>

  <!-- Google Analytics: change UA-XXXXX-Y to be your site's ID. -->
  <script>
    window.ga = function () { ga.q.push(arguments) }; ga.q = []; ga.l = +new Date;
    ga('create', 'UA-XXXXX-Y', 'auto'); ga('send', 'pageview')
  </script>



</body>
</html>
