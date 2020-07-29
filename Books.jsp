<%@page language="java" %>
<%@page contentType="text/html; charset=utf-8" %>
<%@page import="java.util.ArrayList" %>
<%@page import="dto.Book" %>
<%@page import="dao.BookRepository" %>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css"/>
<title>도서목록</title>
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
		<div class="row" align="left">
		<%	
			for(int i =0; i<listOfBooks.size(); i++){
				Book book = listOfBooks.get(i);
			
		%>
		
			<div class="col-md-3">
			<img src="c:/upload/<%=book.getFilename() %>" style="width: 60%">
			</div>
			<div class="col-md-8 ">
			<h3>[<%=book.getCategory()%>] <%=book.getBname() %></h3>
			<br>
			<p><%=book.getDescription() %></p>
			<p><%=book.getAuthor() %>  |  <%=book.getPublisher() %>  |  <%=book.getUnitPrice() %>원</p>
			<p><a href="book.jsp?id=<%=book.getBookId() %>" class="btn btn-secondary" role="button">상세 정보</a></p>
			<hr>
			</div>
			
		<%} %>
		</div>
	</div>
	<jsp:include page="footer.jsp"/>
</body>
</html>