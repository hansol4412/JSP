<%--현재 JSP페이지가 오류 페이지가 되도록 page 디렉티브 태그에 isErrorPage 속성을 작성합니다.--%>
<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ page errorPage="exception_error_11_5.jsp" %>
<!DOCTYPE html>
<html>
<head>
<title>exception</title>
</head>
<body>
<%
	Exception e = new Exception();
	String error= e.getClass().getName();
	
%>
	
	
	
	
<h3>오류발생</h3>
	<table border="1">
		<tr><td>Error:</td><td><%=error %> 오류 발생!!</td></tr>
		<tr><td>URI:</td><td></td></tr>
		<tr><td>Status code:</td><td></td></tr>
	</table>
</body>
</html>