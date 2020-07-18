<%--14_3. 설정된 쿠키명 uesrID 값이 null이면 response 내장 객체의 sendRedirect() 메소드를 이용하여 cookie_out.jsp 파일로 이동합니다.
		  생성된 쿠기 갯수를 확인합니다.
		  <로그아웃>을 클릭하면 설정된 세션을 해제하도록 작성합니다. --%>
<%@ page language="java" contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>Cookie</title>
</head>
<body>
	<%
		Cookie[] cookies = request.getCookies();
		
		for(int i =0; i<cookies.length-1; i++){
			String id = cookies[i].getValue();
			if(id==null||id.equals("")){
				response.sendRedirect("cookie_out_14_3.jsp");
			}
			else{
				out.println(cookies[i].getValue()+"님 반갑습니다.");	
				out.println("생성된 쿠키갯수: "+cookies.length);
			}
		}
		
	%>
	<br>
	<a href="cookie_out_14_3.jsp">로그아웃</a>
</body>
</html>