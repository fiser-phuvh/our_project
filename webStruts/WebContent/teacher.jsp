<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %> 
<!DOCTYPE html>
<html>
<head>
	<title>Teachers</title>
</head>
<body>
	<s:include value="header.jsp" />

	<div class="slider">
		<ul class="slides">
			<li>
				<img src="images/slides/slide-01.jpg">
				<div class="caption right-align">
					<h3>Lorem Ipsum</h3>
					<p>Lorem ipsum dolor sit amet consectetur adipiscing elit,<br>sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<br>Ut enim ad minim veniam, quis nostrud exercitation<br>ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
            	</div>
          	</li>
          	<li>
				<img src="images/slides/slide-02.jpg">
				<div class="caption right-align">
					<h3>Lorem Ipsum</h3>
					<p>Lorem ipsum dolor sit amet consectetur adipiscing elit,<br>sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<br>Ut enim ad minim veniam, quis nostrud exercitation<br>ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
            	</div>
          	</li>
        </ul>
	</div>

	<div class="container khoa">

		<s:iterator value="subjects" var="s">
			<div class="row">
				<h3 class="center-align cyan-text"><s:property value="#s.name" /></h3>
			</div>
			
			<div class="row">
				<s:iterator value="getTeachersBySubject(#s.id)" var="t">
					<div class="col m4 grid">
						<figure class="effect-milo">
							<img src="images/teachers/<s:property value="#t.image" />" alt=""/>
							<figcaption>
								<div>
									<h2><s:property value="#t.name" /></h2>
									<p>
										<s:property value="#t.name" />
										<br><br>
						  				<a
						  				class="waves-effect waves-light btn" 
						  				href="<s:url namespace='/' action='teacher-info'>
						  				   		<s:param name='id' value='#t.id'/>
											  </s:url>"
						  				>
							        		See More
    									</a>
									</p>
					  			</div>
							</figcaption>     
						</figure>
					</div>
				</s:iterator>
			</div>
			
			<!-- 
			<div class="row">
				<div class="col m4 offset-m4 center-align">
					<a class="waves-effect waves-light btn">Load more</a>
				</div>
			</div>
			 -->
			
			<div class="row">
				<div class="col m12 offset-m3 center-align">
					<hr>
				</div>
			</div>
		</s:iterator>
		
	</div>
		
	<s:include value="footer.jsp" />
</body>
</html>