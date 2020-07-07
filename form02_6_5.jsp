<%--6_5. input 태그 내에 text 유형을 이용해 이름, 주소, 이메일 항목을 작성합니다. 
		 form 태그의 action 속성 값은 form02_process.jsp로 작성합니다. --%>
<%@ page contentType="text/html"%>
<%@ page pageEncoding="utf-8" %>
<html>
<head>
<title>Form Processing</title>
</head>
<body>
	<form action="./form02_process_6_5.jsp" method="POST">
	<p>이름 : <input type="text" name="name"> </p>
	<p>주소 : <input type="text" name="address"> </p>
	<p>이메일 : <input type="text" name="email"> </p>
	<p><input type="submit" value="전송"> </p>
	</form>
</body>
</html>