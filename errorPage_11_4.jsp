<%--JSP페이지가 실행되는 도중에 오류가 발생하면 오류 페이지를 호출하도록 page디펙티브 태그에 errorPage 속성으로 작성 --%>
<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ page errorPage="isErrorPage_11_4.jsp" %>
<html>
<head>
<title>Exception</title>
</head>
<body>
	<%=
	request.getParameter("name").toUpperCase()
	%>
</body>
</html>