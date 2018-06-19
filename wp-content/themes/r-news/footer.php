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



<script src="js/vendor/modernizr-3.6.0.min.js"></script>
  <!-- <script src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>
  <script>window.jQuery || document.write('<script src="js/vendor/jquery-3.3.1.min.js"><\/script>')</script>
 -->
  <script type="text/javascript" src="//code.jquery.com/jquery-1.11.0.min.js"></script>
  <script type="text/javascript" src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>

  <script src="js/plugins.js"></script>
  <script src="js/main.js"></script>


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

    });
  </script>

  <!-- Google Analytics: change UA-XXXXX-Y to be your site's ID. -->
  <script>
    window.ga = function () { ga.q.push(arguments) }; ga.q = []; ga.l = +new Date;
    ga('create', 'UA-XXXXX-Y', 'auto'); ga('send', 'pageview')
  </script>
  <script src="https://www.google-analytics.com/analytics.js" async defer></script>
	

<?php wp_footer(); ?>

</body>
</html>
