<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>검색</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>
		
		<div class="container">  
			<h1 class="pt-5">메뉴 검색</h1><!-- 위 여백 -->
		
			<form method="get" action="/jsp/test07.jsp">
				<div class="d-flex"> <!-- 가로배치 -->
					<input type="text" class="form-control col-3" name="menu"> <!-- col- 로 input 가로길이 설정-->
					<input type="checkbox" name="point4check" value="point4check" class="ml-3"><label class="m-1">4점 이하 제외</label> 
					<!-- &nbsp; 띄어쓰기나 class="ml-3" 왼쪽여백 등 / 체크박스 class="form-control col-1 할필요없음 / checked="checked" X /
					value="point4check"로 해봄 -->
					<!--위에T - <label><input type="checkbox" name="pointFilter" value="true" (체크했으면 true로)>4점 이하 제외</label>  -->
				</div>
				<br>
				<button type="submit" class="btn btn-success">검색</button>
			</form>
		
		</div>
		
</body>
</html>