<%@ page contentType="text/html"%>
<%@ page pageEncoding="utf-8" %>
<html>
<head>
<title>File Upload</title>
</head>
<body>
<%  request.setCharacterEncoding("utf-8");
    String id = request.getParameter("id");
	String passwd = request.getParameter("passwd");
	out.println("아이디: "+id+"<br>");
	out.println("비밀번호: "+passwd+"<br>");
%>
</body>
</html>