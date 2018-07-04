  
<!-- searchform.php -->
<form action="<?=bloginfo("url");?>" method="get" id="search">
 <input type="text" name="s" id="search" value="<?php the_search_query(); ?>" />
 <a class="navbar-end navbar-item is-inline-block" onClick="document.forms['search'].submit();"><i class="fa fa-search"></i></a>
 <a class="navbar-end navbar-item is-inline-block" href="#"><i class="fa fa-bolt"></i></a>
 <a class="navbar-end navbar-item is-inline-block" href="#"><i class="fa fa-bookmark-o"></i></a>
 
</form>
                   
