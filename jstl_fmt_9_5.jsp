<%--9_4. input 태그 내에 text 유형을 이용하여 아이디, 비밀번호 항목을 작성합니다. 
		 한글 또는 영문 페이지 요청시 언어 코드 값을 받아서 로케일을 설정할 수 있도록 <fmt:setLocale>태그 작성
		 리소스 번들에서 아이디, 비밀번호의 메세지를 가져와 출력하다록 작성합니다. --%>
<%@ page contentType="text/html"%>
<%@ page pageEncoding="utf-8" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
<title>Internationalization</title>
</head>
<body>
<fmt:setLocale value='<%=request.getParameter("language")%>' />
<fmt:setBundle basename="bundle.myBundle" var="message"/>

<a href="?language=ko">Korean</a> | <a href="?language=en">English</a>
<form action="#" name="internationalization" method="post">
<p><fmt:message bundle="${message}" key="id"/> : <input type="text" name="id"><br>
<p><fmt:message bundle="${message}" key="password"/> : <input type="text" name="password"><br>
<p><input type="submit" value="<fmt:message bundle="${message}" key="button"/>">
</form>
</body>
</html>