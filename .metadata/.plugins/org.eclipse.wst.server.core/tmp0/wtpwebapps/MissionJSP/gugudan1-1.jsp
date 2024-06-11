<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>구구단1-1</title>
</head>
<body>
<%
    String dir = request.getParameter("dir");
    if (dir == null) {
        out.println("파라미터 'dir'를 입력하세요. 예: dir=ver 또는 dir=hor");
    } else if (dir.equals("ver")) {
        for (int i = 2; i <= 9; i++) {
            for (int j = 1; j <= 9; j++) {
                out.println(i + " x " + j + " = " + (i * j) + "<br>");
            }
            out.println("<br>");
        }
    } else if (dir.equals("hor")) {
        for (int i = 1; i <= 9; i++) {
            for (int j = 2; j <= 9; j++) {
                out.print(j + " x " + i + " = " + (j * i) + "&emsp;");
            }
            out.println("<br>");
        }
    } else {
        out.println("올바른 파라미터 값을 입력하세요. dir=ver 또는 dir=hor 만 가능합니다.");
    }
%>
</body>
</html> 