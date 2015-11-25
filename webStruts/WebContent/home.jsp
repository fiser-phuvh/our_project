<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %> 
<s:include value="header.jsp" ></s:include>
<title>Lorem Ipsum</title>

     <div class="slider">
        <ul class="slides">
          <li>
            <img src="images/slide1.jpg">
            <div class="caption center-align">
              <h4>Lorem ipsum dot asit met</h4>
              <a href="about-us" class="waves-effect waves-light btn">About Us</a>
            </div>
          </li>
           <li>
            <img src="images/slide2.jpg">
            <div class="caption left-align">
              <h4>Lorem ipsum dot asit met</h4>
              <a href="course" class="waves-effect waves-light btn">See All Courses</a>
            </div>
          </li>
          <li>
            <img src="images/slide3.jpg">
            <div class="caption right-align">
              <h4>Lorem ipsum dot asit met</h4>
              <a href="teacher" class="waves-effect waves-light btn">Meet Our Teachers</a>
            </div>
          </li>
        </ul>
      </div>
      
<div class="container khoa">

	<h3 class="center-align">Most Popular Courses</h3>
              
	<div class="row">
		<s:iterator value="popCourse" var="c">
			<s:include value="course-frame.jsp">
				<s:param name="image" value="#c.image"/>
				<s:param name="title" value="#c.title"/>
				<s:param name="id" value="#c.id"/>
				<s:param name="fee" value="#c.fee"/>
			</s:include>
		</s:iterator>
	</div>
              
	<div class="row">
	    <div class="col m4 offset-m4 center-align">
	      <a class="waves-effect waves-light btn" href="course">View all courses</a>
	    </div>
	</div>

	<div class="row">
		<div class="col m12 offset-m3 center-align">
			<hr>
		</div>
	</div>
              
	<h3 class="center-align">Starting Soon</h3>
              
    <div class="row">	
		<s:iterator value="comingCourse" var="c">
			<s:include value="course-frame.jsp">
				<s:param name="image" value="#c.image"/>
				<s:param name="title" value="#c.title"/>
				<s:param name="id" value="#c.id"/>
				<s:param name="fee" value="#c.fee"/>
			</s:include>
		</s:iterator>  
	</div>
               
	<div class="row">
		<div class="col m4 offset-m4 center-align">
				<a class="waves-effect waves-light btn" href="course">View all courses</a>
		</div>
	</div>

</div>

<s:include value="footer.jsp" ></s:include>  