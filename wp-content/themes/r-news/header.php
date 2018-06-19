<?php
/**
 * The header for our theme
 *
 * This is the template that displays all of the <head> section and everything up until <div id="content">
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package r-news
 */

?>
<!doctype html>
<html <?php language_attributes(); ?>>
<head>

<?php //wp_head(); ?>

<meta charset="utf-8">
  <meta http-equiv="x-ua-compatible" content="ie=edge">
  <title>R-News</title>
  <meta name="description" content="">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <link rel="manifest" href="site.webmanifest">
  <link rel="apple-touch-icon" href="icon.png">
  <!-- Place favicon.ico in the root directory -->

  <link rel="stylesheet" href="<?php bloginfo( 'template_url' ); ?>/css/normalize.css">
  <link href="https://fonts.googleapis.com/css?family=Raleway:300,400,500,600,700,800,900|Archivo+Black|Montserrat:300,400,500,600,700,800,900" rel="stylesheet">

  <!--<link rel="stylesheet" type="text/css" media="all" href="<?php bloginfo( 'stylesheet_url' ); ?>" />-->
  <link rel="stylesheet" href="<?php bloginfo( 'template_url' ); ?>/css/style.css">
  

</head>

<body>


<header class="header-nav">
    <div class="container">
      <nav class="navbar columns is-mobile" role="navigation" aria-label="main navigation">

        <div class="column is-hidden-mobile">
          <a class="navbar-start navbar-item is-inline-block" href="#"><i class="fa fa-facebook"></i></a>
          <a class="navbar-start navbar-item is-inline-block" href="#"><i class="fa fa-twitter"></i></a>
          <a class="navbar-start navbar-item is-inline-block" href="#"><i class="fa fa-instagram"></i></a>
          <a class="navbar-start navbar-item is-inline-block" href="#"><i class="fa fa-google-plus"></i></a>
          <a class="navbar-start navbar-item is-inline-block" href="#"><i class="fa fa-youtube-play"></i></a>
        </div>

        <div class="column has-text-centered">
          <a class="navbar-item is-block logo-r-news" href="#"><span class="r">R</span>-NEWS</a>
        </div>

        <div class="column has-text-right">
          <a class="navbar-end navbar-item is-inline-block" href="#"><i class="fa fa-search"></i></a>
          <a class="navbar-end navbar-item is-inline-block" href="#"><i class="fa fa-bolt"></i></a>
          <a class="navbar-end navbar-item is-inline-block" href="#"><i class="fa fa-bookmark-o"></i></a>
        </div>

      </nav>


      <ul id="main-menu">
        <li class="selected"><a href="#">Home</a></li>
        <li><a href="#">Business</a></li>
        <li><a href="#">Entrepreneurs</a></li>
        <li><a href="#">Mindset</a></li>
        <li><a href="#">Business Story</a></li>
        <li><a href="#">Inspiration</a></li>
        <li><a href="#">Technology</a></li>
        <li><a href="#">Info</a></li>
        <li><a href="#">Tips & Trick</a></li>
        <li><a href="#">#WhatTheFacts</a></li>
        <li><a href="#">Video</a></li>
        <li><a href="#">Infographic</a></li>
        <li><a href="#">Ralali.com</a></li>
      </ul>

    </div>
  </header>



