<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
	<title>Courses</title>
</head>
<body>    
	<s:include value="header.jsp" />
	
	<div class="container khoa">

		<div class="row">
			<div class="col 12">
				<h5 class="cyan-text">Search for courses</h5>
			</div>
		</div>
		
		<div class="row">
			<s:form action="course" method="post">
			
				<div class="input-field col s4">
					<select name="subjectId" onchange="this.form.submit()">
						<option value="0">All Subjects</option>
						<s:iterator value="allSubjects" var="s">
							<option value="<s:property value='#s.id' />" <s:property value='isSelected(#s.id)' /> ><s:property value='#s.name' /></option>
						</s:iterator>
					</select>
				</div>
				
				<div class="input-field col s6">					
					<input id="name" name="query" type="text" class="validate"  value=<s:property value="query"/>>
					<label for="name">Keyword</label>
				</div>
				
				<div class="input-field col s2">
					<button class="btn waves-effect waves-light" type="submit" name="action">Search
						<i class="material-icons right"></i>
					</button>
				</div>
				
			</s:form>
		</div>

		<s:iterator value="subjects" var="s">
		
			<s:if test="%{isAnyCourse(#s.id) == true}">
			<div class="row">
					<h3 class="center-align cyan-text"><s:property value="#s.name" /></h3>
			</div>
			
			<div class="row">
				<s:iterator value="getCoursesByQuery(#s.id)" var="c">
					<div class="col m4 grid">
						<figure class="effect-lily">
							<img src="images/courses/<s:property value="#c.image" />" alt="course-image"/>
							<figcaption>
								<div>
									<h2><s:property value="#c.title"/></h2>
									<p>
										<a class="waves-effect waves-light btn" href="course-info?id=<s:property value='#c.id' />">
										Learn more
										</a>
										<a class="btn-floating btn disabled">$<s:property value="#c.fee" /></a>
									</p>
								</div>
							</figcaption>
						</figure>
					</div>
				</s:iterator>
			</div>
			
			<div class="row">
				<hr>
			</div>
			</s:if>
			
		</s:iterator>
		
	</div>
	
	<s:include value="footer.jsp" />
</body>
</html>