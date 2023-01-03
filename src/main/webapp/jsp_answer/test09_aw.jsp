<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="java.text.SimpleDateFormat" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<% //위에 import하고
		Calendar today = Calendar.getInstance();
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy년 M월 d일");
	%>

	<div class="container">
		<h1>오늘부터 1일</h1>
	
		<%
			//처음을 1일기준을 -1해서 오늘로두고 
			today.add(Calendar.DATE, -1);
		
			//여기부터 반복해야. 
			for(int i = 1; i <= 10; i++) {
				today.add(Calendar.DATE, 100); //그뒤 매번 100씩 더해주면 됨 /(i-1말고) 안그러면 누적되므로, ..
				String dateString = formatter.format(today.getTime());
		%>
	
	
		<div class="display-4">
			<%= 100 * i %>일 : <span class="text-danger"> <%= dateString %></span>
		</div>
	
		<% 	  } //반복 끝 %>
	
</body>
</html>