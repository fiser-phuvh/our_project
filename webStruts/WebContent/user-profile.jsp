<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
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
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link href="css/media-hover-effects.css" type="text/css" rel="stylesheet" media="screen,projection">
</head>

<body>
    <s:include value="header.jsp"></s:include>

    <!-- START MAIN -->
    <form action="saveUser" method="post">
    
    
    <div class="q_main" style="margin-top : 50px">
      <div class="container">
        <div class="row">
          <div class="col m6">
            <img style="width:500px;height:350px;margin-left:auto;margin-right:auto" src="images/chinh.jpg" alt="">
            <div class="input-field">
              <input id="fullname" type="text" class="validate" value="<s:property value="u.name"/>" name="name"/>
              <label for="fullname">Full Name</label>
            </div>
          </div>
          <div class="col m6">
            <div class="input-field">
              <input id="username" type="text" class="validate" value="<s:property value="u.username" />" name="userName">
              <label for="username">Username</label>
            </div>
            <div class="input-field">
              <input id="password" type="password" class="validate" value="<s:property value="u.password"/>" name="passWord">
              <label for="password">Password</label>
            </div>
            <div class="input-field">
              <input id="email" type="email" class="validate" value="<s:property value="u.email"/>" name="email">
              <label for="email">Email</label>
            </div>
            <div class="input-field">
              <input id="birthday" type="date" class="datepicker" name="birthDay" >
              <label for="birthday">Birthday</label>
            </div>
            <p>Sex</p>
            <p>
              <input name="gender" type="radio" id="male" value="0" checked="checked"/>
              <label for="male">Male</label>
            </p>
            <p>
              <input name="gender" type="radio" id="female" value="1" />
              <label for="female">Female</label>
            </p>
          </div>
        </div>
        <div class="rÆ¡w">
          <div class="input-field col m12">
            <textarea id="des" class="materialize-textarea"  name="info"></textarea>
            <label for="des">Description</label>
          </div>
        </div>
        <div class="row">
           <a class="waves-effect waves-light btn red darken-2 right" href="index.html">Cancel</a>
            <input type="submit" class="waves-effect waves-light btn green lighten-2 right" style="margin-right:25px" />
        </div>
      </div>
    </div>
    </form>
    
    
    
    
    
    
    
    <!-- END MAIN -->
    <!-- Footer -->
    <s:include value="footer.jsp"></s:include>
    
</body>

</html>