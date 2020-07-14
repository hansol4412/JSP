<%--11_5.JSP페이지가 실행되는 도중에 오류가 발생히면 오류 페이지를 호출하도록 page디렉티브 태그의 errorPage 속성값은
		 exception_error.jsp로 작성합니다.
		 request 내장객체의 getParameter()메소드를 이용해 전송된 요청 파라미터 값을 받습니다.
		 전송받은 요청 파라미터 값이 null이면 ServletException이 발생하고 그렇지 않으면 아이디 값을 출력하도록 작성--%>
<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ page errorPage="exception_error_11_5.jsp" %>
<html>
<head>
<title>exception</title>
</head>
<body>
<%
	String id = request.getParameter("id");
	String password = request.getParameter("password");
	
	if(id==""||password=="") {
		ServletException ex = new ServletException();
        throw ex;
	}
	
	
	out.println("id: " +id ); %>
	<br>
	<% 
	out.println("password: " +password);
	%>
</body>
</html>