<%--3_5. include 디랙티브 태그를 이용해 외부파일 header.jsp의 내용을 포함합니다.
		 java.util.Calendar 클래스를 이용해 현재 시간을 출력합니다. --%>
<%@ page contentType="text/html"%>
<%@ page pageEncoding="utf-8" %>
<html>
<head>
<title>Directives Tag</title>
</head>
<body>
<%@ include file="header_3_5.jsp"%>
<%@ page import="java.util.Calendar"%>
<p>현재시간: <%out.println(Calendar.getInstance().getTime()); %></p>
</body>
</html>