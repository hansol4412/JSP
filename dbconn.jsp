<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*" %>
<%
	Connection conn = null;
	
	try{
	String url ="jdbc:mysql://localhost:3306/ExerciseDB?serverTimezone=UTC";
	String user = "root";
	String password ="1234";
	
	Class.forName("com.mysql.jdbc.Driver");
	conn = DriverManager.getConnection(url, user, password);
	out.println("데이터 베이스 연결이 성공했습니다.");
	
	} catch(SQLException ex){
		out.println("데이터 베이스 연결이 실패했습니다.<br>");
		out.println("SQLException:"+ex.getMessage());
	}
%>