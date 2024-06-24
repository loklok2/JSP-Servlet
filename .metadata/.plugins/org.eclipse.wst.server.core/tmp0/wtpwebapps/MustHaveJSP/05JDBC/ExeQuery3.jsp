<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="common.JDBConnect" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JDBC</title>
</head>
<body>
	<h2>파라미터로 사용자 id 입력해서 목록 출력</h2>
	<%
	String id = request.getParameter("id");
	ResultSet rs = null;
	//?를 사용하는 경우, PreparedStatement를 사용해야 합니다
	if(id !=null && !id.isEmpty()){
		JDBConnect jdbc = new JDBConnect();
		String sql = "SELECT id, pass, name, regidate FROM member WHERE id=?";
		PreparedStatement pstmt = jdbc.getConnection().prepareStatement(sql);
		pstmt.setString(1, id); 
		rs = pstmt.executeQuery();
	}
	%>
	
	 <table border="1">
        <tr>
            <th>id</th>
            <th>pass</th>
            <th>name</th>
            <th>regidate</th>
        </tr>
        
        <% while (rs.next()) { %>
            <tr>
                <td><%= rs.getString("id") %></td>
                <td><%= rs.getString("pass") %></td>
                <td><%= rs.getString("name") %></td>
                <td><%= rs.getDate("regidate") %></td>
            </tr>
        <% } %>
    </table>
    <% 
    if(rs != null) rs.close();
    %>
</body>
</html>