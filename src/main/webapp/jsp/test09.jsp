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

	<%
		//100일더해보면 안맞음 (오늘을 1일이라고 기준두면) 네이버 100일계산기 검색 , 과 비교
		// 10번은 자율, 풀면 메일보내도 /일주일마다 줄도 바꿔야하고
		
		Calendar today = Calendar.getInstance();
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy년 MM월 dd일");
		
		// for(int i = 100; i<=1000; i+=100) { 
		 	
	%>



		<div class="container">
		
	<% 	for(int i = 100; i<=1000; i+=100) { 
			today.add(Calendar.DATE, i);
			String formatString = formatter.format(today.getTime());  %>
	
		 <div><%= i %> 일 : <%= formatString)%></div>   
			<!-- 100일째 (네이버) 2023.4.11 --> 
			
	<%  } %>
	
	
		<!-- <div><= formatString %></div> -->
		


	
	
	</div>
</body>
</html>