<%@ page contentType="text/html"%>
<%@ page pageEncoding="utf-8" %>
<%@ page import="dto.Book" %>
<%@ page import="dao.BookRepository" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" 
href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>도서 정보</title>
</head>
<body>
	<jsp:include page="menu.jsp"/>
	<div class="jumbotron">
		<div class="container">
		<h1 class="display-3">도서 정보</h1>
		</div>
	</div>
	
	<%
	  String id = request.getParameter("id");
	  BookRepository dao = BookRepository.getInstance();
	  Book book = dao.getBookById(id);
	 %>
	 
	 <div class=container>
		 <div class="row">
			 <div class="col-mid-6">
			 <img src="c:\upload\<%=book.getFilename()%>" style="width:100%">
			 <h3>[<%=book.getCategory()%>] <%=book.getName()%>  </h3>
			 <p><%=book.getDescription() %></p>
			 <p><b>도서코드 : </b><span class="badge badge-danger"><%=book.getBookId() %></span></p>
			 <p><b>출판사 : </b> <%=book.getPublisher() %></p>
			 <p><b>저자 : </b> <%=book.getAuthor() %></p>
			 <p><b>재고수 : </b> <%=book.getUnitsInstock() %></p>
			 <p><b>총 페이지수 : </b> <%=book.getTotalPages() %></p>
			 <p><b>출판일 : </b> <%=book.getReleaseDate() %></p>
			 <p><%=book.getUnitPrice()%> </p>
			 <p><a href="#" class="btn btn-info">도서주문 &raquo;</a>
			 <a href="./books.jsp" class="btn btn-secondary">도서목록 &raquo;</a></p>
			 </div>
		 </div>
	 </div>
<jsp:include page="footer.jsp"/>
</body>
</html>