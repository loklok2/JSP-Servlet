<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>mission 2</title>
 <style>
        .gugudan {
            display: inline-block;
            padding: 10px;
            margin: 10px;
        }
        .gugudan span {
            display: block;
        }
    </style>
</head>
<body>
<%
String colParam = request.getParameter("col");
int col = 3; // 기본 값
if (colParam != null) {
    try {
        col = Integer.parseInt(colParam);
    } catch (NumberFormatException e) {
 
    }
}
for (int i = col; i <= 9; i++) { //총루프가 3개다 전체가 출력 
    out.print("<div class=\"gugudan\">" + i + "단 ");
    for (int j = 1; j <= 9; j++) {
        out.print("<span>" + i + " × " + j + " = " + (i * j) + "</span>");
    }
    out.print("</div>");
}
%>
</body>
</html> 