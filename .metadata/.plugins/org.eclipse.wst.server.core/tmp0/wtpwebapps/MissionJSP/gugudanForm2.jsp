<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>gugudan Form</title>
</head>
<body>
    <h2>구구단 출력하기</h2>
    <form action="gugudanProc2.jsp" method="post">
           <input type="radio" name="type" value="type1"/>
            Type1
            <input type="number" name="dan" value="dan"/>단
            <br />
            <input type="radio" name="type" value="type2"/>
            Type2
            <input type="radio" name="dir" value="hor"/>Horizontal
            <input type="radio" name="dir" value="ver"/>vertical
            <br />
            <input type="radio" name="type" value="type3"/>
            Type3
            <input type="number" name="col" value="col"/>열
        <br>
        <input type="submit" value="제출">
    </form>
</body>
</html>
