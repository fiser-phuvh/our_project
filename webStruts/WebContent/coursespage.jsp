<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
	<title>Courses</title>
</head>

<body>
	 <!-- Start Page Loading -->
    <div id="loader-wrapper">
        <div id="loader"></div>        
        <div class="loader-section section-left"></div>
        <div class="loader-section section-right"></div>
    </div>
    <!-- End Page Loading -->
    
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

<!--
 			<s:iterator value="allSubjects" var="s">
			<div class="row">
				<h3 class="center-align cyan-text"><s:property value="#s.name" /></h3>
			</div>
			
			<div class="row">
				<s:iterator value="getCourseBySubject(#s.id)" var="l">
					<div class="col m4 grid">
						<figure class="effect-milo">
						  <img src="images/gallary/12.jpg" alt="img12"/>
							<figcaption>
                          <div>
                            <h2><s:property value="#l.title"/></h2>
                            <p><a class="waves-effect waves-light btn" href="<s:url namespace='/' action='courseinfo'> <s:param name='id' value='#l.id' /></s:url> ">Learn more</a></p>
                          </div>
                        </figcaption>
                       </figure>
					</div>
				</s:iterator>
			</div>
			<div class="row">
				<div class="col m6 offset-m3 center-align">
					<hr>
				</div>
			</div>
		</s:iterator> -->
  			<div class="row">
  			  	<s:iterator value="allCourses" var="l">
              		<div class="col m4 grid">
                      <figure class="effect-lily">
                        <img src="images/gallary/12.jpg" alt="img12"/>
                        <figcaption>
                          <div>
                            <h2><s:property value="#l.title"/></h2>
                            <p><a class="waves-effect waves-light btn" href="<s:url namespace='/' action='courseinfo'> <s:param name='id' value='#l.id' /></s:url> ">Learn more</a></p>
                          </div>
                        </figcaption>     
                      </figure>
                  	</div>
              	</s:iterator>
			</div>



		<div class="row">
			<div class="col m4 offset-m4 center-align">
				<a class="waves-effect waves-light btn">View all courses</a>
			</div>
		</div>

		<div class="row">
			<div class="col m6 offset-m3 center-align">
				<hr>
			</div>
		</div>

	</div> <!-- Container's end tag -->
	<!-- Footer -->
	<s:include value="footer.jsp" />
	
     <!-- Scripts-->
    <!-- jQuery Library -->
    <script type="text/javascript" src="js/jquery-1.11.2.min.js"></script>    
    <!--materialize js-->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.2/js/materialize.min.js"></script> 
    <!--plugins.js - Some Specific JS codes for Plugin Settings-->
    <script type="text/javascript" src="js/plugins.js"></script>
    <script type="text/javascript">
		$(document).ready(function() {
			$(".mdi-navigation-arrow-drop-down").hide();
		});
	</script>
</body>
</html>