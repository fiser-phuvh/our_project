<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html lang="en">
<head>

<title>Admin Course</title>

<!-- Favicons-->
<link rel="icon" href="images/favicon/favicon-32x32.png" sizes="32x32">


</head>

<body>
	<s:include value="header.jsp" />



	<!-- START MAIN -->
	<div id="main">
		<!-- START WRAPPER -->
		<div class="wrapper">

			<!-- START LEFT SIDEBAR NAV-->
			<aside id="left-sidebar-nav">
				<ul id="slide-out" class="side-nav fixed leftside-navigation">

					<li class="bold active"><a href="admin-course"
						class="waves-effect waves-cyan"><i
							class="mdi-action-dashboard"></i>Manage Course</a></li>




					<li class="bold"><a href="admin-teacher"
						class="waves-effect waves-cyan"><i
							class="mdi-action-invert-colors"></i> Manage Teacher</a></li>
				</ul>
				<a href="#" data-activates="slide-out"
					class="sidebar-collapse btn-floating btn-medium waves-effect waves-light hide-on-large-only darken-2"><i
					class="mdi-navigation-menu"></i></a>
			</aside>
			<!-- END LEFT SIDEBAR NAV-->

			<!-- //////////////////////////////////////////////////////////////////////////// -->

			<!-- START CONTENT -->
			<section id="content" class="q_admin">

				<!--start container-->
				<div class="container q_table">
					<div class="col s12 m12 l12">
						<table id="data-table-simple" class="responsive-table display"
							cellspacing="0">
							<thead>
								<tr>
									<th>Name</th>
									<th>Teacher</th>
									<th>N.O.L</th>
									<th>Date</th>
									<th>Info</th>
									<th>Action</th>
								</tr>
							</thead>
							<tbody>

								<s:iterator value="allCourse" var="l">
									<tr>
										<td><s:property value="#l.title" /></td>
										<td><s:property value="#l.teachers.name" /></td>
										<td><s:property value="#l.getNumberOfLesson()" /></td>
										<td><s:property value="#l.startDate" /></td>
										<td><s:property value="#l.info" /></td>
										<td><a href="#modaledit<s:property value="#l.id" />" class="modal-trigger"><i
												style="font-size: 22px" class="mdi-editor-border-color"></i></a>
											<a href="#"><i style="font-size: 22px"
												class="mdi-action-delete"></i></a></td>
									</tr>




								</s:iterator>





								<!-- <tr>
									<td>Algebra</td>
									<td>Kristen Stewart</td>
									<td>13</td>
									<td>2015-10-10</td>
									<td>Algebra is one of the broad parts of mathematics,
										together with number theory...</td>
									<td><a href="#modaledit" class="modal-trigger"><i
											style="font-size: 22px" class="mdi-editor-border-color"></i></a>
										<a href="#"><i style="font-size: 22px"
											class="mdi-action-delete"></i></a></td>
								</tr> -->



							</tbody>
						</table>











						<div id="modaledit" class="modal">
						
						
						
						<form>
							<div class="modal-content">
								<div class="input-field">
									<input id="name" type="text" class="validate" value="Algebra">
									<label for="name">Name</label>
								</div>
								<div class="input-field">
									<input id="teacher" type="text" class="validate"
										value="Kristen Stewart"> <label for="teacher">Teacher</label>
								</div>
								<div class="input-field">
									<input id="startdate" type="date" class="datepicker"
										value="10/10/2015"> <label for="startdate">Starting
										Date</label>
								</div>
								<div class="input-field">
									<input id="nol" type="text" class="validate" value="13">
									<label for="nol">N.O.L</label>
								</div>
								<div class="input-field">
									<textarea id="info" class="materialize-textarea">Algebra is one of the broad parts of mathematics, together with number theory...</textarea>
									<label for="info">Description</label>
								</div>
								<a href="#modallesson"
									class="waves-effect waves-light btn green lighten-2 modal-trigger">Add
									lesson</a>
							</div>
							<div class="modal-footer">
								<!-- <a href="#"
									class="waves-effect waves-red btn-flat modal-action modal-close">Cancel</a> -->
								<input type="submit"
									class="waves-effect waves-green btn-flat modal-action modal-close">Submit />
							</div>
							
							</form>
							
							
							
							
							
							
							
							
						</div>
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						<div id="modallesson" class="modal">
							<div class="modal-content">
								<div class="input-field">
									<input id="title" type="text" class="validate" value="Intro">
									<label for="title">Title</label>
								</div>
								<div class="input-field">
									<input id="infolesson" type="text" class="validate"
										value="abcd"> <label for="infolesson">Info</label>
								</div>
								<div class="file-field input-field">
									<input class="file-path validate" type="text" /> <span>Video</span>
									<input type="file" />
								</div>
							</div>
							<div class="modal-footer">
								<a href="#"
									class="waves-effect waves-red btn-flat modal-action modal-close">Cancel</a>
								<a href="#"
									class="waves-effect waves-green btn-flat modal-action modal-close">Submit</a>
							</div>
						</div>
					</div>
					<div class="row">
						<a
							class="waves-effect waves-light btn cyan lighten-1 left modal-trigger"
							style="margin-left: 10px" href="#modaladd">Add course</a>
					</div>
					<div id="modaladd" class="modal">
						<div class="modal-content">
							<div class="input-field">
								<input id="name" type="text" class="validate" value="">
								<label for="name">Name</label>
							</div>
							<div class="input-field">
								<input id="teacher" type="text" class="validate" value="">
								<label for="teacher">Teacher</label>
							</div>
							<div class="input-field">
								<input id="startdate" type="date" class="datepicker" value="">
								<label for="startdate">Starting Date</label>
							</div>
							<div class="input-field">
								<input id="nol" type="text" class="validate" value=""> <label
									for="nol">N.O.L</label>
							</div>
							<div class="input-field">
								<textarea id="info" class="materialize-textarea"></textarea>
								<label for="info">Description</label>
							</div>
							<a href="#modallesson"
								class="waves-effect waves-light btn green lighten-2 modal-trigger">Add
								lesson</a>
						</div>
						<div class="modal-footer">
							<a href="#"
								class="waves-effect waves-red btn-flat modal-action modal-close">Cancel</a>
							<a href="#"
								class="waves-effect waves-green btn-flat modal-action modal-close">Submit</a>
						</div>
					</div>
				</div>
				<!--end container-->
			</section>
			<!-- END CONTENT -->

		</div>
		<!-- END WRAPPER -->

	</div>

	<!-- Scripts-->
	<!-- jQuery Library -->
	<script type="text/javascript" src="js/jquery-1.11.2.min.js"></script>
	<script type="text/javascript" src="js/jquery.dataTables.min.js"></script>
	<script type="text/javascript" src="js/data-tables-script.js"></script>
	<!--materialize js-->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.2/js/materialize.min.js"></script>
	<!--plugins.js - Some Specific JS codes for Plugin Settings-->
	<script type="text/javascript" src="js/plugins.js"></script>
</body>

</html>