<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>구구단</title>
</head>
<body>
	<%
	//col 변수 선언 및 초기화
	int col = 2;
	try {
		col = Integer.parseInt(request.getParameter("col"));

	} catch (Exception e) {

	} 
	%>
	<h2 style="width:<%=col * 100%>px; text-align:center;">구구단3</h2>
	<div style="display:grid;  grid-template-columns: repeat(<%=col%>);">
		<%
		// 구구단 출력을 위한 반복문
		for (int i = 2; i <= 9; i += col) {			// col 만큼씩 증가하면서 반복
			for (int k = 0; k <= 9; k++) {			// 각 단의 곱셈을 위한 반복
				for (int j = 0; j < col; j++) {		// 한 행의 col 개수만큼 반복
		%>
			<div>
		<%
		 	
			if (9 < i + j) {// i+j가 10 이상인 경우 공백 출력, 그렇지 않으면 구구단 출력
				out.print("");
			} else {
				if (k == 0) {		// 첫 번째 행 단의 제목을 출력
					out.print("<h3>" + (i + j) + "단</h3>");
				} else {			// 나머지는 구구단 계산 결과 출력
					out.print(String.format("%d * %d = %d<br>", i + j, k, (i + j) * k));
				}
			}
		%>
			</div>
		<%
				}
			}
		}
		%>
	</div>
</body>
</html>