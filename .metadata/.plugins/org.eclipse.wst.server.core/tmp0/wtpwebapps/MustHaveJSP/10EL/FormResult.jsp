<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>표현 언어(EL) - 폼값 처리</title>
</head>
<body>
	<ul>
		<li>이름 : ${ param.name }</li>
		<li>성별 : ${ param.gender }</li>
		<li>학력 : ${ param.grade }</li>
		<li>관심사항 : ${ paramValue.inter[0] }
			${ paramValue.inter[1] }
			${ paramValue.inter[2] }
			${ paramValue.inter[3] }</li>
	</ul>
</body>
</html>