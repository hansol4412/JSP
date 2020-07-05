<%--4_4. 전달받은 숫자 5의 구구단을 출력하도록 작성하시오--%>
<%@ page contentType="text/html"%>
<%@ page pageEncoding="utf-8" %>
<html>
<head>
<title>Action Tag</title>
</head>
<body>
<%int number = Integer.parseInt(request.getParameter("number")); 
	for(int i=1; i<=9; i++){
		out.println(number+" * "+i+" = "+number*i);
		%>
		<br>
	<% }%>
</body>
</html>