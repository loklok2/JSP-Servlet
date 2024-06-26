package fileupload;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.List;
import java.util.Vector;

import common.JDBConnect;

public class MyFileDAO extends JDBConnect {
	private PreparedStatement psmt;
    private Statement stmt;
    private ResultSet rs;
	
//	public static void main(String[] args) {
//		
//		MyFileDAO dao = new MyFileDAO();
//		
//		MyFileDTO dto = new MyFileDTO();
//		
//		dto.setTitle("abcd");
//		dto.setOfile("bbb");
//		dto.setSfile("ccc");
//		dao.insertFile(dto);
//	}
	
	public int insertFile(MyFileDTO dto) {
		PreparedStatement psmt = null;
		int applyResult = 0;
		try {
			String query = "INSERT INTO myfile (title,cate, ofile, sfile)"
						 + "VALUES(?,?,?,?)";
			psmt = getCon().prepareStatement(query);
			psmt.setString(1, dto.getTitle());
			psmt.setString(2, dto.getCate());
			psmt.setString(3, dto.getOfile());
			psmt.setString(4, dto.getSfile());
			applyResult = psmt.executeUpdate();
		}
		catch(Exception e) {
			System.out.println("insert 중 예외발생");
			e.printStackTrace();
		}
		return applyResult;
	}
	
	
	public List<MyFileDTO> myFileList() {
		List<MyFileDTO> fileList = new Vector<MyFileDTO>();
		String query = "SELECT * FROM myfile ORDER BY idx DESC";
		try {
			stmt = getCon().createStatement();
			rs = stmt.executeQuery(query);
			
			while (rs.next()) {
				MyFileDTO dto = new MyFileDTO();
				dto.setIdx(rs.getString(1));
				dto.setTitle(rs.getString(2));
				dto.setCate(rs.getString(3));
				dto.setOfile(rs.getString(4));
				dto.setSfile(rs.getString(5));
				dto.setPostdate(rs.getString(6));
				
				fileList.add(dto);
				
			}
		}
		catch(Exception e) {
			System.out.println("select 시 예외 발생");
			e.printStackTrace();
		}
		return fileList;
	}

}
