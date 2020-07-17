<%--13_4. request 내장 객체의 getParameter() 메소드를 이용해 전송된 요청 파아미터 값을 받습니다.
		  아이디와 비밀번호가 인증되면 아이디 값을 세션명 userID의 세션값으로 설정합니다.
		  response 내장 객체의 sendRedirect() 메소드를 이용해 welcome.jsp 파일로 이동하도록 작성합니다.  --%>
<%@ page language="java" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Session</title>
</head>
<body>
	<%
	String id = request.getParameter("id");
	String password = request.getParameter("password");
	if(id.equals("hansol") && password.equals("1234")){
		session.setAttribute("userID", id);
		response.sendRedirect("welcome_13_4.jsp");
	}
	else{
		out.println("아이디와 비밀번호가 틀렸습니다.");
	}
	%>
</body>
</html>