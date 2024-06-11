<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Multiplication Tables</title>
</head>
<body>
<%
String dir = "hor"; // 기본값을 hor로 설정하여 세로로 출력
try {
    String param = request.getParameter("ver");
    if (param != null && (param.equalsIgnoreCase("ver") || param.equalsIgnoreCase("hor"))) {
 
    }
} catch(Exception e) {}

if (dir.equalsIgnoreCase("ver")) {
    for (int i = 2; i <= 9; i++) {
        out.print(String.format("<h2>%d단</h2>", i));
        for (int j = 1; j <= 9; j++) {
            out.print(i + " * " + j + " = " + (i * j) + "&nbsp;&nbsp;&nbsp;");
        }
        out.print("<br />");
    }
} else if (dir.equalsIgnoreCase("hor")) {
    for (int i = 1; i <= 9; i++) {
        out.println(String.format("<h2>%d단</h2>", i));
        for (int j = 2; j <= 9; j++) {
            out.println(j + " * " + i + " = " + (j * i) + "<br />");
        }
        out.println("<br />");
    }
}
%>
</body>
</html>
