<%--16_5. PreparedStatement 객체로 데이터를 조회하도록 다음 조건에 맞게 JSP 애플리케이션을 만들고 결과를 확인하시오. --%>
<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<title>Database DB</title>
</head>
<body>
	
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
	
	<table width="500" border="1">
		<tr>
			<th>학번</th>
			<th>학과</th>
			<th>이름</th>
			<th>주소</th>
			<th>연락처</th>
		</tr>
		<%
			ResultSet rs = null;
			PreparedStatement pstmt = null;
			
			try{
				String sql = "select * from Student";
				pstmt = conn.prepareStatement(sql);
				rs = pstmt.executeQuery();
				
				while(rs.next()){
					String num = rs.getString("num");
					String depart = rs.getString("depart");
					String name = rs.getString("name");
					String address = rs.getString("address");
					String phone = rs.getString("phone");
			%>
			<tr>
				<td><%=num%></td>
				<td><%=depart%></td>
				<td><%=name%></td>
				<td><%=address%></td>
				<td><%=phone%></td>
			</tr>
			<% 
				}
			}catch(SQLException ex){
				out.println("데이터를 입력을 실패했습니다..<br>");
				out.println("SQLException:"+ex.getMessage());
			}
			finally{
				if(rs != null) rs.close();
				if(pstmt != null) pstmt.close();
				if(conn != null) conn.close();
			}
		%>
	</table>
	
	
</body>
</html>