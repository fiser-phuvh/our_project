<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %> 
<!DOCTYPE html>
<html>
<head>
	<title><s:property value="currentCourse.title"/></title>
</head>
<body>
	<s:include value="header.jsp"></s:include>

	<div class="container khoa">
	
		<div class="row">
			<h3 class="center-align cyan-text">
				<s:property value="currentCourse.title"/>
			</h3>
		</div>
		
		<div class="row">
		
			<div class="col m8">
				<video class="responsive-video" controls style="width:100%">
					<source src="http://clips.vorwaerts-gmbh.de/big_buck_bunny.mp4" type="video/mp4">
				</video>
				<ul class="collection with-header">
			        <li class="collection-header"><h4>Contents</h4></li>
			        <s:iterator value="lessons" var="i">
			        	<s:if test="isFree(#i.order)">
				        	<a
								class="collection-item"
								href="lesson?courseID=<s:property value='courseID'/>&order=<s:property value='#i.order'/>"
							>
								Lesson <s:property value="#i.order"/>: <s:property value="#i.title"/>
	           				</a>
           				</s:if>
						<s:else>
							<ul class="collection-item">
								<span>Lesson <s:property value="#i.order"/>: <s:property value="#i.title"/></span>
								<a class="secondary-content" href="course-info?id=<s:property value='courseID'/>">
									Buy This Course
								</a>
	           				</ul>
						</s:else>
					</s:iterator>
				</ul>
			</div>
			<div class="col m4">
				<div class="card">
					<div class="card-image">
						<img src="images/courses/<s:property value='currentCourse.image' />">
						<span class="card-title">Lesson <s:property value="currentLesson.order"/>: <s:property value="currentLesson.title"/></span>
					</div>
					<div class="card-content">
						<p><s:property value="currentLesson.info" /></p>
					</div>
				</div>
			</div>
			
		</div>
		
	</div>

    <s:include value="footer.jsp"></s:include>
</body>
</html>