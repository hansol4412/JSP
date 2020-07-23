<%--16_4. request 내장객체의 getParameter() 메소드를 이용해 전송된 요청 파라미터 값을 받아
		  Student 테이블에 삽입하도록 작성합니다. --%>
<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<title>Database DB</title>
</head>
<body>
	<%@ include file="dbconn.jsp" %>
	<%
		request.setCharacterEncoding("utf-8");
		
		String num = request.getParameter("num");
		String depart = request.getParameter("depart");
		String name = request.getParameter("name");
		String address = request.getParameter("address");
		String phone = request.getParameter("phone");
		
		ResultSet rs = null;
		PreparedStatement pstmt = null;
		try{
		String sql = "insert into Student values(?,?,?,?,?)";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, num);
		pstmt.setString(2, depart);
		pstmt.setString(3, name);
		pstmt.setString(4, address);
		pstmt.setString(5, phone);
		pstmt.executeUpdate();
		out.println("데이터를 성공적으로 입력했습니다.<br>");
		}
		catch(SQLException ex){
			out.println("데이터를 입력을 실패했습니다..<br>");
			out.println("SQLException:"+ex.getMessage());
		}
		finally{
			if(pstmt != null) pstmt.close();
			if(conn != null) conn.close();
		}
		
	
	%>
</body>
</html>