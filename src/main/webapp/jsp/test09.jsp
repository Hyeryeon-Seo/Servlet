<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="java.text.SimpleDateFormat" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>

	<%	//100일더해보면 안맞음 (오늘이0일이 아니라... 내일 +1일아니고 / 오늘을 1일이라고 기준두면) 네이버 100일계산기 검색 , 과 비교
		// 10번은 자율(풀면메일) /일주일마다 줄도 바꿔야하고
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy년 MM월 dd일");
	%>

		<div class="container mt-5"> <!-- container알아서 약간(가로상) 가운데 위치 -->
			<h1>오늘부터 1일</h1>
		
		<% for(int i = 100; i<=1000; i+=100) { // 반복문 열기
				Calendar today = Calendar.getInstance();
				today.add(Calendar.DATE, i-1); // 오늘이 기준 (매번 바뀜) //99,199,299,..
				String formatString = formatter.format(today.getTime()); 
				//날짜계산후 (add) - 인출할 문자열 먼저잡기 (formatString) - 스크립틀릿다시닫고 아래에서 반복내용
				// 100일째 (네이버, 1.3기준) 2023.4.12  > i-1
				// 200일째 7.21

				// for문안에 Calendar today = Calendar.getInstance(); 
			 	// >> for문안에서 매번 새로 today , calendar클래스로 다시 새로 불러?와야
				// else > 누적된다 today를 계산했더니, 그 계산된 today에서 또 누적 계산하는듯 
		%>
			<!-- 반복 내용 -->
			<div class="display-4">
				<b><%= i %></b>일 :
				<span class="text-danger"><%= formatString %></span>
				<!-- 혹시 날짜의 숫자 강조?? -->
			</div>
			
		<% 	 } // for반복문닫기 %>
		
</body>
</html>