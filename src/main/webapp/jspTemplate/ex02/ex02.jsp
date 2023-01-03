<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예제 페이지</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	
	<link rel="stylesheet" href="/jspTemplate/ex02/style.css" type="text/css">
</head>
<body>
	<div class="container">
		<!-- 동적방식!! / 내부경로 잡아주면 됨 / 만든 거 재사용시 쓸 수 있다 / sample jsp만들어두고 활용가능--> 
		<jsp:include page="header.jsp" />	
		<jsp:include page="menu.jsp" />	
		<section class="contents">
			<h1>컨텐츠</h1>
			<img alt="크리스마스" width="700" height="500" src="https://cdn.pixabay.com/photo/2021/12/28/21/23/decoration-6900215_960_720.jpg">
			<div> 새해 복 많이 받으세요! </div>
		</section>
		<jsp:include page="footer.jsp" />	
		<!-- %= dateString % > 에러난다 --> 
	</div>
</body>
</html>