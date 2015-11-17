<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=no">
    <title>Lesson</title>

    <!-- Favicons-->
    <link rel="icon" href="images/favicon/favicon-32x32.png" sizes="32x32">

    <!-- CORE CSS-->    
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.2/css/materialize.min.css">
    <link href="css/style.css" type="text/css" rel="stylesheet" media="screen,projection">
    <link href="css/q_style.css" type="text/css" rel="stylesheet" media="screen,projection">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link href="css/media-hover-effects.css" type="text/css" rel="stylesheet" media="screen,projection">
</head>
<body>
	<!-- Start Page Loading -->
    <div id="loader-wrapper">
        <div id="loader"></div>        
        <div class="loader-section section-left"></div>
        <div class="loader-section section-right"></div>
    </div>
    <!-- End Page Loading -->

    <!-- START HEADER -->
    <header id="header" class="page-topbar">
        <!-- start header nav-->
        <div class="navbar-fixed">
            <nav class="cyan">
                <div class="nav-wrapper">
                    <h1 class="logo-wrapper"><a href="/" class="brand-logo darken-1"><img style="height:50px" src="images/lorem-logo.png" alt="materialize logo"></a></h1>
                    <ul class="right q_nav">
                        <li><a href="index.html">Home</a></li>
                        <li class="active"><a href="course.html">Courses</a></li>
                        <li><a href="teacher.html">Teachers</a></li>
                        <li><a href="about_us.html">About us</a></li>
                        <li><a href="user-profile.html">User Profile</a></li>
                        <a class="waves-effect waves-light btn right" href="login.html">Login</a>
                        <a class="waves-effect waves-light btn deep-purple right" href="register.html">Sign up</a>
                    </ul>
                     
                </div>
            </nav>
        </div>
        <!-- end header nav-->
    </header>
    <!-- END HEADER -->
    <!-- START MAIN -->
  
  	
    <div class="container">
      <div class="row">
        <h3 class="center-align cyan-text"><s:property value="temp"/></h3>
      </div>
      <div class="q_margin">
        <video class="responsive-video q_video" controls style="width:100%">
          <source src="http://clips.vorwaerts-gmbh.de/big_buck_bunny.mp4" type="video/mp4">
        </video>
      </div>
    </div>
    
    
    <div class="q_main" style="margin-top:50px">
      <div class="container">
        <div class="row">
          <div class="col m8">
            <h4>Content</h4>
            <div class="content_video">
            		
            	<s:iterator value="lesson" var="i">
            		<p><a href=
            		<s:url namespace='/' action='Lesson'>
					<s:param name='id' value='#i.id' />
					</s:url>>
            			<s:property value="#i.title"/>
            		</a></p>
            	</s:iterator>
            	
            		
            	
              <!--  <p><a href="">Lesson 1 : Introduction</a></p>
              <p><a href="">Lesson 2 : Continuos Present Tense</a></p>
              <p><a href="">Lesson 3 : Simple Present Tense</a></p>
              <p><a href="">Lesson 4 : Bla bla bla</a></p> --> 
            </div>
          </div>
          <div class="col m4">
            <h4>Details</h4>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque lacinia, turpis a lacinia accumsan, ex leo efficitur arcu, at aliquet dui elit vitae augue.</p>
          </div>
        </div>
      </div>
    </div>
    <!-- END MAIN -->
    <!-- Footer -->
    <footer class="page-footer">
        <div class="container" style="padding-left:10%;padding-right:10%">
            <div class="row">
                <div class="col l6 s12" style="margin-top:30px">
                    <h5 class="white-text">Connect with us</h5>
                    <p class="grey-text text-lighten-4">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque lacinia, turpis a lacinia accumsan, ex leo efficitur arcu, at aliquet dui elit vitae augue.</p>
                </div>
                <div class="col l4 offset-l2 s12 icon">
                    <img src="images/icon/facebook.png" alt="">
                    <img src="images/icon/google.png"  alt="">
                    <img src="images/icon/twitter.png" alt="">
                </div>
            </div>
        </div>
        <div class="footer-copyright">
            <div class="container">
                Copyright © 2015 <a class="grey-text text-lighten-4" href="#" target="_blank">Lorem Ipsum</a> All rights reserved.
                <span class="right"> Design and Developed by <a class="grey-text text-lighten-4" href="#">Lorem Ipsum</a></span>
            </div>
        </div>
    </footer>
    <!-- Scripts-->
    <!-- jQuery Library -->
    <script type="text/javascript" src="js/jquery-1.11.2.min.js"></script>    
    <!--materialize js-->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.2/js/materialize.min.js"></script> 
    <!--plugins.js - Some Specific JS codes for Plugin Settings-->
    <script type="text/javascript" src="js/plugins.js"></script>
</body>
</html>