<%--11_6.임의의 숫자를 0으로 나누면 오류가 발생하도록 작성합니다.
	발생한 오류에 대한 메세지를 출력합니다.--%>
<%@ page language="java" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Exception</title>
</head>
<body>
<%
	try{
		String num1= request.getParameter("num1");
		String num2= request.getParameter("num2");
		int a = Integer.parseInt(num1);	
		int b = Integer.parseInt(num2);	
		int c =a/b;
		out.println(c);
		} 
	catch(ArithmeticException e){
		
		out.println("오류발생");
		out.println(e.getMessage());
}

%>
</body>
</html>