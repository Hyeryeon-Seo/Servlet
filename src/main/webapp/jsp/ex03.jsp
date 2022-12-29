<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- get method와 달리 post method는 form으로만 써서 줘야! 주소에 쓰는 거 안됨 -->
	<%
		// 닉네임을 전달 받고 그대로 보여주기
		String nickname = request.getParameter("nickname");
		
		String animal = request.getParameter("animal");
		
		String fruit = request.getParameter("fruit");
		
		//String food = request.getParameter("food"); //근데 두개이상이어도 하나만 전달됨, 
		// 사실 이미 다 두정보이상 전달됨. .. 아래처럼 써야! Values까지 : 여러값 전달시!  여러개리턴! 배열로 처리,
		String[] foodArray = request.getParameterValues("food");
		
		// 민초 피자
		String foodString = " ";  //빈문자열만들어서 이어붙일 것
		for(int i = 0; i < foodArray.length; i++) {
			foodString += foodArray[i] + " "; // 더줄이면 왼쪽처럼 / foodString = foodString + foodArray[i] + " ";
		}
	%>
	
	<div><%= nickname %></div>
	<div><%= animal %></div>
	<div><%= fruit %></div>
	<div><%= foodString %></div>
	
	<!-- 모든 ..게 선택되고 입력되어야 제대로 뜬다. nickname도 꼮 써야함 -->
	
	
</body>
</html>