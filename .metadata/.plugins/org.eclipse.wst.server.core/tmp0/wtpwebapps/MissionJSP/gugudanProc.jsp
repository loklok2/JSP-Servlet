<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String sel = request.getParameter("sel");

String url;
String key;

if (sel.equals("gugudanType1")){
	url = "./gugudan1.jsp";
	key = "dan";
}
else if (sel.equals("gugudanType2")){
	url = "./gugudan2.jsp";
	key = "dir";
}
else{
	url = "./gugudan3.jsp";
	key = "col";
}
request.getRequestDispatcher(url).forward(request, response);
%>