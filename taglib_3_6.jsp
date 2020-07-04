<%--3_6. include 디랙티브 태그를 이용해 외부파일 header.jsp의 내용을 포함합니다.
		 java.util.Calendar 클래스를 이용해 현재 시간을 출력합니다. --%>
<%@ page contentType="text/html"%>
<%@ page pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>JSP</title>
</head>
<body>
	<c:forEach var="k" begin="0" end="10" step="2">
		<c:out value ="${k}" />
	</c:forEach>
</body>
</html>