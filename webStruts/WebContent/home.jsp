
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="vi">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=no">
    <title>Home</title>

    <!-- Favicons-->
    <link rel="icon" href="images/favicon/favicon-32x32.png" sizes="32x32">

    <!-- CORE CSS-->    
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.2/css/materialize.min.css">
    <link href="css/style.css" type="text/css" rel="stylesheet" media="screen,projection">
    <link href="css/q_style.css" type="text/css" rel="stylesheet" media="screen,projection">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link href="css/media-hover-effects.css" type="text/css" rel="stylesheet" media="screen,projection">
    <link href="css/k-style.css" type="text/css" rel="stylesheet" media="screen,projection">
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
                        <li><a href=#>Trang chủ</a></li>
                        <li><a href=#>Courses</a></li>
                        <li><a href=#>Teachers</a></li>
                        <li><a href=#>About us</a></li>
                        <li><a href=#>User Profile</a></li>
                        <a class="waves-effect waves-light btn right" href=#>Login</a>
                        <a class="waves-effect waves-light btn deep-purple right" href=#>Sign up</a>
                    </ul>
                     
                </div>
            </nav>
        </div>
        <!-- end header nav-->
    </header>
    <!-- END HEADER -->

    <!-- START MAIN -->
     <div class="slider">
        <ul class="slides">
          <li>
            <img src="images/slide1.jpg">
            <div class="caption center-align">
              <h4>Lorem ipsum dot asit met</h4>
              <a class="waves-effect waves-light btn">Learning Now</a>
            </div>
          </li>
           <li>
            <img src="images/slide2.jpg">
            <div class="caption left-align">
              <h4>Lorem ipsum dot asit met</h4>
              <a class="waves-effect waves-light btn">Learning Now</a>
            </div>
          </li>
          <li>
            <img src="images/slide3.jpg">
            <div class="caption right-align">
              <h4>Lorem ipsum dot asit met</h4>
              <a class="waves-effect waves-light btn">Learning Now</a>
            </div>
          </li>
          <li>
            <img src="images/slide4.jpg">
            <div class="caption center-align">
              <h4>Lorem ipsum dot asit met</h4>
              <a class="waves-effect waves-light btn">Start Learning Now</a>
            </div>
          </li> 
        </ul>
      </div>
      <div class="q_main">
          <div class="container">
              <h3 class="center-align">Most popular courses</h3>
              <div class="row">
              		<s:iterator value="popCourse" var="l">
              			<div class="col m4 grid">
                      <figure class="effect-lily">
                        <img src="images/gallary/12.jpg" alt="img12"/>
                        <figcaption>
                          <div>
                            <h2><s:property value="#l.title"/></h2>
                            <p><a class="waves-effect waves-light btn" href=#>Learn more</a></p>
                          </div>
                          <a href="#">View more</a>
                        </figcaption>     
                      </figure>
                  		</div>
              		</s:iterator>
            
                 <!--  <div class="col m4 grid">
                      <figure class="effect-lily">
                        <img src="images/gallary/12.jpg" alt="img12"/>
                        <figcaption>
                          <div>
                            <h2>${c.title}</h2>
                            <p><a class="waves-effect waves-light btn" href=#>Learn more</a></p>
                          </div>
                          <a href="#">View more</a>
                        </figcaption>     
                      </figure>
                  </div>
                 <div class="col m4 grid">
                      <figure class="effect-lily">
                        <img src="images/gallary/12.jpg" alt="img12"/>
                        <figcaption>
                          <div>
                            <h2>Lịch Sử Cổ Đại</h2>
                            <p><a class="waves-effect waves-light btn" href=#>Learn more</a></p>
                          </div>
                          <a href="#">View more</a>
                        </figcaption>     
                      </figure>
                  </div>
                 <div class="col m4 grid">
                      <figure class="effect-lily">
                        <img src="images/gallary/12.jpg" alt="img12"/>
                        <figcaption>
                          <div>
                            <h2>Hệ tuần hoàn</h2>
                            <p><a class="waves-effect waves-light btn" href="courses-info.html">Learn more</a></p>
                          </div>
                          <a href="#">View more</a>
                        </figcaption>     
                      </figure>
                  </div>
              </div>
              <div class="row">
                  <div class="col m4 grid">
                      <figure class="effect-lily">
                        <img src="images/gallary/12.jpg" alt="img12"/>
                        <figcaption>
                          <div>
                            <h2>Vật lý</h2>
                            <p><a class="waves-effect waves-light btn" href="courses-info.html">Learn more</a></p>
                          </div>
                          <a href="#">View more</a>
                        </figcaption>     
                      </figure>
                  </div>
                  <div class="col m4 grid">
                      <figure class="effect-lily">
                        <img src="images/gallary/12.jpg" alt="img12"/>
                        <figcaption>
                          <div>
                            <h2>Thể dục</h2>
                            <p><a class="waves-effect waves-light btn" href="courses-info.html">Learn more</a></p>
                          </div>
                          <a href="#">View more</a>
                        </figcaption>     
                      </figure>
                  </div>
                  <div class="col m4 grid">
                      <figure class="effect-lily">
                        <img src="images/gallary/12.jpg" alt="img12"/>
                        <figcaption>
                          <div>
                            <h2>Tiếng Anh</h2>
                            <p><a class="waves-effect waves-light btn" href="courses-info.html">Learn more</a></p>
                          </div>
                          <a href="#">View more</a>
                        </figcaption>     
                      </figure>
                  </div>.......-->
              </div>
              <div class="row">
                  <div class="col m4 offset-m4 center-align">
                    <a class="waves-effect waves-light btn cyan lighten-1">View all courses</a>
                  </div>
              </div>
              <h3 class="center-align">Starting Soon</h3>
              <div class="row">
              		
              
                  <div class="col m4 grid">
                      <figure class="effect-lily">
                        <img src="images/gallary/12.jpg" alt="img12"/>
                        <figcaption>
                          <div>
                            <h2>English</h2>
                            <p><a class="waves-effect waves-light btn" href="courses-info.html">Learn more</a></p>
                          </div>
                          <a href="#">View more</a>
                        </figcaption>     
                      </figure>
                  </div>
                 <div class="col m4 grid">
                      <figure class="effect-lily">
                        <img src="images/gallary/12.jpg" alt="img12"/>
                        <figcaption>
                          <div>
                            <h2>Math</h2>
                            <p><a class="waves-effect waves-light btn" href="courses-info.html">Learn more</a></p>
                          </div>
                          <a href="#">View more</a>
                        </figcaption>     
                      </figure>
                  </div>
                 <div class="col m4 grid">
                      <figure class="effect-lily">
                        <img src="images/gallary/12.jpg" alt="img12"/>
                        <figcaption>
                          <div>
                            <h2>Biology</h2>
                            <p><a class="waves-effect waves-light btn" href="courses-info.html">Learn more</a></p>
                          </div>
                          <a href="#">View more</a>
                        </figcaption>     
                      </figure>
                  </div> 
              </div>
              <div class="row">
                  <div class="col m4 offset-m4 center-align">
                    <a class="waves-effect waves-light btn green accent-3">View all courses</a>
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
                Copyright Â© 2015 <a class="grey-text text-lighten-4" href="#" target="_blank">Lorem Ipsum</a> All rights reserved.
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