<%--14_3. input 태그 에 text 유형을 이용하여 아이디, 비밀번호 항목을 작성합니다.
		  form 태그의 action 속성 값은 cookies_process.jsp로 작성합니다. --%>
<%@ page language="java" contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>Cookie</title>
</head>
<body>
<form action="cookie_process_14_3.jsp" method="post" name="cookie">
	<p>아이디 : <input type="text" name="id"/></p>
	<p>비밀번호 : <input type="text" name="password"/></p>
	<p><input type="submit" value="전송"/></p>
</form>
</body>
</html>