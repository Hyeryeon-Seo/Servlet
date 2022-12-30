<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<!-- 테이블 만들고 ,
	한꺼번에 하지말고 단계적으로 하기. 우선 표먼저 다뜨게 만들고..-->
	<%	// T 
	for(Map<String, Object> store:list) { //열고
	 %>  <!-- 이거 만들고 -->
	 
	 <!-- object지만 그냥 뜨게 할 수 있다  -->
	 <td><%= store.get("menu") %></td>  <!-- 이런식으로 이거 또 나머지 name등도하고 -->
	</tr>
	<% } //여기서 닫는다%>
	
	
</body>
</html>