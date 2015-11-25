<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>	
	<s:set name="ok" value="ok"  />
	<s:if test="%{#ok==true}">
		<s:property value="message"/><br>
		<a href="Login_r.jsp">Đăng nhập ngay</a><br>
		<a href="home">Về Home</a>
	</s:if>
	<s:else>
		<s:property value="message"/><br>
		<a href="register.jsp" >Quay lại</a>
	</s:else>
	
</body>
</html>