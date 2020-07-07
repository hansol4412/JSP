<%@ page contentType="text/html"%>
<%@ page pageEncoding="utf-8" %>
<%@ page import="dto.Book"%>
<%@ page import="dao.BookRepository"%>

<%
	request.setCharacterEncoding("UTF-8");

	String bookId = request.getParameter("bookId");
	String name = request.getParameter("name");
	String unitPrice = request.getParameter("unitPrice");
	String author = request.getParameter("author");
	String publisher = request.getParameter("publisher");
	String releaseDate = request.getParameter("releaseDate");
	String totalPages = request.getParameter("totalPages");
	String description = request.getParameter("description");
	String category = request.getParameter("category");
	String unitsInStock =request.getParameter("unitsInStock");
	String condition =request.getParameter("condition");
	

	
	BookRepository dao = BookRepository.getInstance();
	
	Book newBook = new Book();
	newBook.setBookId(bookId);
	newBook.setName(name);
	newBook.setUnitPrice(Integer.parseInt(unitPrice));
	newBook.setAuthor(author);
	newBook.setPublisher(publisher);
	newBook.setReleaseDate(releaseDate);
	newBook.setTotalPages(Long.parseLong(totalPages));
	newBook.setDescription(description);
	newBook.setCategory(category);
	newBook.setUnitsInstock(Long.parseLong(unitsInStock));
	newBook.setCondition(condition);
	
	dao.addBook(newBook);
	
	response.sendRedirect("books.jsp");
	
	
%>