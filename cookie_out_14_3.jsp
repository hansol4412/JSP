<%--14_3. 설정된 모든 쿠키명을 해제하도록 생성합니다.
		  response 내장 객체의 sendRedirect() 메소드를 이용해 cookieReturn.jsp 파일로 이동하도록 작성합니다.--%>
<%@ page language="java" contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>Cookie</title>
</head>
<body>
	<%
		Cookie[] cookies = request.getCookies();
		for(int i =0; i<cookies.length; i++){
			cookies[i].setMaxAge(0);
			response.addCookie(cookies[i]);
		}
		
		response.sendRedirect("cookieReturn_14_3.jsp");
		
	%>
</body>
</html>