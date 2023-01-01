<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import= "java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<!-- <style>
	table {
		width: 100%;
		border-collapse: collapse;
	}
	th, td {
		
	}

</style>  -->
</head>
<body>
	
	<%
		List<String> goodsList = Arrays.asList(new String[]{ 
			    "저지방 우유", "요플레 4개", "딸기 1팩", "삼겹살 300g", "생수 6개", "주방 세제"
			});
	%>
	
<!-- % 
		int num = 0;
		for(String good:goodsList) { 
			for(int i = 1; i<goodsList.size(); i++) {
				num = i;
				
			}
	%>
		
	} -->	
	
	<div class="container">
		<h1 class="text-center">장 목록</h2>
		
		<table border="1" class="table text-center" width="400">
			<thead>
				<tr>
					<th>번호</th>
					<th>품목</th>
				</tr>
			</thead>
			<tbody>   
			<!--여기 아래부터 반복되는 거 넣을 것 -->
			<!-- T 
			향상for문 말고 그냥 for문 써보기
			< 열고 for(int i = 0; i < goodsList.size(); i++) {
				String goods = goodsList.get(i);  //리스트 get메소드!
			 닫고 
			 그 뒤에 <tr> <td>에서 숫자는 < 열고 = i +1 >
			
			여기이해가 잘 ㅠ 아래--
			>
		<% 	int num = 0;
			for(String good:goodsList) {    //안닫힘
				num += 1;
				//for(int i = 1; i<goodsList.size(); i++) {
					//num = i;
		%>
				<tr>  <!-- 여기서부터   저기 아래 } 까지 반복됨 -->
					<td><%= num %></td>
					<td><%= good %></td>
				</tr>
		<%	} %>  <!-- 여기따로 -->
			</tbody>
		</table>
		
	</div>
	
</body>
</html>