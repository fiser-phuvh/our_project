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
			        	<s:if test="isFree == 1">
						<a
							class="collection-item"
							href="
								<s:url namespace='/' action='lesson'>
									<s:param name='courseID' value='courseID'/>
									<s:param name='order' value='#i.order' />
								</s:url>
							">
							Lesson <s:property value="#i.order"/>: <s:property value="#i.title"/>
           				</a>
           				</s:if>
           				<s:elseif test="%{#i.order == 1}">
           					<a
							class="collection-item"
							href="
								<s:url namespace='/' action='lesson'>
									<s:param name='courseID' value='courseID'/>
									<s:param name='order' value='#i.order' />
								</s:url>
							">
							Lesson <s:property value="#i.order"/>: <s:property value="#i.title"/>
           				</a>
           				</s:elseif>
           				
           				<s:else>
					 		<li class="collection-item">
								<div>Lesson <s:property value="#i.order"/>: <s:property value="#i.title"/>
								<a class="secondary-content"href="
									<s:url namespace='/' action='course-info'>
										<s:param name='id' value='courseID'/>
									</s:url>">
									
									<i class="material-icons">Require Fee</i>
									</a>
								</div>
							</li>  
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