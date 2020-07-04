<%--2_7. 선언문 태그를 이용하여 "Book Market Mall"과 "Welcome to Book Market"을 저장해라 ,
		 표현문 태그를 이용해 설정한 변수값을 출력하라,
		 부트스트랩 CSS를 적용하여 작성하라.--%>
<%@ page contentType="text/html; charset=utf-8" %>
<html>
<head>
<link rel="stylesheet" 
href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>Welcome</title>
</head>
<body>
<nav class="navbar navbar-expand navbar-dark bg-dark">
	<div class="container">
		<div class="navbar-header">
			<a class="narvar-brand" href="./welcome.jsp">Home</a>
		</div>
	</div>
</nav>
<%! String greeting ="Book Market Mall";
	String tagline = "Welcome to Book Market";%>
<div class="jumbotron">
	<div class ="container">
	<h1 class ="dixplay-3"><%= greeting %></h1>
	</div>
</div>
<div class="container">
	<div class="text-center">
	<h3><%= tagline %></h3>
	</div>
</div>
</body>
</html>