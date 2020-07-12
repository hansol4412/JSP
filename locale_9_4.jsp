<%--9_4. request 내장객체의 getLocale() 메소드를 이용해 현재 로케일을 얻어옵니다.
		 현재 로케일에 대한 언어와 국가를 출력합니다.--%>
<%@ page contentType="text/html"%>
<%@ page pageEncoding="utf-8" %>
<%@page import="java.util.Locale" %>
<html>
<head>
<title>Internationalization</title>
</head>
<body>
	<%
	Locale locale = request.getLocale();
	String language = locale.getLanguage();
	String country = locale.getCountry();
	%>
	<h3>현재 로케일</h3>
	<P>언어:<%=language %></P>
	<p>국가: <%=country %></p>
</body>
</html>