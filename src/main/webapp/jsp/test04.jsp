<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 5번 체크된 단위  선택된 단위 모두 변환  / 변수 값 보여준다? ..-->

	<% 
	String calc = request.getParameter("calc");
	//String strNum1 = request.getParameter("number1");
	//String strNum2 = request.getParameter("number2");
	
//	int num1 = Integer.parseInt(strNum1);
//	int num2 = Integer.parseInt(strNum2);
	
	// T; 바로 정수로 바꾸기 아래처럼!
	int num1 = Integer.parseInt(request.getParameter("number1"));
	int num2 = Integer.parseInt(request.getParameter("number2"));
	
	double result = 0.0; //0그냥 (T)
	if (calc.equals("+")) {  //문자열 equals
		result = num1 + num2;
	} else if (calc.equals("ㅡ")) {
		result = num1 - num2;
	} else if (calc.equals("X")) {
		result = num1 * num2;
	} else {
		result = num1 / (double)num2;  //나누기 double꼭 주의!
	}


	%>

	<h1>계산 결과</h1>
	<div class="display-4"><%= num1 %> <%= calc %> <%= num2 %> = <span class="text-primary"><%= result %></span></div>
	<!-- 줄바꿈없이 트정태그만 성질주고싶으면 span -->
    <!-- 꾸미기 다시보기 -->
</body>
</html>