<%--13_4. 설정된 세션명 userID 값이 null이면 response 내장 객체의 sendRedirect() 메소드를 이용해 session_out.jsp파일로 이동합니다. 
	 	 <로그아웃>을 클릭하면 설정된 세션을 해제하도록 작성합니다.  --%>
<%@ page language="java" contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>Session</title>
</head>
<body>
<% 
	String id = (String)session.getAttribute("userID");
	if(id==null || id.equals("")){
		response.sendRedirect("session_out_13_4.jsp");
	}
	else{
		out.println(id+"님 반갑습니다.");
	}
	
%>
<a href="session_out_13_4.jsp">로그아웃</a>
	
</body>
</html>