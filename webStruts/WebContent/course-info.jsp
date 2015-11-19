<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
	<title>Course Info</title>
</head>

<body>
	<s:include value="header.jsp" />

    <!-- START MAIN -->
    <div class="q_post">
       <div class="post_thumb">
         <img src="images/masonry_13-1150x647.jpg" alt="">
         
       </div>
       <div class="post_thumb_hover">
         <div class="post_category">
           <a href=""><s:property value="subject.name" /></a>
           <h1><s:property value="c.title"/></h1>
         </div>
         <div class="post-button">
           <a href="lesson.html" class="waves-effect waves-light btn">Enroll Now</a>
         </div>
       </div>
    </div>
    <div class="q_main">
        <div class="container">
            <div class="row">
                <div class="col m3 ">
                    <img src="images/teachers/<s:property value="teacher.image" />" class="teacher-avatar" width="200" height="200" alt=""/>
                    
                </div>
                <div class="col m9">
                    <h3>Teacher</h3>
                    <p><s:property value="teacher.name" /><br/>
					<s:property value="teacher.email" /><br/>
					<s:property value="teacher.info" /><br/>
                </div>
            </div>
            <div class="row">
                <div class="col m9">
                    <h3>Learning plan</h3>
                    <p><s:property value="c.info" /><br/></p>
                </div>
                <div class="col m3">
                    <img src="images/learning-plan.png" height="200" width="200" alt="">
                </div>
            </div>
            <div class="row">
                <div class="col m3">
                    <img src="images/requirement.jpg" height="200" width="200" alt="">
                </div>
                <div class="col m9">
                    <h3>Requirements</h3>
                    <p><s:property value="c.info" /><br/></p>
                </div>
            </div>
            <div class="row">
                  <div class="col m4 offset-m4 center-align">
                    <a href="lesson.html" class="waves-effect waves-light btn teal accent-3">ENROLL NOW</a>
                  </div>
              </div>
        </div>
    </div>
    <div class="slider">
        <ul class="slides q_slide" style="height:300px;">
          <li>
            <img src="">
            <div class="caption center-align">
              <img src="images/default-avatar.png" style="width:100px;height:100px" alt="">
                    <p><s:property value="c.info" /><br/></p>
            </div>
          </li>
          <li>
            <img src="">
            <div class="caption center-align">
              <img src="images/default-avatar.png" style="width:100px;height:100px" alt="">
                    <p><s:property value="c.info" /><br/></p>
            </div>
          </li>
          <li>
            <img src="">
            <div class="caption center-align">
              <img src="images/default-avatar.png" style="width:100px;height:100px" alt="">
                    <p><s:property value="c.info" /><br/></p>
            </div>
          </li>
        </ul>
      </div>
    <div class="q_main">
        <div class="container">
            <h3 class="center-align">Other Courses</h3>
              <div class="row">
                  <s:iterator value="similarCourse" var="l">
              			<div class="col m4 grid">
                      <figure class="effect-lily">
                        <img src="images/courses/<s:property value='#l.image' />" alt="img12"/>
                        <figcaption>
                          <div>
                          <h2><s:property value="#l.title"/></h2>
                          <p>
								<a
								class="waves-effect waves-light btn"
								href="<s:url namespace='/' action="course-info">
										<s:param name='id' value='#l.id' />
									  </s:url> ">
								Learn more
								</a>
							</p>
                          </div>
                        </figcaption>     
                      </figure>
                  		</div>
              		</s:iterator>
              
              </div>
        </div>
    </div>
    
	<s:include value="footer.jsp" />
</body>
</html>