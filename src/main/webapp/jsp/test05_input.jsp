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

	<form method="post" action="/jsp/test05.jsp">
	
	<!-- 가장 바깥쪽은 container (부트스트랩의) 써주는게 좋다 -->
	<div class="container">
		<h2>길이 변환</h2>	
		<input type="text" class="form-control" name="length">&nbsp; <label>cm</label> <br>
		<label>인치 <input type="checkbox" name="measure" value="inch"></label> <!-- name="unit"쓰거나 / 각각 구분하는 값 value (test05파라미터밸류값과 일치되게) -->
		<label>야드 <input type="checkbox" name="measure" value="yard"></label>
		<label>피트 <input type="checkbox" name="measure" value="feet"></label>
		<label>미터 <input type="checkbox" name="measure" value="meter"></label> <br>
		<button type="submit" class="btn btn-success">변환</button>
	</div>
	
	</form>



</body>
</html>