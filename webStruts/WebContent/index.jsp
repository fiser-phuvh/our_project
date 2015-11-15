<%@taglib prefix="s" uri="/struts-tags" %>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>My title</title>
</head>
<body>
	<p>OK, đã chạy được</p>
	<s:a action="sayHi">Go to sayHi action</s:a>
	<s:a href="login.jsp">Đăng nhập</s:a></br>
	<a href="mypath/index.html" >Đến trang chủ</a>
</body>
</html>