<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
	int length = Integer.parseInt(request. ...))
	String[] units = request.getParameterValues ("unit") //parameterValues가져오기
	
	
	// 문자열 이어붙여서 나오게 하기! 반복문 바깥에 문자열 변수 만들어서
	String result = "";
	for(int i = 0; i < units.length; i++) {
		if(units[i].equals("inch")) {
			// 인치 변환
			double inch = length * 0.39;
			result += inch + "in\n"; // result = result + inch + "in"; 
			// 여기서 주의! 모두 in 등 단위 뒤에 \n 역슬래시 n붙여주기!
			// 즉 자바코드대로 줄바꿈 해야하니까 
			// 그러나... 이건 사실 html에 들어갈 것 아래에 <% ..자바코드끝나고 그래서 그냥 <br>넣어주기
			
		} else if (units[i].equals("yard")) {
			double inch = length * 0.010936;
		}
	
		// 다 이런 식으로 
		// double meter = length / 100.0;
	
			
	%>
	
	<h2>변환결과</h2>
	<h3><%= length %>cm</h3>
	<hr>
	<h3><%= result %></h3>
	
	
</body>
</html>