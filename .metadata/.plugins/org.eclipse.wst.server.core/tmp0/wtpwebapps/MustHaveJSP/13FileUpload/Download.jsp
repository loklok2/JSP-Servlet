<%@ page import="utils.JSFunction"%>
<%@ page import="java.io.FileNotFoundException"%>
<%@ page import="java.io.FileInputStream"%>
<%@ page import="java.io.File" %>
<%@ page import="java.io.OutputStream"%>
<%@ page import="java.io.InputStream" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
String saveDirectory = application.getRealPath("/Uploads"); //폴더의 물리적 경로 지정
String saveFilename = request.getParameter("sName"); //저장된 파일명 매개변수로 받아 저장
String originalFilename = request.getParameter("oName"); //저장된 원본파일명 매개변수로 받아 저장

try {
	//파일을 찾아서 입력 스트림 생성
	File file = new File(saveDirectory, saveFilename);
	InputStream inStream = new FileInputStream(file); //파일객체 만들기
	
	//한글 파일명 깨짐 방지
	String client = request.getHeader("User-Agent"); //웹브라우저 어떤거 사용하는지 읽기
	if (client.indexOf("WOW64") == 1) {
		originalFilename = new String(originalFilename.getBytes("UTF-8"),"ISO-8859-1");
	}
	else {
		originalFilename = new String(originalFilename.getBytes("KSC5601"), "ISO-8859-1");
	}
	//파일 다운로드용 응답 헤더 설정
	response.reset(); //응답헤더 초기화
	response.setContentType("application/octet-stream"); //파일 다운을 위한 콘텐트 타입지정 octet-stream는 8비트 단위의 바이너리 데이터
	response.setHeader("Content-Disposition", "attachment; filename=\"" +originalFilename +"\""); //웹 브라우저에서 파일다운로드창이 뜨면 원본파일명으로 기본입력
	response.setHeader("Content-Length", ""+ file.length() );
	
	//출력 스트림초기화
	out.clear();
	
	//response 내장 객체로부터 새로운 출력 스트림 생성
	OutputStream outStream = response.getOutputStream();
	
	//출력 스트림에 파일 내용을 출력
	byte b[] = new byte[(int)file.length()];
	int readBuffer = 0;
	while( (readBuffer = inStream.read(b)) > 0) {
		outStream.write(b, 0, readBuffer);
	}
	
	inStream.close();
	outStream.close();
	
}
catch (FileNotFoundException e){
	JSFunction.alertBack("파일을 찾을 수 없습니다.", out);
}
catch (Exception e){
	JSFunction.alertBack("예외가 발생하였습니다", out);
}

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>