<%--18_4. request 내장 객체의 getParameter() 메소드를 이용하여 전송된 요청파라미터 값을 받아
		  core 태그를 이용하여 숫자에 해당하는 구구단을 출력하시오.--%>
<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ page import ="com.model.NumberBean_18_4" %>
<!DOCTYPE html>
<html>
<head>
<title>MVC</title>
</head>
<body>
	<%
	
	NumberBean_18_4 bean = (NumberBean_18_4)request.getAttribute("bean");
	
	int num = Integer.parseInt(bean.getNumber());
	for(int i=1; i<=9; i++){
		out.println(num + " * " + i+ " = " + num*i); 
		%>
		
		<br>
		
		
	<% 
	}
	
	%>
</body>
</html>