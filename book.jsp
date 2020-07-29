<%@page language="java" %>
<%@page contentType="text/html; charset=utf-8" %>
<%@page import="dto.Book" %>
<%@page import="dao.BookRepository" %>
<jsp:useBean id="bookDAO" class="dao.BookRepository" scope="session" />
<html>
<head>
<link rel="stylesheet" 
	  href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>도서 상세 정보</title>
</head>
<body>
	<jsp:include page="menu.jsp"/>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">도서정보</h1>
		</div>
	</div>
	
	<%
		String id= request.getParameter("id");
		BookRepository dao = BookRepository.getInstance();
		Book book = dao.getBookById(id);
	%>
	
	<div class="container">
		<div class="row">
			<div class="col-md-6">
			<h3>[<%=book.getCategory()%>] <%=book.getBname() %></h3>
			<p><%=book.getDescription() %></p>
			<p>도서코드 : <b><span class="badge badge-danger"><%=book.getBookId() %></span></b></p>
			<p>출판사 : <%=book.getPublisher() %></p>
			<p>저자 : <%=book.getAuthor() %></p>
			<p>재고수 : <%=book.getUnitsInstock() %></p>
			<p>총 페이지 수  : <%=book.getTotalPages() %></p>
			<p>출판일 : <%=book.getReleaseDate() %></p>
			<h4> <%=book.getUnitPrice() %>원</h4>
			<p><a href="#" class="btn btn-secondary">상품 주문 &raquo;</a>
			<a href="books.jsp" class="btn btn-secondary">상품목록 &raquo;</a></p>
			</div>
		</div>
	</div>
</body>
</html>