<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Statement" %>
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
	<h2>보드 목록 조회 테스트(excuteQuery() 사용)</h2>
	<%
	JDBConnect jdbc = new JDBConnect();
	
	
	String sql = "SELECT num, title, contect, name, postdate, visitcount FROM board";
	Statement stmt = jdbc.getConnection().createStatement();
	
	ResultSet rs = stmt.executeQuery(sql);
	%>
	
	 <table border="1">
        <tr>
            <th>num</th>
            <th>title</th>
            <th>context</th>
            <th>name</th>
            <th>Postdate</th>
            <th>visitcount</th>
        </tr>
        
        <% while (rs.next()) { %>
            <tr>
                <td><%= rs.getInt("num") %></td>
                <td><%= rs.getString("title") %></td>
                <td><%= rs.getString("contect") %></td>
                <td><%= rs.getString("name") %></td>
                <td><%= rs.getDate("postdate") %></td>
                <td><%= rs.getInt("visitcount") %></td>
            </tr>
        <% } %>
    </table>
    <% 
	jdbc.close();
    %>
</body>
</html>