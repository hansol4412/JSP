<%--3_4. page 디텍티브 태그에 java.util.Date, java,lang.Math클래스를 사용해 
		현재 날짜와 5의 제곱을 출력하시오. --%>
<%@ page contentType="text/html"%>
<%@ page pageEncoding="utf-8" %>
<html>
<head>
<title>Directives Tag</title>
</head>
<body>
<%@ page import="java.util.Date"%>
<%@ page import="java.lang.Math"%>
<p>현재 날짜 : <% Date day = new Date();
				out.println(day);%></p>
<p>5의 제곱 : <%out.println(Math.pow(5,2)); %></p>
			

</body>
</html>