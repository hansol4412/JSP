<%--18_4.input 태그에 text 유형을 이용하여 구구단 항목을 작성합니다.
		 form 태그의 action 속성 값은 GugudanController.jsp로 작성합니다. --%>
<%@ page language="java" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html>
<head>
<title>MVC</title>
</head>
<body>
<form action="GugudanController_18_4" method="post">
	<p>구구단: <input type="text" name="number"/></p>
	<p><input type="submit" value="전송"/></p>
</form>
</body>
</html>