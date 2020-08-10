<%@page language="java" %>
<%@page contentType="text/html; charset=utf-8" %>
<%@page import="dto.Book" %>
<%@page import="dao.BookRepository" %>
<%@page errorPage="exceptionNoBookId.jsp" %>
<%@page import="java.sql.*"%>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css"/>
<title>도서 상세 정보</title>
<script type="text/javascript">
	function addToCart() {
		if(confirm("상품을 장바구니에 추가하시겠습니까?")){
			document.addForm.submit();
		} else{
			document.addFrom.reset();
		}
	}
</script>
</head>
<body>
	<jsp:include page="menu.jsp"/>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">도서정보</h1>
		</div>
	</div>
	
	<%@ include file="dbconn.jsp" %>
		<%	
			String bookId= request.getParameter("id");
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			String sql = "select * from book where b_id =? ";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, bookId);
			rs = pstmt.executeQuery();
			if(rs.next()){
		%>
	<div class="container">
		<div class="row">
			<div class="col-md-5">
			<img src="c:/upload/<%=rs.getString("b_fileName")%>" style="width: 70%">
			</div>
			<div class="col-md-6">
			<h3>[<%=rs.getString("b_category")%>] <%=rs.getString("b_name")%></h3>
			<p><%=rs.getString("b_description")%></p>
			<p>도서코드 : <b><span class="badge badge-danger"><%=rs.getString("b_id")%></span></b></p>
			<p>출판사 : <%=rs.getString("b_publisher")%></p>
			<p>저자 : <%=rs.getString("b_author")%></p>
			<p>재고수 : <%=rs.getLong("b_unitsInStock")%></p>
			<p>총 페이지 수  : <%=rs.getLong("b_totalPages")%></p>
			<p>출판일 : <%=rs.getString("b_releaseDate")%></p>
			<h4> <%=rs.getInt("b_unitPrice")%>원</h4>
			<p><form name="addForm" action="./addCart.jsp?id=<%=rs.getString("b_id")%>" method="post">
			<a href="#" class="btn btn-info">상품 주문 &raquo;</a>
			<a href="./cart.jsp" class="btn btn-warning" onclick="addToCart()" >장바구니 &raquo;</a>
			<a href="books.jsp" class="btn btn-secondary">상품목록 &raquo;</a>
			</form></p>
			</div>
		</div>
	</div>
	<% 
			}
			if(rs != null) rs.close();
			if(pstmt != null) pstmt.close();
			if(conn != null) conn.close();
		%>
</body>
</html>