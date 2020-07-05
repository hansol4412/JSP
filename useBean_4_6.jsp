<%--4_6. useBean 액션 태그에 GuGuDan 클래스를 사용해 작성한다,
		 h4 태그에 '구구단 출력하기'를 작성합니다,
		 숫자 5에 대해 GuGuDan 클래스의 process()메소드를 호출해 구구단을 출력합니다. --%>
<%@ page contentType="text/html"%>
<%@ page pageEncoding="utf-8" %>
<html>
<head>
<title>Action Tag</title>
</head>
<body>
	<jsp:useBean id="gugudan" class="dao.GuGuDan" />
	<h4>구구단 출력하기</h4>
	<%
		for(int i = 1; i<=9; i++){
			out.println("5 * "+i+" = "+gugudan.process(i)); %>
			<br>
	<% } %>	

</body>
</html>