<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=no">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Register</title>
  <!-- Favicons-->
  <link rel="icon" href="images/favicon/favicon-32x32.png" sizes="32x32">
  <!-- CORE CSS-->
  
  <link type="text/css" rel="stylesheet" media="screen,projection" href="css/materialize.min.css">
  <link href="css/style.css" type="text/css" rel="stylesheet" media="screen,projection">
  <link href="css/page-center.css" type="text/css" rel="stylesheet" media="screen,projection">

  <!-- INCLUDED PLUGIN CSS ON THIS PAGE -->
  <link href="css/prism.css" type="text/css" rel="stylesheet" media="screen,projection">
  <link href="css/perfect-scrollbar.css" type="text/css" rel="stylesheet" media="screen,projection">
  
  
</head>

<body class="cyan">
  <!-- Start Page Loading -->
  <div id="loader-wrapper">
      <div id="loader"></div>        
      <div class="loader-section section-left"></div>
      <div class="loader-section section-right"></div>
  </div>
  <!-- End Page Loading -->

  <div id="login-page" class="row">
    <div class="col s12 z-depth-4 card-panel">
      <form class="login-form" action="addUser" method="post">
        <div class="row">
          <div class="input-field col s12 center">
            <h4>Register</h4>
            <p class="center">Join to our community now !</p>
          </div>
        </div>
        <div class="row margin">
          <div class="input-field col s12">
            <i class="mdi-social-person-outline prefix"></i>
            <input id="username" type="text" name="userName" class="validate" minlength="5" required="" aria-required="true">
            <label for="username" class="center-align">Username</label>
          </div>
        </div>
        <div class="row margin">
          <div class="input-field col s12">
            <i class="mdi-communication-email prefix"></i>
            <input id="email" type="email" name="email" class="validate" minlength="5" required="" aria-required="true">
            <label for="email" class="center-align">Email</label>
          </div>
        </div>
        <div class="row margin">
          <div class="input-field col s12">
            <i class="mdi-action-lock-outline prefix"></i>
            <input id="password" type="password" name="password" class="validate" minlength="5" required="" aria-required="true">
            <label for="password">Password</label>
          </div>
        </div>
        <div class="row margin">
          <div class="input-field col s12">
            <i class="mdi-action-lock-outline prefix"></i>
            <input id="password-again" type="password" name="password2" class="validate" minlength="5" required="" aria-required="true">
            <label for="password-again">Confirm password</label>
          </div>
        </div>
        <div class="row">
          <div class="input-field col s12">
            
            <input type="submit" value="Resgiter Now" class="btn waves-effect waves-light col s12"/>
          </div>
          <div class="input-field col s12">
            <p class="margin center medium-small sign-up">Already have an account? <a href="Login_r.jsp">Login</a></p>
          </div>
        </div>
        <div class="row">
          <div class="input-field col s12" style="text-align:center">
            <a href="home" class="btn waves-effect waves-light red darken-2 ">Back to home</a>
          </div>
        </div>
      </form>
    </div>
  </div>
 <!-- jQuery Library -->
  <script type="text/javascript" src="js/jquery-1.11.2.min.js"></script>
  <!--materialize js-->
  <script src="js/materialize.min.js"></script>
  <!--prism-->
  <script type="text/javascript" src="js/prism.js"></script>
  <!--plugins.js - Some Specific JS codes for Plugin Settings-->
  <script type="text/javascript" src="js/plugins.js"></script>
  <script>
  	 var mess = "<s:property value="message"/>";
  	 setTimeout(function(){
  		Materialize.toast(mess, 5000, 'rounded');
  	 },1000);
  </script>
</body>

</html>