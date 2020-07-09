<%--7_3. multipartRequest 클래스를 이용해 요청 파라미터 이름, 실제파링이름, 저장 파일이름, 파일콘텐츠유형, 파일크기를 출력 --%>
<%@ page contentType="text/html"%>
<%@ page pageEncoding="utf-8" %>
<%@ page import="org.apache.commons.fileupload.*"%>
<%@ page import="java.util.*"%>
<%@ page import="java.io.*"%>
<html>
<head>
<title>File Upload</title>
</head>
<body>
<%
	String fileUploadPath = "c:\\upload";
	DiskFileUpload upload = new DiskFileUpload();
	List items = upload.parseRequest(request);
	
	Iterator params = items.iterator();
	while(params.hasNext()){
		FileItem item = (FileItem)params.next();
		if(item.isFormField()){
			String title = item.getString("UTF-8");
			out.println("<h3"+title+"</h3>");
		}
		else{
			String fileFieldName = item.getFieldName();
			String fileName = item.getName();
			String contentType = item.getContentType();
			
			String fileNameA = fileName.substring(fileName.lastIndexOf("\\")+1);
			long fileSize = item.getSize();
			
			File file = new File(fileUploadPath + "\\" + fileNameA);
			item.write(file);
			
			out.println("요청파라미터이름 : " + fileFieldName +"<br");
			out.println("수정후 저장 파일 이름 : " + fileNameA +"<br>");
			out.println("파일 콘텐츠 이름 : " + contentType +"<br>");
			out.println("파일 크기 : " + fileSize);




		}
	}

%>


</body>
</html>