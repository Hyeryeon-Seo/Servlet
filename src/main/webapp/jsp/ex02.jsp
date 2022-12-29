<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>get method</title>

</head>
<body>

	<%
		// 이름과 생년월일을 전달받고 (request의 파라미터를 통해서)
		// 이름과 나이를 보여주는 페이지
		// 원래는 doPOST에서 파라미터로 전달받지만 JSP는 그럴수없어서 그냥 REQUEST객체 쓰도록 셋팅되어있음 (request라는 이름으로)
		String name = request.getParameter("name");
		String birthday = request.getParameter("birthday");
		
		String yearString = birthday.substring(0,4);  // 0부터 4자리 잘라내기
		int year = Integer.parseInt(yearString);
		int age = 2022 - year + 1;
		%>
		
		<table border="1">
			<tr>
				<td>이름</td>
				<td><%= name %></td>
			</tr>
			<tr>
				<td>나이</td>
				<td><%= age %></td>
			</tr>
		
	
	
</body>
</html>