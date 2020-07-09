<%@ page contentType="text/html"%>
<%@ page pageEncoding="utf-8" %>
<%@ page import=" java.util.ArrayList" %>
<%@ page import="dto.Book" %>
<%@ page import="dao.BookRepository" %>
<html>
<head>
<link rel="stylesheet" 
href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>도서 목록</title>
</head>
<body>
	<jsp:include page="menu.jsp"/>
	<div class="jumbotron">
		<div class="container">
		<h1 class="display-3">도서목록</h1>
		</div>
	</div>
	<%
	BookRepository dao = BookRepository.getInstance();
	ArrayList<Book> listOfBooks = dao.getAllBooks(); 
	%>
	<div class="container">
	<div class="column" >
		<%
			for(int i=0; i< listOfBooks.size(); i++){
				Book book = listOfBooks.get(i);
			
		%>
		<div class="col-md-12">
		<img src="c:\upload\<%=book.getFilename()%>" style="width:100%">
		<h3>[<%=book.getCategory()%>] <%= book.getName()%> </h3>
		<br>
		<p><%=book.getDescription() %></p>
		<p><%=book.getAuthor() %> | <%=book.getPublisher() %> | <%=book.getUnitPrice() %>원</p>
		<p><a href="./book.jsp?id=<%=book.getBookId()%>" 
		class="btn btn-secondary" role="button">상세정보 &raquo;></a></p>
		</div>
		<% } %>
		
	</div>
	<jsp:include page="footer.jsp"/>
	</div>
	
</body>
</html>
