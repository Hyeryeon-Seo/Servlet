<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>

	<div class="container">
	<h2>사칙 연산</h2>
	
	<form method="post" action="/jsp/test04.jsp">
		<div class="d-flex"> <!-- 가로배치! -->
			<input type="text" name="number1" class="form-control col-2">&nbsp;
			<select class="form-control col-1" name="calc">
				<option>+</option>  <!-- 근데 그냥 그대로 + - 기호로 받아도 됨 파라미터 그게편함 그대로 뜨게 하려면.. -->
				<option>ㅡ</option>
				<option>X</option>
				<option>/</option>
			</select>&nbsp;
			<input type="text" name="number2" class="form-control col-2">&nbsp;
			<button type="submit" class="btn btn-success">계산</button>
		</div>
	</form>
	
	</div>




</body>
</html>