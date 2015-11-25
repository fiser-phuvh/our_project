<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %> 
<!DOCTYPE html>
<html>
<head>
	<title><s:property value="t.name"/></title>
</head>
<body>
	<s:include value="header.jsp" />

	<div class="container hoverable khoa">

		<div class="row">
			<div class="col s4">
				<img id="teacher-thumb" class="hoverable circle materialboxed" src="images/teachers/<s:property value="t.image"/>" alt=""/>
			</div>
			<div class="col s8 right-align">
				<h1 class="cyan-text"><b><s:property value="firstName"/></b> <s:property value="lastName"/></h1>
				<h4><s:property value="subject"/></h4>
			</div>
		</div>

		<div class="row">
			<div class="col s12">
				
				<p>Email: <s:property value="t.email"/></p>
				<p>Phone: 0168 986 7153</p>
				<p>Address: 22nd floor, Keangnam Landmark Tower, E6 Pham Hung Road, Hanoi.</p>
				<p>
					Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue.
				</p>
				<p>
					Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc.
				</p>
			</div>
		</div>


		<div class="row">
			<h3 class="center-align cyan-text"><s:property value="firstName"/>'s courses</h3>
		</div>

		<div class="row">
			<s:iterator value="getCoursesByTeacher()" var="c">
				<s:include value="course-frame.jsp">
					<s:param name="image" value="#c.image"/>
					<s:param name="title" value="#c.title"/>
					<s:param name="id" value="#c.id"/>
					<s:param name="fee" value="#c.fee"/>
				</s:include>
			</s:iterator>
		</div>

		<!-- 
		<div class="row">
			<div class="col m4 offset-m4 center-align">
				<a href="course.html" class="waves-effect waves-light btn cyan">View all courses</a>
			</div>
		</div>
		 -->
	</div>
	
	<s:include value="footer.jsp" />
</body>
</html>