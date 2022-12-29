<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html> <!-- 여기서 자바코드안쓰므로 jsp일 이유 없으나 앞으로 그냥 html말고 jsp를쓴다 -->
<html>
<head>
<meta charset="UTF-8">
<title>날짜 시간 링크</title>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>

<body>
	<!-- form태그 쓰는게 아님 (파라미터 전달이 아니므로?), 링크 (a태그 연결) 와 전혀 다르다 -->
	<!-- 근데 parameter통해서 구분해야? / 한 페이지로 연결해보기-->
	<!-- 앞으로 바깥쪽은 container하고 시작 (적당한 여백? 부트스트랩) -->
	<div class="container">
	<h2>날짜, 시간 링크</h2> <br>
	<a class="btn btn-primary" type="button" href="/jsp/test02.jsp?what=time" name="nowTime">현재 시간 확인</a>
	<a class="btn btn-success" type="button" href="/jsp/test02.jsp?what=date" name="nowDate">현재 날짜 확인</a>
	</div>
	<!-- href="/jsp/test02.jsp?what=time" 이렇게 파라미터이용해서 연결하기!
	type="button"필요없는듯? -->
	<!-- a태그에 그냥 그대로 class= "btn" 주면 버튼됨 (링크버튼)  -->
</body>
</html>