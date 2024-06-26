package common;
import java.sql.*;
import java.util.*;

import membership.MemberDTO;
import model1.board.BoardDTO;

public class MusthaveDAO {
    private Connection conn;
    private PreparedStatement pstmt;
    private ResultSet rs;

    public MusthaveDAO() {
        try {
            String url = "jdbc:mysql://localhost:3306/musthave";
            String id = "scott";
            String pass = "tiger";
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection(url, id, pass);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public List<MemberDTO> getMembers() {
        List<MemberDTO> list = new ArrayList<MemberDTO>();
        String SQL = "SELECT * FROM member";
        try {
            pstmt = conn.prepareStatement(SQL);
            rs = pstmt.executeQuery();
            while (rs.next()) {
                MemberDTO member = new MemberDTO();
                member.setId(rs.getString("id"));
                member.setPass(rs.getString("pass"));
                member.setName(rs.getString("name"));
                member.setRegidate(rs.getString("regidate"));
                list.add(member);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    public List<BoardDTO> getBoards() {
        List<BoardDTO> list = new ArrayList<BoardDTO>();
        String SQL = "SELECT * FROM board";
        try {
            pstmt = conn.prepareStatement(SQL);
            rs = pstmt.executeQuery();
            while (rs.next()) {
                BoardDTO board = new BoardDTO();
                board.setNum(rs.getString("num"));
                board.setTitle(rs.getString("title"));
                board.setContent(rs.getString("content"));
                board.setId(rs.getString("id"));
                board.setPostdate(rs.getDate("postdate"));
                list.add(board);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
}
