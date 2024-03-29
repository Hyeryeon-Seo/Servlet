<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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

	<!-- 즐찾 추가 페이지_ 
		form 태그 작성, 여기서 즐찾추가 받아서 넘길 것 -->
	
	<div class="container mt-5">
		<h2>즐겨찾기 추가</h2>
		<form method="post" action="/lesson04/insert_quiz02"> <!-- t 여기서 form태그. / insert시 get보다post사용.이미지보낼때도 -->
		<div class="form-group mt-3"> <!-- t 방식. form group 아래 label for..등등 -->
			<label for="name">사이트 명:</label>
			<input type="text" class="form-control col-4" id="name" name="name">
		</div>
		<div class="form-group">
			<label for="url">사이트 주소:</label>
			<input type="text" class="form-control col-12" id="url" name="url">
		</div>
		<div>
			<input type="submit" value="추가" class="btn btn-success">
		</div>
		
		<!-- 내방식 <p class="mt-3">
			<b>사이트명:</b><br>
			<input type="text" name="name" class="">
		</p>
		<p>
			<b>사이트 주소:</b><br>
			<input type="text" name="url">
		</p>
		<p>
			<input type="submit" value="추가" class="btn btn-success">
		</p>
		-->
		
		</form>
	</div>
	

</body>
</html>