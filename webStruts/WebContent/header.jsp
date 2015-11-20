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
	<!-- <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet"> -->
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
                    <h1 class="logo-wrapper"><a href="home" class="brand-logo darken-1"><img style="height:50px" src="images/lorem-logo.png" alt="materialize logo"></a></h1>
                    <ul class="right q_nav">
                        <li><a href="home">Home</a></li>
                        <li><a href="course">Courses</a></li>
                        <li><a href="teacher">Teachers</a></li>
                        <li><a href="about-us">About us</a></li>
                        <li><a href="#">User Profile</a></li>
						<a class="waves-effect waves-light btn right" href="#">Login</a>
						<a class="waves-effect waves-light btn right" href="#">Sign up</a>
                    </ul>
                </div>
            </nav>
        </div>
    </header>
    <!--  End Header -->