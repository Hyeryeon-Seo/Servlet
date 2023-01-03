<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <!-- bootstrap CDN link -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	<!-- 내 스타일시트를 마지막에 깔아줘야 먼저 적용 / (서버랑상관없음. 일반적 사용자 접근가능하게 해야) 브라우저가 접근가능한 경로써줘야 (같은폴더상관없이)
	/ 주소쓸때 /시작 까먹지 말기-->
	<link rel="stylesheet" href="/jspTemplate/ex02/style.css" type="text/css">
	<!-- 스타일시트는 적용느릴 수 있어서 여러번 새로고침해야할수도, 서버껐다키거나 -->
</head>
<body>
	<div class="container">
		<header class="d-flex justify-content-center align-items-center"> <!-- 나머지레이아웃다 잡았으면 bg-..색지워주고 -->
			<h1>Layout</h1>
		</header>
		<nav class="main-menu">
			<ul class="nav">
				<li class="nav-item"><a href="#" class="nav-link">메뉴1</a></li>
				<li class="nav-item"><a href="#" class="nav-link">메뉴2</a></li>
				<li class="nav-item"><a href="#" class="nav-link">메뉴3</a></li>
				<li class="nav-item"><a href="#" class="nav-link">메뉴4</a></li>
				<li class="nav-item"><a href="#" class="nav-link">메뉴5</a></li>
			</ul>
		</nav>
		<section class="contents">
			<img alt="크리스마스" width="700" height="500" src="https://cdn.pixabay.com/photo/2021/12/28/21/23/decoration-6900215_960_720.jpg">
			<div> 새해 복 많이 받으세요! </div>
		</section>
		<footer class="mt-4">Copyright © marondal 2023</footer>
	</div>



</body>
</html>