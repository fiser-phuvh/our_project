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
			<div class="input-field col s4">
				<select>
					<option value="" disabled selected>Choose a subject</option>
					<option value="1">Mathematics</option>
					<option value="2">Physics</option>
					<option value="3">English</option>
				</select>
			</div>
			<div class="input-field col s8">
				<!-- <i class="material-icons prefix">search</i> -->
				<input id="first_name" type="text" class="validate">
				<label for="first_name">Type a name</label>
			</div>
		</div>

		<s:iterator value="subjects" var="s">
		
			<div class="row">
				<h3 class="center-align cyan-text"><s:property value="#s.name" /></h3>
			</div>
			
			<div class="row">
				<s:iterator value="getCoursesBySubject(#s.id)" var="c">
					<div class="col m4 grid">
						<figure class="effect-lily">
						  <img src="images/courses/<s:property value="#c.image" />" alt="course-image"/>
							<figcaption>
                          <div>
                            <h2><s:property value="#c.title"/></h2>
                            <p>
                            	<a
								class="waves-effect waves-light btn"
								href="<s:url namespace='/' action='course-info'>
										<s:param name='id' value='#c.id' />
									  </s:url>"
								>
								Learn more
								</a>
							</p>
                          </div>
                        </figcaption>
                       </figure>
					</div>
				</s:iterator>
			</div>
			
			<div class="row">
				<div class="col m12 center-align">
					<hr>
				</div>
			</div>
			
		</s:iterator>
		
	</div>
	
	<s:include value="footer.jsp" />
</body>
</html>