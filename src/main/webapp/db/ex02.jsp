<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.seonuit.servlet.common.MysqlService"%>
<%@ page import="java.sql.ResultSet"%>
<!-- jsp  import위 써주기 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>new user 테이블</title>
</head>
<body>
	<%
		MysqlService mysqlService = MysqlService.getInstance();
		// 여기서 import안되니 mysqlServcie클래스에서 복붙해와야(common에있는)
		mysqlService.connect();
		
		String query = "SELECT * FROM `user`;";
		
		ResultSet resultSet = mysqlService.select(query);
	
	
	%>




	<h2>사용자 정보</h2>
	
	<table border="1">
		<thead>
			<tr>
				<th>이름</th>
				<th>생년월일</th>
				<th>이메일</th>
				<th></th>
			</tr>
		</thead>
		<tbody>
			<% while(resultSet.next()) { %>
			<tr>
				<td><%= resultSet.getString("name") %></td>
				<td><%= resultSet.getString("yyyymmdd") %></td>
				<td><%= resultSet.getString("email") %></td>
				<td><a href="/db/ex02_delete?id=<%= resultSet.getInt("id") %>">삭제</a></td>
			</tr>
			<% } %>
		</tbody>
	</table>
	
	<a href="/db/ex02_input.jsp">추가하기</a>
	
	
	
	
	
	
</body>
</html>