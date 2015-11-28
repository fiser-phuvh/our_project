
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Admin Teacher</title>    
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
                    <li class="bold"><a href="admin-course" class="waves-effect waves-cyan"><i class="mdi-action-dashboard"></i>Manage Course</a>
                    </li>
                    <li class="bold active"><a href="admin-teacher" class="waves-effect waves-cyan"><i class="mdi-action-invert-colors"></i> Manage Teacher</a>
                    </li>
                </ul>
            </aside>
            <!-- END LEFT SIDEBAR NAV-->

            <!-- START CONTENT -->
            <section id="content" class="q_admin">

                <!--start container-->
                <div class="container q_table">
                    <div class="col s12 m12 l12">
                        <table id="data-table-simple" class="display" cellspacing="0">
                        <thead>
                            <tr>
                                <th>Name</th>
                                <th>Subject</th>
                                <th>Email</th>
                                <th>Info</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                        	<s:iterator value="allTeachers"  var="l">
                        		<tr>
                                	<td><s:property  value="#l.name" /></td>
                                	<td><s:property value="#l.subjects.name"  /></td>
                                	<td><s:property value="#l.email" /></td>
                                	<td><s:property  value="#l.info" /> </td>
                                	<td>
                                   <a href="#modaledit<s:property value="#l.id"/>" class="modal-trigger"><i style="font-size:22px" class="mdi-editor-border-color"></i></a>
                                   <a href="delete-teacher?id=<s:property value='#l.id' />"><i style="font-size:22px" class="mdi-action-delete"></i></a>
                                	</td>
                            	</tr>
                        	</s:iterator>
                        </tbody>
                      </table>
                      
                      
                      
                      <!-- Edit -->
                      
                      
                      
                      
                      <s:iterator value="allTeachers" var="l">
                      	<div id="modaledit<s:property value="#l.id" />" class="modal">
                      
                      <form action="update-teacher" method="post">
                        <div class="modal-content">
                           <div class="input-field">
                          
                            <input id="ID" type="text" class="validate" value="<s:property  value="#l.id" />" name="id" readonly>
                            <label for="ID">ID</label>
                            
                          </div>
                           
                           
                          <div class="input-field">
                          
                            <input id="name" type="text" class="validate" value="<s:property  value="#l.name" />" name="name">
                            <label for="name">Name</label>
                            
                          </div>
                          <p>Subject</p>
                          
                          
                          <s:iterator value="allSubjects" var="s">
                          
                          
                          	<s:set name="sid" value="#s.id" />
                          	<s:if test="%{#sid==#l.subjects.id}" >
                          	
                          	<p>
                            	<input name="subject" type="radio" id="<s:property value="#s.id" /><s:property value="#l.id" />"  checked="checked" value='<s:property value="#s.id" />'>
                            	<label for="<s:property value="#s.id" /><s:property value="#l.id" />"><s:property  value="#s.name" /></label>
                          	</p>
                          	
                          	</s:if>
                          	<s:else>
                          	<p>
                            	<input name="subject" type="radio" id="<s:property value="#s.id" /><s:property value="#l.id" />" value='<s:property value="#s.id" />' >
                            	<label for="<s:property value="#s.id" /><s:property value="#l.id" />"><s:property  value="#s.name" /></label>
                          	</p>
                          </s:else>
                          
                          </s:iterator>
                          
                          <!--  
                          <p>
                            <input name="subject" type="radio" id="english" checked/>
                            <label for="english">English</label>
                          </p>
                          <p>
                            <input name="subject" type="radio" id="math" />
                            <label for="math">Mathmetics</label>
                          </p>
                          <p>
                            <input name="subject" type="radio" id="bla" />
                            <label for="bla">Blabla</label>
                          </p>
                          -->
                          
                          
                          
                          <div class="input-field">
                            <input id="emailteacher" type="email" class="validate" value='<s:property value="#l.email" />' name="email">
                            <label for="emailteacher">Email</label>
                          </div>
                          <div class="input-field">
                            <textarea id="info" class="materialize-textarea" name="info"><s:property value="#l.info" /></textarea>
                            <label for="info">Info</label>
                          </div>
                        </div>
                        <div class="modal-footer">
                        	<input class="waves-effect waves-green btn-flat modal-action modal-close" type="submit" value="SUBMIT" />
                         <!-- <a href="#" class="waves-effect waves-red btn-flat modal-action modal-close">Cancel</a> --> 
                         <!--  <a href="#" class="waves-effect waves-green btn-flat modal-action modal-close">Submit</a> --> 
                        </div>
                        
                         </form>
                      </div> 
                      
                      
                      
                      </s:iterator>
                      
                      
                      
                      
                      
                      
                      
                      <!-- --> 
                      
                       
                      
                  
                      
                      
                      
                     
                      
                      
                      
                      
                      
                      
                  </div>
                  <div class="row">
                    <a class="waves-effect waves-light btn cyan lighten-1 left modal-trigger" style="margin-left:10px" href="#modaladd">Add teacher</a>
                  </div>
                  
                  
                  
                  
                  <!-- Add here -->
                  <div id="modaladd" class="modal">
                  	<form action="add-teacher" method="post" >
                    <div class="modal-content">
                          <div class="input-field">
                            <input id="name" type="text" class="validate" value="Default" name="name">
                            <label for="name">Name</label>
                          </div>
                          <p>Subject</p>
                          
                          
                          <s:iterator value="allSubjects" var="s">
                          	<p>
                            	<input name="subjectId" type="radio" id="<s:property value="#s.id" />" value="<s:property value="#s.id" />"  checked="checked">
                            	<label for="<s:property value="#s.id" />"><s:property  value="#s.name" /></label>
                          	</p>
                          
                          
                          </s:iterator>
                          
                          
                          
                          
                          <!-- <p>
                            <input name="subjectadd" type="radio" id="englishadd" checked/>
                            <label for="englishadd">English</label>
                          </p>
                          <p>
                            <input name="subjectadd" type="radio" id="mathadd" />
                            <label for="mathadd">Mathmetics</label>
                          </p>
                          <p>
                            <input name="subjectadd" type="radio" id="blaadd" />
                            <label for="blaadd">Blabla</label>
                          </p> -->
                          <div class="input-field">
                            <input id="emailteacher" type="email" class="validate" value="default@mail.com" name="email">
                            <label for="emailteacher">Email</label>
                          </div>
                          <div class="input-field">
                            <textarea id="info" class="materialize-textarea" name="info">Default Infomation</textarea>
                            <label for="info">Info</label>
                          </div>
                        </div>
                    <div class="modal-footer">
                    
                    
                      
                      <!--   <a href="#" class="waves-effect waves-green btn-flat modal-action modal-close">Submit</a>-->
                     
                      <input class="waves-effect waves-green btn-flat modal-action modal-close" type="submit" value="Submit" />
                      
                    </div>
                    
                    </form>
                    
                    
                    
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
    <script src="js/jquery-1.11.2.min.js"></script>    
    <script src="js/materialize.min.js"></script> 
    <script type="text/javascript" src="js/jquery.dataTables.min.js"></script>
    <script type="text/javascript" src="js/data-tables-script.js"></script>
    <script src="js/plugins.js"></script>
</body>

</html>