<%--6_6. input 태그 내에 checkbox 유형을 이용하여 오렌지. 사과, 바나나 항목을 작성합니다.
		 form 태그의 action 속성 값은 form03_process.jsp로 작성합니다. --%>
<%@ page contentType="text/html"%>
<%@ page pageEncoding="utf-8" %>
<html>
<head>
<title>Form Processing</title>
</head>
<body>
<form action="./form03_process_6_6.jsp" method="post">
	오렌지<input type="checkbox" value="오렌지" name="fruits">
	사과<input type="checkbox" value="사과" name="fruits">
	바나나<input type="checkbox" value="바나나" name="fruits">
	<input type="submit" value="전송">
</form>
</body>
</html>