<%@page import="java.sql.ResultSet"%>
<%@page import="com.seonuit.servlet.common.MysqlService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>유저 목록</title>
<!-- 해당페이지는 앞의 페이지랑 독립적임 별개. 즉 그자체로도 들어갈 수 있다 -->
</head>
<body>
	유저 목록
<% // 스크립틀릿
	// DB 연결 (원래는 여기서 하지않음. )
	MysqlService ms = MysqlService.getInstance();  // ctl 스페이스로 import
	ms.connect();
	
	String selectQuery = "select * from `user`";
	ResultSet res = ms.select(selectQuery);  //resultset import (java.sql)
	// res 루프 다 돌기전까진 disconnect하면안되어서 아래에서 따로 해줌 
%>
	
	<%--
		2) 유저 삭제: ex02_1.jsp(유저목록) -> 삭제버튼 -> DeleteEx02 서블릿(delete DB) -> ex02_1.jsp(유저목록)_여기로응답
	 --%>

	<table border="1">
		<thead>
			<tr>
				<th>번호</th>
				<th>이름</th>
				<th>생년월일</th>
				<th>이메일</th>
				<th>자기소개</th>
				<th>삭제</th>
			</tr>
		</thead>
		<tbody>
		<%
			while(res.next()) {  //가리키는게없을때 끝난다 next로
		%>
			<tr>
				<td><%= res.getInt("id") %></td>
				<td><%= res.getString("name") %></td>
				<td><%= res.getString("yyyymmdd") %></td>
				<td><%= res.getString("email") %></td>
				<td><%= res.getString("introduce") %></td>
				<td><a href="/lesson04/delete_ex02?id=<%= res.getInt("id") %>">삭제</a></td>  <!-- 서블렛주소라서 확장자jsp안쓰고 -->
			</tr>
			
		<%
			}
		%>
		</tbody>
	</table>

<%
	ms.disconnect(); // DB 연결 해제 (잊지말고 꼭 끊어주기)
%>


</body>
</html>