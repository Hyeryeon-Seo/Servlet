<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>체격 조건 입력</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>
	<!-- input전달받아 get method로 submit
	test02는 a태그 링크 연결이지만, 이건 parameter전달받아 submit해야하므로 get method, submit버튼 -->
	<form method="get" action="/jsp/test03.jsp"> 
	<!-- post는 너무 큰 데이터, 보안이 필요한 데이터.  그외에는 get(기본. 확장성이 더 좋다) -->
		
		<h2 class= "font-weight-bold"> 체격 조건 입력</h2><br>
		<!--아래: text input후 저절로 label이 엔터로 줄바꿈 - <div>로 묶어도 안된다- white-space: nowrap도ㅠㅠ-->
		<input type="text" name="height" class="form-control" style="width:200px"><label>&nbsp;cm</label> <!-- &nbsp; 띄어쓰기 -->
		<input type="text" name="weight" class="form-control" style="width:200px"><label>&nbsp;kg</label>&nbsp; 
		<button type="submit" class="btn btn-info" value="계산">계산</button>
		<!-- t는 input type="submit" value="계산"만 -->
	</form>
</body>
</html>