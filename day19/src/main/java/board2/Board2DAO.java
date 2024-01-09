package board2;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.sql.DataSource;

public class Board2DAO {
	
	private Context init;
	private DataSource ds;
	
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	private static Board2DAO instance = new Board2DAO();
	public static Board2DAO getInstance () {
		return instance;
	}
	
	public Board2DAO() {
		try {
			init = new InitialContext();
			ds = (DataSource) init.lookup("java:comp/env/jdbc/oracle");
		} catch (NamingException e) {
			e.printStackTrace();
		}
	}
	
	private void close() {
		try {
			if(rs != null) rs.close();
			if(pstmt != null) pstmt.close();
			if(conn != null) conn.close();
			
		} catch (SQLException e) {
			// TODO: handle exception
		}
	}
	
	private Board2DTO mapping(ResultSet rs) throws SQLException {
		
		Board2DTO dto = new Board2DTO();
		dto.setIdx(rs.getInt("idx"));
		dto.setTitle(rs.getString("title"));
		dto.setWriter(rs.getString("writer"));
		dto.setContent(rs.getString("content"));
		dto.setImage(rs.getString("image"));
		dto.setIpaddr(rs.getString("ipaddr"));
		dto.setViewCount(rs.getInt("viewCount"));
		dto.setWriteDate(rs.getDate("writeDate"));
		return dto;
		
		
	}
	
	
	// 게시글 목록 
	public List<Board2DTO> selectList(String search) {
		ArrayList<Board2DTO> list = new ArrayList<>();
		String sql = "select * from board2 "
				+ "where "
				+ " 	title like '%' || ? || '%'	"
				+ "	or writer like '%' || ? || '%'	"
				+ "	or content like '%' || ? || '%'	"
				+"	order by idx desc";
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, search);
			pstmt.setString(2, search);
			pstmt.setString(3, search);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				list.add(mapping(rs));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {close();}
		return list;
	}
	// 단일 조회 ip주소 일부 가리기
	public Board2DTO selectOne(int idx) {
		Board2DTO dto = null;
		String sql = "select * from board2 where idx = ?";
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, idx);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				dto = mapping(rs);
				dto.setIpaddr(maskIpaddr(dto.getIpaddr())); 
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {close();}
		
		return dto;
	}
	
	private String maskIpaddr(String src) {	// 아이피 주소 원본 (DB에서 가져온 값)
		String[] dst = src.split("\\.");
		
		if(dst.length == 4) {
			dst[2] = "***";		// 마지막 전과 
			dst[3] = "***";		// 마지막 부분을 ***로 대체
			return String.join(".", dst); // 받은 문자열들을 .으로 받아 다시 이어준다
		}else {
			return src;
			
		}
		
		
	}
	
	public int insert(Board2DTO dto) {
		int row = 0;
		String sql = "INSERT INTO board2 (title, writer, content, image, ipaddr) "
				+ "VALUES (?, ?, ?, ?, ?)";
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getTitle());
			pstmt.setString(2, dto.getWriter());
			pstmt.setString(3, dto.getContent());
			pstmt.setString(4, dto.getImage());
			pstmt.setString(5, dto.getIpaddr());
			row = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return row;
		
		
	}
}
