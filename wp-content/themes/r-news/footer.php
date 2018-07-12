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
					  <input class="input is-medium is-rounded" type="text" name="email" id="email" placeholder="Alamat Email Anda">
					</div>
					<div class="control">
					  <a class="button is-medium is-rounded is-warning" id="formSubscribeSubmitBtn">Berlangganan</a>
					</div>
 			      
				</div>
			    </div>
			  </div>
		
        </div>
      </div>
    </section>
  </div>
  <!-- /END NEWSLETTER -->



 <!-- MAIN FOOTER -->
  <footer class="main-footer">
    <div class="container">
      <div class="columns">
        <div class="column footer-sosmed-link">
          <a class="is-inline-block" href="<?php echo get_option("FacebookURL") ?>" target="_blank"><i class="fa fa-facebook"></i></a>
          <a class="is-inline-block" href="<?php echo get_option("TwitterURL") ?>" target="_blank"><i class="fa fa-twitter"></i></a>
          <a class="is-inline-block" href="<?php echo get_option("InstagramURL") ?>" target="_blank"><i class="fa fa-instagram"></i></a>
          <a class="is-inline-block" href="<?php echo get_option("GoogleURL") ?>" target="_blank"><i class="fa fa-google-plus"></i></a>
          <a class="is-inline-block" href="<?php echo get_option("YoutubeURL") ?>" target="_blank"><i class="fa fa-youtube-play"></i></a>
        </div>
        <div class="column has-text-right"><i class="fa fa-copyright" aria-hidden="true"></i> <?php echo date('Y')?> R-NEWS</div> 
      </div>
    </div>
  </footer>
  <!-- /END MAIN FOOTER -->
 




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
	var attr_id = $(this).attr('id');
	var modal_id = attr_id.split("-");
	$("#modal-" + modal_id[1]).addClass("is-active");  
      });

      $(".modal-close").click(function() {
         $(".modal").removeClass("is-active");
      });

      $(".delete").click(function() {
         $(".modal").removeClass("is-active");
      });


     //subscribe
      $("#formSubscribeSubmitBtn").click(function(event){
	event.preventDefault();
	
	var email = $( "#email" );
	if(email.val()== '')	{
		alert('Email is mandatory!');
		return;	
	}

	if(!isValidEmailAddress(email.val()))	{
		alert('Invalid email format');
		return;	
	}

	     		
	$.ajax({
	    //get this url after we registered at mailtarget.co 
	    url: "https://pt-provate-5ws.mailtrgt.com/form/5b40e6f76cb62a1b4190da33",
	    beforeSend: function(xhr) {},
	    type: 'POST',
	    dataType: 'json',
	    contentType: 'application/json',
	    processData: false,
	    data: '{"email":"' + email.val() +'"}',
	    success: function (data) {
	      	alert('Subscribe Success');
		email.val('');
	    },
	    error: function(){
	      alert("Cannot get data");
	    }
  	 });
  	 
      });


   function isValidEmailAddress(emailAddress) {
    var pattern = /^([a-z\d!#$%&'*+\-\/=?^_`{|}~\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]+(\.[a-z\d!#$%&'*+\-\/=?^_`{|}~\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]+)*|"((([ \t]*\r\n)?[ \t]+)?([\x01-\x08\x0b\x0c\x0e-\x1f\x7f\x21\x23-\x5b\x5d-\x7e\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]|\\[\x01-\x09\x0b\x0c\x0d-\x7f\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]))*(([ \t]*\r\n)?[ \t]+)?")@(([a-z\d\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]|[a-z\d\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF][a-z\d\-._~\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]*[a-z\d\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])\.)+([a-z\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]|[a-z\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF][a-z\d\-._~\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]*[a-z\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])\.?$/i;
    return pattern.test(emailAddress);
   }



    });

  </script>

  <!-- Google Analytics: change UA-XXXXX-Y to be your site's ID. -->
  <script>
    window.ga = function () { ga.q.push(arguments) }; ga.q = []; ga.l = +new Date;
    ga('create', 'UA-XXXXX-Y', 'auto'); ga('send', 'pageview')
  </script>


 
</body>
</html>
