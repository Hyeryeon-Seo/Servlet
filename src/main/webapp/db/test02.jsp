<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.seonuit.servlet.common.MysqlService"%>
<%@ page import="java.sql.ResultSet"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>즐겨찾기 목록</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>
	<!-- test02안의 3,4,5 출력 입력 삭제 모두 독립된 페이지 -->
	<%
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connect();
		
		// 3. 목록 출력하기
		String query = "SELECT `name`, `url`\r\n"
				+ "FROM `bookmark`\r\n"
				+ "ORDER BY `id` DESC;";
				// \r \n등 없어도되나
		
		ResultSet resultSet = mysqlService.select(query);
	
	%>

	<div class="container mt-3">
		<h2 class="text-center">즐겨찾기</h2>
	
		<table class="table text-center mt-5">
			<thead>
				<tr>
					<th>사이트</th>
					<th>사이트 주소</th>
					<th></th>
				</tr>
			</thead>
			<tbody>
				<% while(resultSet.next()) { %>
				<tr>
					<td><%= resultSet.getString("name") %> </td>
					<td><a href="<%= resultSet.getString("url") %>"> <%= resultSet.getString("url") %> </a></td>
					<td><a href="/db/test02_delete?name=<%= resultSet.getString("name") %>">삭제</a></td>
				</tr>
				<% } %>
			</tbody>
		</table>
		
		<a href="/db/test02_input.jsp">추가하기</a>
		
	</div>
	

</body>
</html>