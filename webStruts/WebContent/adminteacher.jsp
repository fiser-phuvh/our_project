
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
                    <li class="user-details cyan darken-2">
                        <div class="row">
                            <div class="col col s4 m4 l4">
                                <img src="images/avatar.jpg" alt="" class="circle responsive-img valign profile-image">
                            </div>
                            <div class="col col s8 m8 l8">
                                <ul id="profile-dropdown" class="dropdown-content">
                                    <li style="min-height:41px"><a href="#" style="line-height:41px"><i class="mdi-hardware-keyboard-tab"></i> Logout</a>
                                    </li>
                                </ul>
                                <a class="btn-flat dropdown-button waves-effect waves-light white-text profile-btn" href="#" data-activates="profile-dropdown"><s:property value="username"/>
                                <i class="mdi-navigation-arrow-drop-down right"></i></a>
                                <p class="user-roal">Administrator</p>
                            </div>
                        </div>
                    </li>
                    <li class="bold"><a href="admincourse.html" class="waves-effect waves-cyan"><i class="mdi-action-dashboard"></i>Manage Course</a>
                    </li>
                    <li class="bold active"><a href="adminteacher.html" class="waves-effect waves-cyan"><i class="mdi-action-invert-colors"></i> Manage Teacher</a>
                    </li>
                </ul>
                <a href="#" data-activates="slide-out" class="sidebar-collapse btn-floating btn-medium waves-effect waves-light hide-on-large-only darken-2"><i class="mdi-navigation-menu" ></i></a>
            </aside>
            <!-- END LEFT SIDEBAR NAV-->

            <!-- //////////////////////////////////////////////////////////////////////////// -->

            <!-- START CONTENT -->
            <section id="content" class="q_admin">

                <!--start container-->
                <div class="container q_table">
                    <div class="col s12 m12 l12">
                        <table id="data-table-simple" class="responsive-table display" cellspacing="0">
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
                                   <a href="#modaledit" class="modal-trigger"><i style="font-size:22px" class="mdi-editor-border-color"></i></a>
                                   <a href="#"><i style="font-size:22px" class="mdi-action-delete"></i></a>
                                	</td>
                            	</tr>
                        	
                        	
                        	
                        	</s:iterator>
                        	
                            <tr>
                                <td>Kristen Stewart</td>
                                <td>Mathematics</td>
                                <td>kris@mail.com</td>
                                <td>tewart was listed as the highest-earning female actress in the Vanity Fair "Hollywood Top Earners List of 2010", with an estimated earning of $28.5 million. </td>
                                <td>
                                   <a href="#modaledit" class="modal-trigger"><i style="font-size:22px" class="mdi-editor-border-color"></i></a>
                                   <a href="#"><i style="font-size:22px" class="mdi-action-delete"></i></a>
                                </td>
                            </tr>
                            
                            
                            
                            
                            
                            <!-- 
                            <tr>
                                <td>Emma Watson</td>
                                <td>English</td>
                                <td>emma@mail.com</td>
                                <td>From 2011 to 2014, Watson split her time between working on film projects and continuing her education</td>
                                <td>
                                   <a href="#modaledit" class="modal-trigger"><i style="font-size:22px" class="mdi-editor-border-color "></i></a>
                                   <a href="#"><i style="font-size:22px" class="mdi-action-delete"></i></a>
                                </td>
                            </tr>
                            
                             -->
                            
                            
                            
                      
                        </tbody>
                      </table>
                      <div id="modaledit" class="modal">
                        <div class="modal-content">
                          <div class="input-field">
                            <input id="name" type="text" class="validate" value="Kristen Stewart">
                            <label for="name">Name</label>
                          </div>
                          <p>Subject</p>
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
                          <div class="input-field">
                            <input id="emailteacher" type="email" class="validate" value="kris@mail.com">
                            <label for="emailteacher">Email</label>
                          </div>
                          <div class="input-field">
                            <textarea id="info" class="materialize-textarea">Algebra is one of the broad parts of mathematics, together with number theory...</textarea>
                            <label for="info">Info</label>
                          </div>
                        </div>
                        <div class="modal-footer">
                        	<input class="waves-effect waves-green btn-flat modal-action modal-close" type="submit" value="SUBMIT" />
                          <a href="#" class="waves-effect waves-red btn-flat modal-action modal-close">Cancel</a>
                         <!--  <a href="#" class="waves-effect waves-green btn-flat modal-action modal-close">Submit</a> --> 
                        </div>
                      </div>
                  </div>
                  <div class="row">
                    <a class="waves-effect waves-light btn cyan lighten-1 left modal-trigger" style="margin-left:10px" href="#modaladd">Add teacher</a>
                  </div>
                  <div id="modaladd" class="modal">
                  	<form>
                    <div class="modal-content">
                          <div class="input-field">
                            <input id="name" type="text" class="validate" value="Kristen Stewart">
                            <label for="name">Name</label>
                          </div>
                          <p>Subject</p>
                          <p>
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
                          </p>
                          <div class="input-field">
                            <input id="emailteacher" type="email" class="validate" value="kris@mail.com">
                            <label for="emailteacher">Email</label>
                          </div>
                          <div class="input-field">
                            <textarea id="info" class="materialize-textarea">Algebra is one of the broad parts of mathematics, together with number theory...</textarea>
                            <label for="info">Info</label>
                          </div>
                        </div>
                    <div class="modal-footer">
                    
                    
                      <a href="#" class="waves-effect waves-red btn-flat modal-action modal-close">Cancel</a>
                      <a href="#" class="waves-effect waves-green btn-flat modal-action modal-close">Submit</a>
                     
                      
                      
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
    <script type="text/javascript" src="js/jquery-1.11.2.min.js"></script>
    <script type="text/javascript" src="js/jquery.dataTables.min.js"></script>
    <script type="text/javascript" src="js/data-tables-script.js"></script>      
    <!--materialize js-->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.2/js/materialize.min.js"></script> 
    <!--plugins.js - Some Specific JS codes for Plugin Settings-->
    <script type="text/javascript" src="js/plugins.js"></script>
</body>

</html>