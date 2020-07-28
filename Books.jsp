<%@page language="java" %>
<%@page contentType="text/html; charset=utf-8" %>
<%@page import="java.util.ArrayList" %>
<%@page import="dto.Book" %>
<jsp:useBean id="bookDAO" class="dao.BookRepository" scope="session" />
<html>
<head>
<link rel="stylesheet" 
	  href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>상품목록</title>
</head>
<body>
	<jsp:include page="menu.jsp"/>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">상품목록</h1>
		</div>
	</div>
	<%
		ArrayList<Book> listOfBooks = bookDAO.getAllBooks();
	%>
	<div class="container">
		<div class="row" align="left">
		<%	
			for(int i =0; i<listOfBooks.size(); i++){
				Book book = listOfBooks.get(i);
			
		%>
			<div class="col-md-10">
			<h3>[<%=book.getCategory()%>] <%=book.getBname() %></h3>
			<p><%=book.getDescription() %></p>
			<p><%=book.getAuthor() %>  |  <%=book.getPublisher() %>  |  <%=book.getUnitPrice() %></p>
			<hr>
			</div>
			
		<%} %>
		</div>
	</div>
	<jsp:include page="footer.jsp"/>
</body>
</html>