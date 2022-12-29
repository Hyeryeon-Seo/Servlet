<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>  <!-- import써주기 -->
<%@ page import="java.text.SimpleDateFormat" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>날짜 시간</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>
	
	<% 
	// 한번에 같은 jsp에 날짜, 시간 다 표시 가능하도록! (버튼 따라서), 전달받는것에따라서. 즉 파라미터 활용
	// 날짜가 보고 싶으면 what=date   what이라는 파라미터에 date를 전달해주면
	// 시간이 보고 싶으면 what=time
	String what = request.getParameter("what");
	
		Date now = new Date(); 
		SimpleDateFormat timeFormatter = new SimpleDateFormat("현재 시간 HH시 mm분 ss초"); 
		SimpleDateFormat dateFormatter = new SimpleDateFormat("오늘 날짜 yyyy년 M월 d일"); 
		
		String formatString = null; // 초기화?  if문밖에서 이렇게 설정해주면 if문밖에서도 쓸 수 있다
		if(what.equals("date")) {  //날짜
			String formatString = dateFormatter.format(now);
		} else { // 시간
			String formatString = timeFormatter.format(now);
		}
	
	%>
	
<!-- 	
	public String nowDateTime(String now) {
		if() {
		Date now = new Date(); // 날짜 객체, now에 저장
		SimpleDateFormat formatter = new SimpleDateFormat("HH시 mm분 ss초"); //날자 포맷팅
		String strNowTime = formatter.format(now);
	}
		
		
	%>
	
	
	}
	SWI
		
	%>
	<h1>현재 시간  %= strNowTime %></h1>
	
 -->
 	<div class="container">
 		<div class="display-1"><%= formatString %></div> <!-- -부트스트랩활용예쁘게 꾸미기                         -->
 	</div>
	
	
	
	
</body>
</html>