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
		//Date now = new Date(); 그러나 이건 현재 날짜시간만 보여줌, 몇 일 뒤 이런 건 X 
		
		//오늘 날짜 정보를 얻어온다 / 이경우 Date와 달리 시간 계산이 가능하다!
		Calendar today = Calendar.getInstance();  //객체생성이 아니라, 생성된 객체를 얻어오는 것
		
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy년 MM월 dd일");
	
		// 하루 빼기 (오늘날짜-1 = 어제날짜) 혹은 월,달을 더하고 빼거나
		today.add(Calendar.DATE, -1);
		today.add(Calendar.MONTH, 8);
		
		String formatString = formatter.format(today.getTime()); //캘린더 사용법 - 오늘날짜 표시

	%>
	
	<div><%= formatString %></div>


</body>
</html>