<%--14_3. request 내장 객체의 getParameter() 메소드를 이용하여 전송된 요청 파라미터 값을 받습니다.
		  아이디와 비밀번호가 인증되면 아이디 값을 쿠키명 userID의 세션 값으로 설정됩니다.
		  response 내장 객체의 sendRedirect() 메소드를 이용해 welcome.jsp 파일로 이동하도록 작성합니다. --%>
<%@ page language="java" contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>Cookie</title>
</head>
<body>
<%
	String id = request.getParameter("id");
	String password = request.getParameter("password");
	
	if(id.equals("hansol")&&password.equals("1234")){
		Cookie cookie = new Cookie("userId", id);
		response.addCookie(cookie);
		response.sendRedirect("welcome_14_3.jsp");
	}
	else{
		out.println("아이디와 비밀번호를 확인해 주세요");
	}
%>
</body>
</html>