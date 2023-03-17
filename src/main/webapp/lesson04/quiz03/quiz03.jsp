<%@page import="java.sql.ResultSet"%>
<%@page import="com.seonuit.servlet.common.MysqlService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HONG당무 마켓</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

<link rel="stylesheet" href="/lesson04/quiz03/style.css" type="text/css">
</head>
<body>

<%
	MysqlService ms = MysqlService.getInstance(); // ctl space
	ms.connect();
	
	// 여기서 join해야하나..?
	String selectQuery = "select * from `used_goods`";
	ResultSet res = ms.select(selectQuery);
%>

	<div class="container bg-secondary">
		<header class="text-center mt-4 bg-success">
			<h1>HONG당무 마켓</h1>
		</header>
		<nav class="main-menu bg-warning">
			<ul class="nav nav-fill mt-3S">
				<li class="nav-item"><a href="" class="nav-link">리스트</a></li>
				<li class="nav-item"><a href="" class="nav-link">물건 올리기</a></li>
				<li class="nav-item"><a href="" class="nav-link">마이 페이지</a></li>
			</ul>
		</nav>
		<section class="main-contents bg-info">
			<%
				while (res.next() ) {
			%>
			<div class="content d-flex">
			
					<img src="<%= res.getString("picture") %>" width="300">
					<div class="title"></div>
					<div class="price"></div>
					<div class="nickname"></div>
			</div>	
			<%
				}
			%>
		</section>
		<footer class="bg-dark">
			<div class="mt-5 text-center">
				Copyright 2023. HONG All Rights Reserved.
			</div>
		</footer>
	</div>


<%
	ms.disconnect();
%>
</body>
</html>