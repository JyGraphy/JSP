package youtube;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import oracle.jdbc.driver.OracleDriver;

public class YoutubeDAO {

	private String url = "jdbc:oracle:thin:@192.168.1.100:1521:xe";
	private String user = "c##itbank";
	private String password = "it";
	
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	
	private Connection getConnection() throws Exception {
		Class.forName(OracleDriver.class.getName());
		return DriverManager.getConnection(url, user, password);
	}
	
	private void close() {
		try {
			if(rs != null)			rs.close();
			if(pstmt != null)		pstmt.close();
			if(conn != null)		conn.close();
		} catch (SQLException e) {}
	}
	
	// 매핑
	private YoutubeDTO mapping(ResultSet rs) throws SQLException {
		YoutubeDTO dto = new YoutubeDTO();
		dto.setCategory(rs.getString("category"));
		dto.setIdx(rs.getInt("idx"));
		dto.setImgName(rs.getString("imgName"));
		dto.setChtitle(rs.getString("chtitle"));
		dto.setTitle(rs.getString("title"));
		dto.setTag(rs.getString("tag"));
		return dto;
	}
	
	// 전체 목록
	public List<YoutubeDTO> selectList(){
		ArrayList<YoutubeDTO> list = new ArrayList<YoutubeDTO>();
		String sql = "select * from youtube";
		
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				list.add(mapping(rs));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return list;
	}

	public List<YoutubeDTO> selectListByCategory(String category){
		ArrayList<YoutubeDTO> list = new ArrayList<>();
		String sql = "select * from youtube where category = ?";
		
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, category);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				list.add(mapping(rs));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {close();}
		return list;
	}
	
	// 단일 조회
	
	public YoutubeDTO selectOne(int idx) {
		String sql = "select * from youtube where idx = ?";
		YoutubeDTO dto = null;
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, idx);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				dto = mapping(rs);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {close();}
		return dto;
	}
	
	// 삭제 
	public int delete(int idx) {
		int row = 0;
		
		String sql = "delete youtube where idx = ?";
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, idx);
			row = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}finally {close();}
		return row;
	}
	
	
	// 추가
	
	public int insert(YoutubeDTO dto) {
		int row =0;
		
		String sql = "insert into youtube (category, title, imgName, chtitle, tag) values (?, ?, ?, ?, ?)";
		
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getCategory());
			pstmt.setString(2, dto.getTitle());
			pstmt.setString(3, dto.getImgName());
			pstmt.setString(4, dto.getChtitle());
			pstmt.setString(5, dto.getTag());
			row = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}finally {close();}
		return row;
	
	}
	
	public int selectCurrSeq() {
		int idx = 0;
		String sql = "select max(idx) from youtube";
		
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				idx = rs.getInt(1);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {close();}
		return idx;
	}
	
	
	public int update(YoutubeDTO dto) {
		int row = 0;
		String sql = "update youtube "
				+ "set"
				+"		category=?,"
				+"		title=?,"
				+"		chtitle=?,"
				+"		imgName=?,"
				+"		tag=?"
				+"where"
				+"			idx=?";
		
		try {
			conn=getConnection();
			pstmt= conn.prepareStatement(sql);
			pstmt.setString(1, dto.getCategory());
			pstmt.setString(2, dto.getTitle());
			pstmt.setString(3, dto.getChtitle());
			pstmt.setString(4, dto.getImgName());
			pstmt.setString(5, dto.getTag());
			pstmt.setInt(6, dto.getIdx());
			row = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}finally {close();}
				
		return row;
	}
	
	
}
