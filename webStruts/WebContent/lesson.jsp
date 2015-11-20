<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
</head>
<body>
	<s:include value="header.jsp"></s:include>
  	
    <div class="container">
      <div class="row">
        <h3 class="center-align cyan-text">SUBJECTS: <s:property value="tempSubjects"/></h3>
        <h3 class="center-align cyan-text">Lesson <s:property value="tempOrder"/>: <s:property value="tempTitle"/></h3>
      </div>
      <div class="q_margin">
        <video class="responsive-video q_video" controls style="width:100%">
          <source src="http://clips.vorwaerts-gmbh.de/big_buck_bunny.mp4" type="video/mp4">
        </video>
      </div>
    </div>
    
    
    <div class="q_main" style="margin-top:50px">
      <div class="container">
        <div class="row">
          <div class="col m8">
            <h4>Content</h4>
            <div class="content_video">
            		
            	<s:iterator value="lesson" var="i">
            		<p><a href=
            		<s:url namespace='/' action='lesson'>
            		<s:param name='courseID' value='courseID'/>
					<s:param name='order' value='#i.order' />
					
					</s:url>>
            			<p>Bai <s:property value="#i.order"/>: <s:property value="#i.title"/></p>
            		</a></p>
            	</s:iterator>
            	
            		
            	
              <!--  <p><a href="">Lesson 1 : Introduction</a></p>
              <p><a href="">Lesson 2 : Continuos Present Tense</a></p>
              <p><a href="">Lesson 3 : Simple Present Tense</a></p>
              <p><a href="">Lesson 4 : Bla bla bla</a></p> --> 
            </div>
          </div>
          <div class="col m4">
            <h4>Details</h4>
           	<p><s:property value="tempInfo" /></p>
   
          </div>
        </div>
      </div>
    </div>
    <!-- END MAIN -->
    
    <s:include value="footer.jsp"></s:include>
</body>
</html>