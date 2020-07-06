<%--5_4.request 내장 객체의 getQueryString 메소드를 이용해 전송된 요총 파라미터와 값을 출력한다.  --%>
<%@ page contentType="text/html"%>
<%@ page pageEncoding="utf-8" %>
<html>
<head>
<title>implicit Object</title>
</head>
<body>
<p>전송된 요청 파라미터 :<%=request.getQueryString() %></p>
</body>
</html>