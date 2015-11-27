<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %> 
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	
	<link type="text/css" rel="stylesheet" media="screen,projection" href="css/materialize.min.css">
	<link type="text/css" rel="stylesheet" media="screen,projection" href="css/style.css" >
	<link type="text/css" rel="stylesheet" media="screen,projection" href="css/media-hover-effects.css">
	<link type="text/css" rel="stylesheet" media="screen,projection" href="css/q_style.css">
	<link type="text/css" rel="stylesheet" media="screen,projection" href="css/k-style.css">
	<link type="text/css" rel="stylesheet" media="screen,projection" href="css/jquery.dataTables.min.css">
	<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
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
                    <a href="home" class="brand-logo darken-1"><img style="height:50px" src="images/logo.png" alt="materialize logo"></a>
                     <a href="#" data-activates="mobile-demo" class="button-collapse"><i class="material-icons">menu</i></a>
                     <ul class="right hide-on-med-and-down q_nav" >
				        <li class="<s:property value='getActive(0)'/>"><a href="home">Home</a></li>
                        <li class="<s:property value='getActive(1)'/>"><a href="course">Courses</a></li>
                        <li class="<s:property value='getActive(2)'/>"><a href="teacher">Teachers</a></li>
                        <li class="<s:property value='getActive(3)'/>"><a href="about-us">About us</a></li>                       
                        <li class="<s:property value='getActive(4)'/>"><a href="admin-teacher">Admin</a></li>
                        <s:if test="%{username != NULL}">
                        	<li class="active" style="border-left:2px white solid">
                        		<a class="dropdown-button" href="#" data-activates="dropdown1">
                        			Welcome, <b><s:property value="username" /></b>
						<img src="images/default-avatar.png" alt="" style="position: relative;width: 30px;height: 30px;margin-top: 2px;margin-left: 7px;top: 10px;" class="circle responsive-img valign profile-image">
                        			<!-- <img class="circle" src="images/default-avatar.png" style="width:20px"/> -->
                        			<i class="material-icons right">arrow_drop_down</i>
                        		</a>
                        		
                        		<!-- style="margin-top:-13px" -->
	                        	
	                        	<ul id="dropdown1" class="dropdown-content" >
	                            	<li>
	                            		<a href="user-profile">
	                            			<i class="material-icons left">contact_phone</i>
	                            			<span>Profile</span>
	                            		</a>
		                            </li>
		                            <li>
		                            	<a href="logout">
		                            		<i class="material-icons left">trending_flat</i>
		                            		<span>Logout</span>
		                            	</a>
		                            </li>
		                        </ul>
	                        </li>
                        </s:if>
                        
                        <s:else>                      
							<li class="waves-effect waves-light btn right"><a href="Login_r.jsp">Login</a></li>
							<li class="waves-effect waves-light btn right"><a href="register.jsp">Sign up</a></li>
                        </s:else>
				     </ul>
				     
                  	 <ul class="side-nav" id="mobile-demo">
				        <li><a href="home">Home</a></li>
                        <li><a href="course">Courses</a></li>
                        <li><a href="teacher">Teachers</a></li>
                        <li><a href="about-us">About us</a></li>
                        <s:if test="%{username != NULL}">
                        	<li><a href="user-profile">Profile</a></li>
                        	<li><a href="logout">Logout</a></li>
                        </s:if>
                        
                        <s:else>                      
							<li><a href="Login_r.jsp">Login</a></li>
							<li><a href="#">Sign up</a></li>
                        </s:else>
                        <li class="q_none"><a href="#">Manage Course</a></li>
                        <li class="q_none"><a href="#">Manage Teacher</a></li>
		      		</ul>
                </div>
            </nav>
        </div>
    </header>
    <!--  End Header -->