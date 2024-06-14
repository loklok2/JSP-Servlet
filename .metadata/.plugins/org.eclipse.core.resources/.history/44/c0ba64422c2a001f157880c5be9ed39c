<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>유클리드 호제법 결과</title>
</head>
<body>
<%
    // EuclidMain.jsp에서 사용한 함수 정의를 그대로 복사하여 스크립트릿 내부에 붙여넣기
    int findGCD(int num1, int num2) {
        while (num2 != 0) {
            int temp = num2;
            num2 = num1 % num2;
            num1 = temp;
        }
        return num1;
    }

    int findLCM(int num1, int num2) {
        return (num1 * num2) / findGCD(num1, num2);
    }

    // EuclidMain.jsp에서 사용한 변수와 동일하게 사용
    String snum1 = request.getParameter("num1");
    String snum2 = request.getParameter("num2");

    int num1 = snum1 != null ? Integer.parseInt(snum1) : 0;
    int num2 = snum2 != null ? Integer.parseInt(snum2) : 0;

    // EuclidMain.jsp에서 사용한 로직과 동일하게 사용
    int gcd = findGCD(num1, num2);
    int lcm = findLCM(num1, num2);
%>
    <h1>유클리드 호제법 결과</h1>
    <p>입력한 숫자: <%= num1 %>, <%= num2 %></p>
    <p>최대공약수(GCD): <%= gcd %></p>
    <p>최소공배수(LCM): <%= lcm %></p>
</body>
</html>