package membership;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import common.JDBConnect;

public class MemberDAO extends JDBConnect {
    // 명시한 데이터베이스로의 연결이 완료된 MemberDAO 객체를 생성합니다.
	
	private PreparedStatement psmt;
    private ResultSet rs;
	
    public MemberDAO(String driver, String url, String id, String pwd) {
        super(driver, url, id, pwd);
    }

    // 명시한 아이디/패스워드와 일치하는 회원 정보를 반환합니다.
    public MemberDTO getMemberDTO(String id, String pass) {
        MemberDTO dto = new MemberDTO();  // 회원 정보 DTO 객체 생성
        String query = "SELECT * FROM member WHERE id=? AND pass=?";  // 쿼리문 템플릿
        
        try {
            // 쿼리 실행
            psmt = getCon().prepareStatement(query); 
            psmt.setString(1, id);    
            psmt.setString(2, pass);  
            rs = psmt.executeQuery();  

            // 결과 처리
            if (rs.next()) {
                // 쿼리 결과로 얻은 회원 정보를 DTO 객체에 저장
                dto.setId(rs.getString("id"));
                dto.setPass(rs.getString("pass"));
                dto.setName(rs.getString(3));
                dto.setRegidate(rs.getString(4));
            }
        }
        catch (Exception e) {
            e.printStackTrace();
        }

        return dto;  // DTO 객체 반환
    }
}