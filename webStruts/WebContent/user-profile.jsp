<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Home</title>
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
              <input id="fullname" type="text" class="validate" value="<s:property value="profile.name"/>" name="name"/>
              <label for="fullname">Fullname</label>
            </div>
          </div>
          <div class="col m6">
            <div class="input-field">
              <input id="username" type="text" class="validate" value="<s:property value="profile.username" />" name="userName" readonly>
              <label for="username">Username</label>
            </div>
            <div class="input-field">
              <input id="password" type="password" class="validate" value="<s:property value="profile.password"/>" name="passWord">
              <label for="password">Password</label>
            </div>
            <div class="input-field">
              <input id="email" type="email" class="validate" value="<s:property value="profile.email"/>" name="email">
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
        <div class="row">
          <div class="input-field col m12">
            <textarea id="des" class="materialize-textarea" name="info"><s:property value="getProfile().info" /> </textarea>
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
    
    <s:include value="footer.jsp"></s:include>
    
</body>
</html>