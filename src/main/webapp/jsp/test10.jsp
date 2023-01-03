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
		Calendar today = Calendar.getInstance();
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM");
		
		int dow = today.get(Calendar.DAY_OF_WEEK); // 1: 일요일,.. 7: 토요일 /?
		String[] dayofWeek = {"", "일", "월", "화", "수", "목", "금", "토"}; //??
		
	%>


	<div class="container">
		<table>
			<thead>
				<tr>
					<th>
				</tr>
			</thead>
		
		
		
		</table>
	
	
	</div>
	
</body>
</html>