<%--13_4. input 태그에 text 유형을 이용하여 아이디, 비밀번호 항목을 작성합니다.
		  form 태그의 action 속성갑슨 session_process.jsp로 작성합니다.  --%>
<%@ page language="java" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Session</title>
</head>
<body>
<form action="session_process_13_4.jsp" method="post" name="login">
<P>아이디: <input type="text" name= "id" />
<P>비밀번호: <input type="text" name= "password" />
<P><input type="submit" value="전송" />
</form>
</body>
</html>