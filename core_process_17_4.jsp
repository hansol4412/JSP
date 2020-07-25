<%--17_4.request 내장 객체의 getParameter() 메소드를 이용하여 전송된 요청 파라미터 값을 받습니다. --%>
<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>JSTL</title>
</head>
<body>
	<% String number = request.getParameter("score"); %>
	<c:set var="number" value="<%=number %>"/>
	<c:choose>
		<c:when test="${number >= 90 }">
			점수 <c:out value="${number}"/>는 A학점 입니다.
		</c:when>
		<c:when test="${number >= 80 }">
			점수 <c:out value="${number}"/>는 B학점 입니다.
		</c:when>
		<c:when test="${number >= 70 }">
			점수 <c:out value="${number}"/>는 C학점 입니다.
		</c:when>
		<c:when test="${number >= 60 }">
			점수 <c:out value="${number}"/>는 D학점 입니다.
		</c:when>
		<c:otherwise>
			점수 <c:out value="${number}"/>는 F학점 입니다.
		</c:otherwise>
	</c:choose>
</body>
</html>