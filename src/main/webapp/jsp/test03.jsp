<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BMI 측정 결과</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>

	<%
	String strHeight = request.getParameter("height");
	String strWeight = request.getParameter("weight");
	
	double height = Double.parseDouble(strHeight); //int든
	double weight = Double.parseDouble(strWeight);
	
	double BMI = weight / ((height / 100.0) * (height / 100.0)); // 100.0넣었으므로 자동으로 double계산 가능 (int넣어도)
	
	String result = null;  //초기화   =""도가능?
	if(BMI <= 20) {
		result = "저체중";  //T: 어쩌피 그외조건걸러서... bmi<=25만함
	} else if((BMI >= 21) && (BMI <= 25)) { //&&이 더 맞고 효율적? 조건 하나라도 아니면 나머지 체크 x
		result = "정상";
	} else if((BMI >= 26) && (BMI <= 30)) {
		result = "과체중";
	} else { //else if(BMI >= 31) 해주면 작동안됨 else로 끝나야  //T: else로 끝냄
		result = "비만";
	}
	%>
	<div class="container"><!-- 제일바깥쪽은 container -->
	
		<h2 class="font-weight-bold">BMI 측정 결과</h2>
		<div class="display-4">당신은 <span class="text-info"><%= result %></span> 입니다.</div>  <!-- 글씨크기 부트스트랩display..span은? -->
		<div class="small">BMI 수치: <%= BMI %></div>
		
	</div>

</body>
</html>