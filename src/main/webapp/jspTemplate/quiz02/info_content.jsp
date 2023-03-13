<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

		<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

		<link rel="stylesheet" href="/jspTemplate/test02/style.css" type="text/css">
	</head>
	<body>
		
		
		<div>
		
		</div>
	
		<%
			if (target))) { // target이 존재할때만 
				
		
		%>
		
		<h4 class="mt-3">곡 정보</h4>
		<div class="border border-success d-flex mt-3 p-3">
			<div>
				<img src="<%= target.get("thumbnail") %>" alt="앨범표지" >			
			</div>
			<div class="ml-3">
				<!-- 곡 정보도'앨범' '재생시간' 등은 같은 네모 안에, 오른쪽 네모는 '삐삐' 등 내용이 들어가도록 -->
				<div class="display-4"></div>
				<div class="font-weight-bold ">
				<div class="music-info-text d-flex text-secondary">
					<div class="mr-3">
						<div>앨범</div>
						<div>재생시간</div>
						<div>작곡가</div>
						<div>작사가</div>
					</div>
					<div>
						<div><%= target.get("album") %></div>
						<div><%= (int)target.get("time") / 60 %>:<%= (int)target.get("time") % 60 %></div> 
						<!-- 재생시간- 초 단위 > 그런데 분,초 단위로 같이 나타내야 > target이라는 맵에서. 꺼낸다 무조건 캐스팅해줘야 int원래숫자로 변환해주고
						60나누기,  그리고 나머지% 연산자
						+ 참고로 jsp에서 맞는데 그냥 빨간색에러처럼 뜰때있는데 상관없음. 결과만 나오는지 보면됨-->
						<div><%= target.get("composer") %></div>
						<div><%= target.get("lyricist") %></div>
					</div>
				</div>
			</div>
		</div>
		
		<%
		
		// 1. id만 넘어오는 경우
		if (request.getParameter("id") != null) {
			for (Map)
			
		}
		
		
		// 2. searach로 넘어온 경우
		if (request.getParameter("search") != null) {
			String search = request.getParameter("search");
			for(Map<String, Object> item)
				
		
				
		}
		
		// 검색어가 없는 경우 예외처리, target이 없는 경우, 
		
		// 가사 정보 없음 시  따로 else } 두고  검색정보가 없습니다 
		%>
	
		<%
			}
		%>
	
	
	</body>
</html>