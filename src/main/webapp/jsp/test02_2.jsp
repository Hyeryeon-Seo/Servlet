<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>현재 날짜 확인</title>
</head>
<body>
	<!-- 값을 전달하는게 아니라 날짜인지 시간인지 구분할 수 있는 파라미터 하나로 전달되면  -->
	<% 
	Date now = new Date();
	SimpleDateFormat formatter = new SimpleDateFormat("yyyy년 MM월 dd일");
	String strNowDate = formatter.format(now);
	%>
	
	<h1>오늘 날짜 <%= strNowDate %> </h1>

</body>
</html>