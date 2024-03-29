<%@page import="java.sql.ResultSet"%>
<%@page import="com.seonuit.servlet.common.MysqlService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>즐겨찾기 목록</title>
	<!-- 부트스트랩 _ B쌤은 TITLE같은줄에쓰심-->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>

<% // 스크립틀릿이용, db연결 -전체 목록 뜨게 하기
	MysqlService ms = MysqlService.getInstance();
	ms.connect();
	
	String selectQuery = "select `name`, `url`, `id`"   // 여기서 id칼럼도 가져와야 아래에서 삭제할때 적용가능, T 전체 * 가져오심
			+ " from `favorite`"
			+ " order by `id` desc;";  // id기준 내림차순 (최신내용 맨 위)
	ResultSet res = ms.select(selectQuery); // ctl space 로 import / 이 res를 루프돌리면서 아래목록에서 출력
%>
	
	<!--목록 테이블 만들기 , 출력-->
	<div class="container">
		<h1 class="text-center mt-3">즐겨찾기 목록</h1>
		<table class="table text-center mt-5">
			<thead>
				<tr>
					<th>사이트</th>
					<th>사이트 주소</th>
					<th>삭제</th>
				</tr>
			</thead>
			<tbody>
			<%
				while (res.next() ) {
			%>
				<tr>
					<td><%= res.getString("name") %></td>
					<td><a href="<%= res.getString("url") %>" target="_blank"><%= res.getString("url") %></a></td>
					<td><a href="/lesson04/delete_quiz02?id=<%= res.getInt("id") %>" class="btn btn-danger">삭제</a></td>
					<!-- 삭제 앵커태그a는 get방식으로 보내겠단 뜻 / a태그이지만 class="btn"부여해서 버튼모양부여가능 -->
					<!--위 url 앵커태그 target="_blank" 해주면 새 탭에서 열기 -->
				</tr>
			<%
				}
			%>
			</tbody>
		</table>
		<p class="mt-5">
			<button type="button" class="btn btn-warning"><a href="/lesson04/quiz02_1.jsp">추가</a></button>
		</p>

	</div>

<%
	ms.disconnect();
%>

</body>
</html>