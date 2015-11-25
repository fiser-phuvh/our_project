<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
	<title><s:property value="c.title" /></title>
</head>
<body>
	<s:include value="header.jsp" />

    <div class="q_post">
       <div class="post_thumb">
         <img src="images/courses/<s:property value='c.image'/>" alt="">
       </div>
       
       <div class="post_thumb_hover">
         <div class="post_category">
           <a href="course"><s:property value="subject.name" /></a>
           <h1><s:property value="c.title"/></h1>
         </div>
         
         <div class="post-button">
           <a
           class="waves-effect waves-light btn"
           href="
           	<s:url namespace='/' action='lesson'>
          		<s:param name='courseID' value='id'/>
				<s:param name='order' value='1' />
			</s:url>"
			>
			Enroll Now
			</a>
         </div>
       </div>
    </div>
    
	<div class="container khoa">

		<div class="row">
			<div class="col m3 ">
				<img src="images/teachers/<s:property value="teacher.image" />" class="teacher-avatar hoverable circle" width="100%" alt=""/>
			</div>
			<div class="col m9">
				<h3 class="cyan-text">Teacher</h3>
				<h4 class="cyan-text"><s:property value="teacher.name" /></h4>
				<p>Email: <s:property value="teacher.email" /></p>
				<p><s:property value="teacher.info" /></p>
				<a
					class="waves-effect waves-light btn" 
					href="<s:url namespace='/' action='teacher-info'>
							<s:param name='id' value='teacher.id'/>
						  </s:url>"
				>
				See More
				</a>
			</div>
		</div>
            
		<div class="row">
			<hr>
		</div>
            
		<div class="row">
			<div class="col m9">
				<h3 class="cyan-text">Learning Plan</h3>
				<p><s:property value="c.info" /><br/></p>
			</div>
			<div class="col m3">
				<img src="images/learning-plan.png" width="100%" alt="">
			</div>
		</div>
            
		<div class="row">
			<hr>
		</div>
            
		<div class="row">
			<div class="col m3">
				<img src="images/requirement.jpg" width="100%" alt="">
			</div>
			<div class="col m9">
				<h3 class="cyan-text">Requirements</h3>
				<p><s:property value="c.info" /><br/></p>
			</div>
		</div>

		<div class="row">
			<div class="col m4 offset-m4 center-align">
				<a 
					class="waves-effect waves-light btn-large"
                    href="<s:url namespace='/' action='lesson'>
            				<s:param name='courseID' value='id'/>
						    <s:param name='order' value='1' />
						  </s:url>"
				>
				ENROLL NOW
				</a>
			</div>
		</div>
	
	    <div class="slider">
	        <ul class="slides q_slide" style="height:200px;">
	          <li>
	            <img src="">
	            <div class="caption center-align">
	              <img src="images/default-avatar.png" style="width:100px;height:100px" alt="">
	                    <p>
							Lorem ipsum dolor sit amet, quo an omnium nonumes volumus. Eu vix laoreet honestatis, mei et paulo salutandi, congue ubique equidem eu vix. Sed ea erant democritum, dolorum constituto ei duo, an timeam vulputate nam. Eos cu erat possim, te esse consectetuer sea. Mea an illum maluisset consequuntur, sale sonet pro te, qui an probo fuisset qualisque.
						</p>
	            </div>
	          </li>
	          <li>
	            <img src="">
	            <div class="caption center-align">
	              <img src="images/default-avatar.png" style="width:100px;height:100px" alt="">
	                    <p><s:property value="c.info" /><br/></p>
	            </div>
	          </li>
	          <li>
	            <img src="">
	            <div class="caption center-align">
	              <img src="images/default-avatar.png" style="width:100px;height:100px" alt="">
	                    <p><s:property value="c.info" /><br/></p>
	            </div>
	          </li>
	        </ul>
		</div>
	      
		<div class="row">
            <h3 class="center-align">Similar Courses</h3>
		</div>
			
		<div class="row">
			<s:iterator value="similarCourse" var="l">
				<s:include value="course-frame.jsp">
					<s:param name="image" value="#l.image"/>
					<s:param name="title" value="#l.title"/>
					<s:param name="id" value="#l.id"/>
					<s:param name="fee" value="#l.fee"/>
				</s:include>
			</s:iterator>
		</div>
       
	</div>

	<s:include value="footer.jsp" />
</body>
</html>