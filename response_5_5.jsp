<%--5_5. response 내장 객체의 setHeader() 메소드를 이용해 5초마다 페이지를 갱신하도록 작성하시오.
		 java.util.Calendar 클래스를 이용해 현재 시간을 출력하도록 작성합니다.
		 <google 홈페이지로 이동하기>를 클릭하면 response_data.jsp 파일릉 연결하도록 작성합니다.  --%>
<%@ page contentType="text/html"%>
<%@ page pageEncoding="utf-8" %>
<html>
<head>
<title>implicit Object</title>
</head>
<body>
 <% response.setHeader("Refrash", "5;URL=http://www.naver.com");
  out.print(java.util.Calendar.getInstance().getTime());
  %>
  <br>
  <a href="./response_data_5_5.jsp">Google 홈페이지로 이동하기</a>
</body>
</html>