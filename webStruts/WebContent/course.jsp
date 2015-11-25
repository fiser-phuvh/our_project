<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
	<title>Courses</title>
</head>
<body>    
	<s:include value="header.jsp" />
	
	<div class="container khoa">

		<div class="row">
			<div class="col 12">
				<h5 class="cyan-text">Search for courses</h5>
			</div>
		</div>
		
		<div class="row">
			<s:form action="course" method="post">
			
				<div class="input-field col s3">
					<select name="subjectId" onchange="this.form.submit()">
						<option value="0">All Subjects</option>
						<s:iterator value="allSubjects" var="s">
							<option value="<s:property value='#s.id' />" <s:property value='isSelected(#s.id)' /> ><s:property value='#s.name' /></option>
						</s:iterator>
					</select>
				</div>
				
				<div class="input-field col s6">					
					<input id="final_span" name="query" type="text" class="validate" value=<s:property value="query"/>>
					<label for="final_span">Keyword</label>
				</div>
				
				<div class="input-field col s3">
					<span id="interim_span" style="display:none"></span>
    				<button class="btn white" id="start_button" onclick="startButton(event)" style="padding:0;margin-right:10px">
					<img id="start_img" src="images/mic.gif" style="width:35px;height:35px" alt="Start"></button>
					<button class="btn waves-effect waves-light" id="q_search" type="submit" name="action">
					Search<i class="material-icons right">search</i>
					</button>
				</div>
				<!-- <div class="input-field col s1">
					
				</div> -->
			</s:form>
				
		</div>

		<s:iterator value="subjects" var="s">
		
			<s:if test="%{isAnyCourse(#s.id) == true}">
			<div class="row">
					<h3 class="center-align cyan-text"><s:property value="#s.name" /></h3>
			</div>
			
			<div class="row">
				<s:iterator value="getCoursesByQuery(#s.id)" var="c">
					<s:include value="course-frame.jsp">
						<s:param name="image" value="#c.image"/>
						<s:param name="title" value="#c.title"/>
						<s:param name="id" value="#c.id"/>
						<s:param name="fee" value="#c.fee"/>
					</s:include>
				</s:iterator>
			</div>
			
			<div class="row">
				<hr>
			</div>
			</s:if>
			
		</s:iterator>
		
	</div>
	 
	<s:include value="footer.jsp" />
	<script>
		var final_transcript = '';
		var recognizing = false;
		var ignore_onend;
		var start_timestamp;
		if (!('webkitSpeechRecognition' in window)) {
		  $('#start_button').css("display","none");
		} else {
		  $('#start_button').css("display","inline-block");
		  var recognition = new webkitSpeechRecognition();
		  recognition.continuous = true;
		  recognition.interimResults = true;

		  recognition.onstart = function() {
		    recognizing = true;
		    start_img.src = 'images/mic-animate.gif';
		  };

		  recognition.onerror = function(event) {
		    
		  };

		  recognition.onend = function() {
		    recognizing = false;
		    if (ignore_onend) {
		      return;
		    }
		    start_img.src = 'images/mic.gif';
		    if (!final_transcript) {
		      return;
		    }
		    if (window.getSelection) {
		      window.getSelection().removeAllRanges();
		      var range = document.createRange();
		      range.selectNode(document.getElementById('final_span'));
		      window.getSelection().addRange(range);
		    }
		  };

		  recognition.onresult = function(event) {
		    var interim_transcript = '';
		    for (var i = event.resultIndex; i < event.results.length; ++i) {
		      if (event.results[i].isFinal) {
		        final_transcript += event.results[i][0].transcript;
		      } else {
		        interim_transcript += event.results[i][0].transcript;
		      }
		    }
		    final_transcript = capitalize(final_transcript);
		    $('#final_span').val(linebreak(final_transcript));
		    $('#interim_span').val(linebreak(interim_transcript));
		    $('#final_span').focus();
		    if($('#final_span').val() != ''){
		    	setTimeout(function(){
		    		$('#q_search').click();
		    	},500);
		    }
		  };
		}
		var two_line = /\n\n/g;
		var one_line = /\n/g;
		function linebreak(s) {
		  return s.replace(two_line, '<p></p>').replace(one_line, '<br>');
		}

		var first_char = /\S/;
		function capitalize(s) {
		  return s.replace(first_char, function(m) { return m.toUpperCase(); });
		}

		function startButton(event) {
		event.preventDefault();
		  if (recognizing) {
		    recognition.stop();
		    return;
		  }
		  final_transcript = '';
		  recognition.lang = "en-US";
		  recognition.start();
		  ignore_onend = false;
		  $('#final_span').val('');
		  $('#interim_span').html('');
		  start_img.src = 'images/mic-slash.gif';
		  start_timestamp = event.timeStamp;
		}

    </script>
</body>
</html>