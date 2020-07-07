<%--6_5. request 내장 객체의 getParameterValues() 메소드를 이용하여 요청 파라미터 값을 전달받아 출력  --%>
<%@ page contentType="text/html"%>
<%@ page pageEncoding="utf-8" %>
<%@ page import="java.io.*, java.util.*" %>
<html>
<head>
<title>Form Processing</title>
</head>
<body>
	<h3>선택한 과일</h3>
	
	<%
	request.setCharacterEncoding("utf-8");
	 String[] a = request.getParameterValues("fruits"); 
	 for(int i =0; i<a.length; i++){
		 out.print(a[i]+" ");
	 }
	 %>

</body>
</html>