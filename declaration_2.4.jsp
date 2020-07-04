<%--2_4. 선언문 태그에 무나형 전역변수를 선언하여 "Hello Java Server Pages"를 저장,
		 문자형 변수 값을 반환하는 전역메소드 getString()을 작성,
		 getString() 메소드르 호출하여 문자형 변수 값을 출력하시오. --%>
<html>
<head>
<title>Scripting Tag</title>
</head>
<body>
<%!  String a = "Hello, Java Server Pages"; %>
<%!  String getString(String x) { 
	 return x;
	 } 
%>
<p><% out.println(getString(a)); %></p>
</body>
</html>