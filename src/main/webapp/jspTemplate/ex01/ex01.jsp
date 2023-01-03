<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>기사</title>
</head>
<body>
	<h1>[속보] 오늘밤 날씨 추워</h1>
	<%-- 정적방식 (<%@ include file= ...) 내용 그대로 가져온다 --%>
	<div>기사 전송시간 : <%@ include file="date.jsp" %></div>
	<!-- (너무기니까 따로 만들고) 아까 만든걸 활용, 폴더같으니까 폴더이름등 따로 쓸 필요없는데 다르면 경로 더 써줘야 -->

	<%= dateString %>
	<!-- 그대로 가져와서 date.jsp안의 걸 그대로 쓸 수 있다 위처럼 -->
	<hr>
	<div>(끝)</div>

</body>
</html>