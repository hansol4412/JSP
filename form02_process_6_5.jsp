<%--6_4. Enumeration 클래스를 이용해 전송된 모든 요청 파라미터 값을 받습니다. 
		  StringBuffer 클래스를 이용해 전송된 요청 파라미타 이름과 값을 저장해 출력합니다.  --%>
<%@ page contentType="text/html"%>
<%@ page pageEncoding="utf-8" %>
<%@ page import="java.io.*, java.util.*" %>
<html>
<head>
<title>Form Processing</title>
</head>
<body>
 <% 
	request.setCharacterEncoding("utf-8");
 	
    Enumeration parameterNames = request.getParameterNames();
    
 	while(parameterNames.hasMoreElements()){
 		String sname = (String)parameterNames.nextElement();
 		
 		StringBuffer str = new StringBuffer(sname);
 					 str.append(" : "); 
 					 str.append(request.getParameter(sname)); 
 		
 		out.print(str); %>
 		
 		<br>
 	<% }%>
 
    

</body>
</html>