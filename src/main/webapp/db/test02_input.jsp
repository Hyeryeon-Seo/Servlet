<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!--  즐겨찾기 추가 페이지 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>즐겨찾기 추가</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>
	
	<div class="container">
		<h2>즐겨찾기 추가</h2>
		<form method="post" action="/db/test02_insert"> <!-- 연결 주의, 헷갈리지않게 -->
		<!-- 원래 get했는데 (나) > post form메소드로!  -->
			<div class="mt-4">
				<label class="small">사이트명 : </label> <!-- 여긴 br안넣어도 알아서 띄워짐 -->
				<input type="text" name="name" class="form-control col-3"><br> <!-- 좀 더 띄우는게 예뻐서 -->
				<label class="small">사이트 주소 : </label>
				<input type="text" name="url" class="form-control col-6"><br><br>
				<button type="submit" class="btn btn-success">추가</button>
			</div>
		</form>
	</div>
	
	
	<!-- <a href="/db/ex02.jsp">목록</a> -->



</body>
</html>