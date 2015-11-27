<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=no">
    <title>Home</title>

    <!-- Favicons-->
    <link rel="icon" href="images/favicon/favicon-32x32.png" sizes="32x32">

    <!-- CORE CSS-->    
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.2/css/materialize.min.css">
    <link href="css/style.css" type="text/css" rel="stylesheet" media="screen,projection">
    <link href="css/q_style.css" type="text/css" rel="stylesheet" media="screen,projection">
    <link rel="stylesheet" href="css/page-center.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link href="css/media-hover-effects.css" type="text/css" rel="stylesheet" media="screen,projection">
    <link href="css/k-style.css" type="text/css" rel="stylesheet" media="screen,projection">
</head>

<body class="cyan">
  <!-- Start Page Loading -->
  <div id="loader-wrapper">
      <div id="loader"></div>        
      <div class="loader-section section-left"></div>
      <div class="loader-section section-right"></div>
  </div>
  <!-- End Page Loading -->



  <div id="error-page">

    <div class="row">
      <div class="col s12">
        <div class="browser-window">
          <div class="top-bar">
            <div class="circles">
              <div id="close-circle" class="circle"></div>
              <div id="minimize-circle" class="circle"></div>
              <div id="maximize-circle" class="circle"></div>
            </div>
          </div>
          <div class="content">
            <div class="row">
              <div id="site-layout-example-top" class="col s12">
                <p class="flat-text-logo center white-text caption-uppercase">Sorry but we couldn't find this page :(</p>
              </div>
              <div id="site-layout-example-right" class="col s12 m12 l12">
                <div class="row center">
                  <h1 class="text-long-shadow col s12" style="line-height:44%">404</h1>
                </div>
                <div class="row center">
                  <p class="center white-text col s12">It seems that this page doesn't exist.</p>
                  <p class="center s12">
                    <button onclick="goBack()" class="btn waves-effect waves-light cyan lighten-1">Back</button>
                    <a href="home" class="btn waves-effect waves-light cyan lighten-1">Homepage</a>
                  </p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>


  <!-- ================================================
    Scripts
    ================================================ -->

  <!-- jQuery Library -->
  <script type="text/javascript" src="js/jquery-1.11.2.min.js"></script>
  <!--materialize js-->
  <script type="text/javascript" src="js/materialize.js"></script>
  <!--prism-->
  <script type="text/javascript" src="js/prism.js"></script>
  <!--scrollbar-->
  <script type="text/javascript" src="js/plugins/perfect-scrollbar/perfect-scrollbar.min.js"></script>

  <!--plugins.js - Some Specific JS codes for Plugin Settings-->
  <script type="text/javascript" src="js/plugins.js"></script>
  
  <script type="text/javascript">
    function goBack() {
      window.history.back();
    }
  </script>
</body>

</html>