<%--2_5. 스크립틀릿 태그를 이용하여 java.util.Date형 지역변수에 현재 날짜를 저장한다,
		 현재 날짜 값을 출력한다 --%>
<html>
<head>
<title>Scripting Tag</title>
</head>
<body>
<% java.util.Date day = new java.util.Date();  %>
<p>Today: <%out.println(day); %></p>
</body>
</html>