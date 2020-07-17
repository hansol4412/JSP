<%--13_4. 설정된 모든 세션명을 해제하도록 작성합니다.
		   response 내장 객체의 sendRedirect() 메소드를 이용해 session.jsp파일로 이동합니다. --%>
<%@ page language="java" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Session</title>
</head>
<body>
	<%
	session.invalidate();
	response.sendRedirect("session_13_4.jsp");
	%>

</body>
</html>