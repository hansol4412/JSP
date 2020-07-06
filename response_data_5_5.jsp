<%--5_5. response 내장 객체의 sendRedirect()메소드를 이용해 구글 홈페이지로 이동하도록 작성해라. --%>
<%@ page contentType="text/html"%>
<%@ page pageEncoding="utf-8" %>
<html>
<head>
<title>implicit Object</title>
</head>
<body>
<% response.sendRedirect("http://www.google.com"); %>
</body>
</html>