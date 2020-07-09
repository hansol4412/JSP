<%--7_4. input 태그 내에 file 유형을 이용하여 파일항목을 작성합니다.
		 from 태그 내의 action 속성값은 fileupload01_process.jsp로, enctype="multipart/form-date" --%>
<%@ page contentType="text/html"%>
<%@ page pageEncoding="utf-8" %>
<html>
<head>
<title>File Upload</title>
</head>
<body>
<form action="fileupload02_process_7_4.jsp" method="post" enctype="multipart/form-data">
파일 :  <input type="file" name="file"/> 
<input type="submit" value="파일 올리기"/>
</form>
</body>
</html>