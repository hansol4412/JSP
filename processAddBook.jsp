<%@page language="java" %>
<%@page contentType="text/html; charset=utf-8" %>
<%@page import="dto.Book" %>
<%@page import="dao.BookRepository" %>
<%
	request.setCharacterEncoding("utf-8");

	String bookId = request.getParameter("bookId");			
	String name = request.getParameter("name");				
	String unitPrice = request.getParameter("unitPrice");		
	String author = request.getParameter("author");			
	String description = request.getParameter("description");		
	String publisher = request.getParameter("publisher");		
	String category = request.getParameter("category");		
	String unitsInstock = request.getParameter("unitsInstock");		
	String totalPages = request.getParameter("totalPages");	
	String releaseDate = request.getParameter("releaseDate");		
	String condition = request.getParameter("condition");	
	
	Integer price;
	if(unitPrice.isEmpty()) price=0;
	else price=Integer.valueOf(unitPrice);
	
	long stock;
	if(unitsInstock.isEmpty()) stock=0;
	else stock = Long.valueOf(unitsInstock);
	
	long tpage;
	if(totalPages.isEmpty()) tpage=0;
	else tpage = Long.valueOf(totalPages);
	
	BookRepository dao = BookRepository.getInstance();
	
	Book newBook = new Book();
	newBook.setBookId(bookId);
	newBook.setBname(name);
	newBook.setUnitPrice(price);
	newBook.setAuthor(author);
	newBook.setDescription(description);
	newBook.setPublisher(publisher);
	newBook.setCategory(category);
	newBook.setUnitsInstock(stock);
	newBook.setTotalPages(tpage);
	newBook.setReleaseDate(releaseDate);
	newBook.setCondition(condition);
	
	dao.addBook(newBook);
	
	response.sendRedirect("books.jsp");
	
	
%>