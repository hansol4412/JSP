<%--4_4. h4 태그에 '구구단 출력하기'로 작성합니다.
		 forward 액션태그로 구구단을 출력하는 forward_data.jsp 파일로 이동하라,
		 parma 액션 태그로 숫자 5를 출력하는 forWard_data.jsp 파일에 전달하도록 작성하라--%>
<%@ page contentType="text/html"%>
<%@ page pageEncoding="utf-8" %>
<html>
<head>
<title>Action Tag</title>
</head>
<body>
<h4>구구단 출력하기</h4>
<jsp:forward page="forward_data_4_4.jsp">
	<jsp:param name="number" value="5"/>
</jsp:forward>
</body>
</html>