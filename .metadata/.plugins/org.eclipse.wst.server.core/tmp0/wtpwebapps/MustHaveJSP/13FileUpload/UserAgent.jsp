<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User-Agent check</title>
</head>
<body>
<%
String client = request.getHeader("User-Agent");
out.print(client);
%>
</body>
</html>