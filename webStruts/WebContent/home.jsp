<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %> 
<s:include value="header.jsp" ></s:include>
<title>Lorem Ipsum</title>

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
      
<div class="container khoa">

	<h3 class="center-align">Most Popular Courses</h3>
              
	<div class="row">
		<s:iterator value="popCourse" var="p">
			<div class="col m4 grid">
				<figure class="effect-lily">
					<img src="images/courses/<s:property value="#p.image" />" alt="img12"/>
					<figcaption>
						<div>
							<h2><s:property value="#p.title"/></h2>
							<p>
								<a 
								class="waves-effect waves-light btn"
								href="<s:url namespace='/' action='course-info'>
									  	<s:param name='id' value='#p.id' />
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
	      <a class="waves-effect waves-light btn">View all courses</a>
	    </div>
	</div>

	<div class="row">
		<div class="col m12 offset-m3 center-align">
			<hr>
		</div>
	</div>
              
	<h3 class="center-align">Starting Soon</h3>
              
    <div class="row">	
		<s:iterator value="comingCourse" var="p">
			<div class="col m4 grid">
            	<figure class="effect-lily">
					<img src="images/courses/<s:property value="#p.image"/>" alt="img12"/>
					<figcaption>
						<div>
							<h2><s:property value="#p.title" /></h2>
							<p>
								<a 
								class="waves-effect waves-light btn"
								href="<s:url namespace='/' action=''>
									  	<s:param name='id' value='#p.id' />
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
				<a class="waves-effect waves-light btn">View all courses</a>
		</div>
	</div>

</div>

<s:include value="footer.jsp" ></s:include>  