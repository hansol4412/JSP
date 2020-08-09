<%@page language="java" %>
<%@page contentType="text/html; charset=utf-8" %>
<%@page import="java.sql.*"%>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css"/>
<title>상품 편집</title>
<%
	String edit = request.getParameter("edit");
%>
</head>
<body>
	<jsp:include page="menu.jsp"/>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">상품 편집</h1>
		</div>
	</div>
	<div class="container">
		<div class="row" align="left">
		<%@ include file="dbconn.jsp" %>
		<%
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			String sql = "select * from book";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()){
		%>
		<div class="col-md-3">
			<img src="c:/upload/<%=rs.getString("b_fileName") %>" style="width: 60%">
			</div>
			
			<div class="col-md-8 ">
			<br>
			<h3>[<%=rs.getString("b_category")%>] <%=rs.getString("b_name") %></h3>
			<br>
			<p><%=rs.getString("b_description") %></p>
			<p><%=rs.getString("b_author") %>  |  <%=rs.getString("b_publisher") %>  |<%=rs.getString("b_unitPrice")  %>원</p>
			<p><a href="book.jsp?id=<%=rs.getString("b_id") %>" class="btn btn-secondary" role="button">상세 정보</a></p>
			<p><%
				if(edit.equals("update")){
				%>
				<a href="./updateBook.jsp?id=<%=rs.getString("b_id") %>" class="btn-btn-success" role="button">수정 &raquo;</a></p>
			<%} %>
			<hr>
			</div>
		<% 
			}
			if(rs != null) rs.close();
			if(pstmt != null) pstmt.close();
			if(conn != null) conn.close();
		%>
		</div>
	</div>
	<jsp:include page="footer.jsp"/>
</body>
</html>