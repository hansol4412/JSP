<%--5_4.input 태그 내에 text 유형을 이용하여 아이디, 비밀번호 항목을 작성합니다.
        form 태그의 action 속성 값은 request_process.jsp로, method 속성값은 get으로 작성한다. --%>
<%@ page contentType="text/html"%>
<%@ page pageEncoding="utf-8" %>
<html>
<head>
<title>implicit Object</title>
</head>
<body>
<form action="./request_process_5_4.jsp" method="get">
<p>아이디 : <input type="text" name="id"></p>
<p>비밀번호 : <input type="password" name="passwd"></p>
<p><input type="submit" value="전송"></p>
</form>
</body>
</html>