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
	<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
</head>
<body>
	<!-- Start Page Loading -->
	<!-- ************** TAM THOI BO CAI NAY DE DEBUG CHO DE **********
    <div id="loader-wrapper">
        <div id="loader"></div>        
        <div class="loader-section section-left"></div>
        <div class="loader-section section-right"></div>
    </div>
     -->
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
				        <li><a href="home">Home</a></li>
                        <li><a href="course">Courses</a></li>
                        <li><a href="teacher">Teachers</a></li>
                        <li><a href="about-us">About us</a></li>
                        
                        <s:if test="%{username != NULL}">
                        	<li class="active">
                        		<a class="dropdown-button" href="#" data-activates="dropdown1">
                        			Welcome, <b><s:property value="username" /></b>
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
							<li class="waves-effect waves-light btn right"><a href="#">Sign up</a></li>
                        </s:else>
				     </ul>
				     
                  	 <ul class="side-nav" id="mobile-demo">
				        <li><a href="home">Home</a></li>
                        <li><a href="course">Courses</a></li>
                        <li><a href="teacher">Teachers</a></li>
                        <li><a href="about-us">About us</a></li>
                        <li><a href="">Login</a></li>
                        <s:if test="%{username != NULL}">
                        	<li><a class="dropdown-button" href="#!" data-actives="dropdown1">
                        		<s:property value="username" />
                        		<i class="material-icons right">arrow_drop_down</i>
                        	</a></li>
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
                        </s:if>
                        
                        <s:else>                      
							<li><a href="Login_r.jsp">Login</a></li>
							<li><a href="#">Sign up</a></li>
                        </s:else>
		      		</ul>
                </div>
            </nav>
        </div>
    </header>
    <!--  End Header -->