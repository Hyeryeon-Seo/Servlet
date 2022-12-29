<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<form method="post" action="/jsp/ex03.jsp">
		<label>닉네임 </label>
		<input type="text" name="nickname">  <!-- 파라미터 이름 부여! -->
		
		<br>   <!-- 제이쿼리에서 했던 것 -->
		<h3>강아지 or 고양이 or 사자</h3>
		<label>강아지 <input type="radio" name="animal" value="dog"></label> <!-- 라디오 버튼 같은 분류 같은 name부여-->
		<label>고양이 <input type="radio" name="animal" value="cat"></label>
		<label>사자 <input type="radio" name="animal" value="lion"></label>
		<!-- name이라는 이름으로 선택된값이 전달  선택된.. value값만 파라미터로 전달-->
		
		<h3>좋아하는 과일을 선택하세요</h3>
		<select name="fruit"> <!-- 여기에 파라미터 이름   아래에선택된각ㅄ을 파라미터로 전달해줌 select는 옵션 값이 그대로 전달-->
			<option value="banana">바나나</option> <!-- 내가 정한값으로 전달받고싶으면 value부여 value가 더 우선 -->
			<option value="peach">복숭아</option>
			<option>딸기</option>
		</select>
		
		<h3>좋아하는 음식을 모두 고르세요</h3> <!-- 여러개 값 선택하는 input - checkbox, 여기서 (name..food파라미터 통해?)선택되면 vlaue값 전달-->
		<label>민트초코 <input type="checkbox" name="food" value="민초"></label>
		<label>하와이안 피자</label> <input type="checkbox" name="food" value="피자"></label>
		<label>번데기<input type="checkbox" name="food" value="번데기"></label>
		
		
		<button type="submit">입력</button>
	</form>



</body>
</html>