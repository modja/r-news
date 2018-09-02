  
<!-- searchform.php -->
<!-- MAIN SEARCH PANEL -->
  <section id="mainsearch" class="search-panel">
    <div class="container">
      <div class="title">Informasi apa yang ingin Anda ketahui?</div>
      <div class="control has-icons-left has-icons-right">
	<form action="<?=bloginfo("url");?>" method="get" id="search">
		<input class="input is-large" type="text" name="s" id="search" value="<?php the_search_query(); ?>" placeholder="Ketik disini"/>
 		<span class="icon is-medium is-left"><i class="fa fa-search"></i></span>
	</form>
      </div>
    </div>
  </section>

