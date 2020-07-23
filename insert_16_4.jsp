<%--16_4. input 태그에 text 유형을 이용하여 학번, 학과, 이름, 주소, 연락처 항목을 작성합니다.
		   form 태그의 action 속성값은 insert_process.jsp로 작성합니다. --%>
<%@ page language="java" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Database DB</title>
</head>
<body>
	<form action="insert_process_16_4.jsp" method="post">
		<P>학번: <input type="text" name= "num" />
		<P>학과: <input type="text" name= "depart" />
		<P>이름: <input type="text" name= "name" />
		<P>주소: <input type="text" name= "address" />
		<P>연락처: <input type="text" name= "phone" />
		<P><input type="submit" value="전송" />
	</form>
</body>
</html>