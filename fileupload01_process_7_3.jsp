<%--7_3. multipartRequest 클래스를 이용해 요청 파라미터 이름, 실제파링이름, 저장 파일이름, 파일콘텐츠유형, 파일크기를 출력 --%>
<%@ page contentType="text/html"%>
<%@ page pageEncoding="utf-8" %>
<%@ page import="com.oreilly.servlet.*"%>
<%@ page import="com.oreilly.servlet.multipart.*"%>
<%@ page import="java.util.*"%>
<%@ page import="java.io.*"%>
<html>
<head>
<title>File Upload</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
        MultipartRequest multi = new MultipartRequest(request, "c:\\upload", 5*1024*1024, "utf-8",
		new DefaultFileRenamePolicy());
		
		Enumeration param = multi.getFileNames();
		String name = (String)param.nextElement();
		String filename = multi.getFilesystemName(name);
		String originalfilename = multi.getOriginalFileName(name);
		String type = multi.getContentType(name);
		File file = multi.getFile(name);
		%>
		<p>요청파라미터 이름: <%=name %></p>
		<p>실제 파일 이름: <%=originalfilename %></p>
		<p>저장 파일 이름: <%=filename %></p>
		<p>파일 콘텐츠 유형: <%=type %></p>
		<p>파일 크기: <%=file.length() %></p>
		
</body>
</html>