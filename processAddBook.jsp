<%@ page contentType="text/html"%>
<%@ page pageEncoding="utf-8" %>
<%@ page import="dto.Book"%>
<%@ page import="dao.BookRepository"%>
<%@ page import="com.oreilly.servlet.*"%>
<%@ page import="com.oreilly.servlet.multipart.*"%>
<%@ page import="java.util.*"%>

<%
	request.setCharacterEncoding("UTF-8");

	MultipartRequest multi = new MultipartRequest(request, "c:\\upload", 5*1024*1024, "utf-8",
			new DefaultFileRenamePolicy());

	String bookId = multi.getParameter("bookId");
	String name = multi.getParameter("name");
	String unitPrice = multi.getParameter("unitPrice");
	String author = multi.getParameter("author");
	String publisher = multi.getParameter("publisher");
	String releaseDate = multi.getParameter("releaseDate");
	String totalPages = multi.getParameter("totalPages");
	String description = multi.getParameter("description");
	String category = multi.getParameter("category");
	String unitsInStock =multi.getParameter("unitsInStock");
	String condition =multi.getParameter("condition");
	
	Enumeration files = multi.getFileNames();
	String bname = (String) files.nextElement();
	String fileName = multi.getFilesystemName(bname);
	

	
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
	newBook.setFilename(fileName);
	
	dao.addBook(newBook);
	
	response.sendRedirect("books.jsp");
	
	
%>