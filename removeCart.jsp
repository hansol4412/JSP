<%@page language="java" %>
<%@page contentType="text/html; charset=utf-8" %>
<%@page import="java.util.ArrayList" %>
<%@page import="dto.Book" %>
<%@page import="dao.BookRepository" %>
<%
	String id = request.getParameter("id");
	if(id==null || id.trim().equals("")){
		response.sendRedirect("books.jsp");
		return;
	}

	BookRepository dao = BookRepository.getInstance();
	Book book = dao.getBookById(id);
	if(book==null){
		response.sendRedirect("exceptionNoBookId.jsp");
	}
	
	ArrayList<Book> cartlist = (ArrayList<Book>)session.getAttribute("cartlist");
	Book booksQnt = new Book();
	
	for(int i=0; i<cartlist.size(); i++){
		booksQnt = cartlist.get(i);
		if(booksQnt.getBookId().equals(id)){
			cartlist.remove(booksQnt);
		}
	}
	response.sendRedirect("cart.jsp");
%>