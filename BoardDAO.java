package mvc.model;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import mvc.database.DBConnection;
public class BoardDAO {
	private static BoardDAO instance;
	private BoardDAO() {
	}
	public static BoardDAO getInstance() {
		if(instance==null) instance = new BoardDAO();
		
		return instance;
	}
 	public int getListCount(String items, String text) {
 		Connection conn= null;
 		PreparedStatement pstmt= null;
 		ResultSet rs = null;
 		
 		int x =0;
 		String sql;
 		
 		if(items ==null && text == null) {
 			sql = "select count(*) from board";
 		}
 		else {
 			sql= "select count(*) from board where" + items + "like'%" + text +"%'";
 		}
 		try {
 			conn = DBConnection.getConnection();
 			pstmt = conn.prepareStatement(sql);
 			rs = pstmt.executeQuery();
 			
 			if(rs.next()) {
 				 x= rs.getInt(1);
 			}
 		}catch(Exception ex) {
 			System.out.println("getListCount() 에러:"+ ex.getMessage());
 		}finally {
 			try {
 				if(rs != null) rs.close();
 				if(pstmt != null) pstmt.close();
 				if(conn != null) conn.close();
 			}catch(Exception ex) {
 	 			System.out.println("getListCount() 에러:"+ ex.getMessage());
 	 		}
 		}
 		return x;
 	}
 	
 	public ArrayList<BoardDTO> getBoardList(int page, int limit, String items, String text){
 		Connection conn= null;
 		PreparedStatement pstmt= null;
 		ResultSet rs = null;
 		
 		int total_record = getListCount(items, text);
 		int start = (page-1)*limit;
 		int index = start+1;
 		
 		String sql;
 		if(items ==null && text == null) {
 			sql = "select * from board order by num desc";
 		}
 		else {
 			sql= "select * from board where" + items + "like'%" + text +"%' order by num desc";
 		}
 		ArrayList<BoardDTO> list = new ArrayList<BoardDTO>();
 		try {
 			conn = DBConnection.getConnection();
 			pstmt = conn.prepareStatement(sql);
 			rs = pstmt.executeQuery();
 			
 			while(rs.absolute(index)) {
 				BoardDTO board = new BoardDTO();
 				board.setNum(rs.getInt("num"));
 				board.setId(rs.getString("id"));
 				board.setName(rs.getString("name"));
 				board.setSubject(rs.getString("subject"));
 				board.setContent(rs.getString("content"));
 				board.setRegist_day(rs.getString("regist_day"));
 				board.setHit(rs.getInt("hit"));
 				board.setIp(rs.getString("ip"));
 				list.add(board);
 				
 				if(index < (start+limit) && index <= total_record) index++;
 				else break;
 			}
 			return list;
 		}catch(Exception ex) {
 			System.out.println("getListCount() 에러:"+ ex.getMessage());
 		}
 		finally {
 			try {
 				if(rs != null) rs.close();
 				if(pstmt != null) pstmt.close();
 				if(conn != null) conn.close();
 			}catch(Exception ex) {
 	 			System.out.println("getListCount() 에러:"+ ex.getMessage());
 	 		}
 		}
 		return null;
 	}
 	
}
