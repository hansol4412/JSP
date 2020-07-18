<%--14_3. 쿠키 삭제 후 쿠키 갯수를 확인합니다. --%>
<%@ page language="java" contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>Cookie</title>
</head>
<body>
<% 
Cookie[] cookies = request.getCookies();
out.println("삭제 후 쿠키갯수: "+cookies.length);
%>
<br>
<a href="cookie_14_3.jsp">처음으로 돌아가기</a>
</body>
</html>