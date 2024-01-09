package board;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import reply.ReplyDTO;



public class BoardDAO {

	private Connection coon;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	
	private Context init;
	private DataSource ds;
	
	private static BoardDAO instance = new BoardDAO();
	public static BoardDAO getInstance() {
		return instance;
	}
	
	private BoardDAO() {
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
			if(coon != null) coon.close();
		} catch (SQLException e) {}
		
	}
	
	
	private BoardDTO mapping(ResultSet rs) throws SQLException {
		BoardDTO dto = new BoardDTO();
		dto.setContent(rs.getString("content"));
		dto.setIdx(rs.getInt("idx"));
		dto.setTitle(rs.getString("title"));
		dto.setWriteDate(rs.getDate("writeDate"));
		dto.setWriter(rs.getString("writer"));
		return dto;
	}
	
	public List<BoardDTO> selectList() {
		ArrayList<BoardDTO> list = new ArrayList<BoardDTO>();
		String sql = "select"
				+ " (select count(*) from reply where board_idx = board.idx) as replyCount,	"
				+ " board.* "
				+ " from board order by idx desc";
		
		try {
			coon = ds.getConnection();
			pstmt = coon.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				BoardDTO dto = mapping(rs);					// 기본 맵핑 +
				dto.setReplyCount(rs.getInt("replyCount")); // 댓글 개수
				list.add(dto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {close();}
		return list;
	}
	
	public BoardDTO selectOne(int idx) {
		BoardDTO dto = null;
		String sql ="select * from board where idx =?";
		
		try {
			coon = ds.getConnection();
			pstmt = coon.prepareStatement(sql);
			pstmt.setInt(1, idx);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				dto = mapping(rs);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {close();}
		return dto;
	}
	
	public int insert(BoardDTO dto) {
		int row =0;
		String sql = "insert into board (title, writer, content)"
				+ "values (?, ?, ?)";
		try {
			coon = ds.getConnection();
			pstmt = coon.prepareStatement(sql);
			pstmt.setString(1, dto.getTitle());
			pstmt.setString(2, dto.getWriter());
			pstmt.setString(3, dto.getContent());
			row = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {close();}
		return row;
	}
	
	
	
	
}
