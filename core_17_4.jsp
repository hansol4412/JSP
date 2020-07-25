<%--17_4.input 태그에 text 유형을 이용하여 점수 항목을 작성합니다.
		 form 태그의 action 속성 값은 core_process.jsp로 작성합니다. --%>
<%@ page language="java" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html>
<head>
<title>JSTL</title>
</head>
<body>
<form action="core_process_17_4.jsp" method="post">
	<p>점수: <input type="text" name="score"/></p>
	<p><input type="submit" value="전송"/></p>
</form>
</body>
</html>