<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

	<link rel="stylesheet" href="/jspTemplate/test01/style.css" type="text/css">
</head>
<body>

	<div class="container">
		<header class="d-flex justify-content-center align-items-center">
			<h2 class="text-danger">SK broadband IPTV</h2>
		</header>
		<nav class="main-menu bg-danger">
			<ul class="nav nav-fill">
				<li class="nav-item"><a href="/jspTemplate/test01/table.jsp?category=전체" class="nav-link text-white">전체</a></li>
				<li class="nav-item"><a href="/jspTemplate/test01/table.jsp?category=지상파" class="nav-link text-white">지상파</a></li>
				<li class="nav-item"><a href="/jspTemplate/test01/table.jsp?category=드라마" class="nav-link text-white">드라마</a></li>
				<li class="nav-item"><a href="/jspTemplate/test01/table.jsp?category=예능" class="nav-link text-white">예능</a></li>
				<li class="nav-item"><a href="/jspTemplate/test01/table.jsp?category=영화" class="nav-link text-white">영화</a></li>
				<li class="nav-item"><a href="/jspTemplate/test01/table.jsp?category=스포츠" class="nav-link text-white">스포츠</a></li>
			</ul>
		</nav>
		<section class="contents">
		<jsp:include page="table.jsp" /> <!-- 동적방식 -->
		<!-- 정적방식 < % @ include file="table.jsp" % > -->
		<!--<jsp:include page="table.jsp" /> 안됐다가 서버 다시껐다키니 됨!	-->
		</section>
		<footer class="text-center mt-5">Copyright 2023. marondal All Rights Reserved</footer>
	</div>
	

</body>
</html>