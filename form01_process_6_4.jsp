<%--6_4. request 내장객체의 getParameter()메소드를 이용해 전송된 요청 파라미터 값을 받습니다. 
		StringBuffer 클래스를 이용해 전송된 요청 파라미타 이름과 값을 저장해 출력합니다. --%>
<%@ page contentType="text/html"%>
<%@ page pageEncoding="utf-8" %>
<html>
<head>
<title>Form Processing</title>
</head>
<body>
 <% 
    request.setCharacterEncoding("utf-8");
 	StringBuffer name = new StringBuffer("아이디: ");
 	name.append(request.getParameter("name")); 
 	StringBuffer address= new StringBuffer("주소: ");
 	address.append(request.getParameter("address")); 
 	StringBuffer email = new StringBuffer("이메일: ");
 	email.append(request.getParameter("email")); 
 %>
 <%= name %><br>
 <%= address %><br>
 <%= email %><br>
</body>
</html>