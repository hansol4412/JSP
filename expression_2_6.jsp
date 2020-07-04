<%--2_6. 표현문 태그에 java.util.Calendar 클래스를 사용해 현재 시간을 출력하시오. --%>
<html>
<head>
<title>Scripting Tag</title>
</head>
<body>
<p>Current Time:
<%=java.util.Calendar.getInstance().getTime() %></p> 
</body>
</html>