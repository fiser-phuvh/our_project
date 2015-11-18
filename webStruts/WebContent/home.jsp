
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %> 
<s:include value="header.jsp" ></s:include>

    <!-- START MAIN -->
     <div class="slider">
        <ul class="slides">
          <li>
            <img src="images/slide1.jpg">
            <div class="caption center-align">
              <h4>Lorem ipsum dot asit met</h4>
              <a class="waves-effect waves-light btn">Learning Now</a>
            </div>
          </li>
           <li>
            <img src="images/slide2.jpg">
            <div class="caption left-align">
              <h4>Lorem ipsum dot asit met</h4>
              <a class="waves-effect waves-light btn">Learning Now</a>
            </div>
          </li>
          <li>
            <img src="images/slide3.jpg">
            <div class="caption right-align">
              <h4>Lorem ipsum dot asit met</h4>
              <a class="waves-effect waves-light btn">Learning Now</a>
            </div>
          </li>
          <li>
            <img src="images/slide4.jpg">
            <div class="caption center-align">
              <h4>Lorem ipsum dot asit met</h4>
              <a class="waves-effect waves-light btn">Start Learning Now</a>
            </div>
          </li> 
        </ul>
      </div>
      <div class="q_main">
          <div class="container">
              <h3 class="center-align">Most popular courses</h3>
              <div class="row">
              	<s:iterator value="popCourse" var="l">
              		<div class="col m4 grid">
                      <figure class="effect-lily">
                        <img src="images/gallary/12.jpg" alt="img12"/>
                        <figcaption>
                          <div>
                            <h2><s:property value="#l.title"/></h2>
                            <p>
                            	<a 
                            		class="waves-effect waves-light btn"
                            		href="<s:url namespace='/' action='hello'>
							        	  	<s:param name='id' value='#l.id' />
							        	  </s:url>"
							    >
							        Learn More
    							</a>
                            </p>
                          </div>

                        </figcaption>     
                      </figure>
                  	</div>
              	</s:iterator>
              </div>
              <div class="row">
                  <div class="col m4 offset-m4 center-align">
                    <a class="waves-effect waves-light btn cyan lighten-1">View all courses</a>
                  </div>
              </div>
              <h3 class="center-align">Starting Soon</h3>
              <div class="row">	
              		<s:iterator value="comingCourse" var="v">
              			<div class="col m4 grid">
                      <figure class="effect-lily">
                        <img src="images/gallary/12.jpg" alt="img12"/>
                        <figcaption>
                          <div>
                            <h2><s:property value="#v.title" /></h2>
                            <p><a class="waves-effect waves-light btn" href="courses-info.html">Learn more</a></p>
                          </div>
                          <a href="#">View more</a>
                        </figcaption>     
                      </figure>
                  </div>
              		</s:iterator>  
              </div>
               
              <div class="row">
                  <div class="col m4 offset-m4 center-align">
                    <a class="waves-effect waves-light btn green accent-3">View all courses</a>
                  </div>
              </div>
          </div>
      </div>
    <!-- END MAIN -->
<s:include value="footer.jsp" ></s:include>  