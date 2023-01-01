<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import= "java.util.*" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메뉴 검색</title>
<!-- 부트스트랩 넣었는지 확인! 안넣고 안먹힌다고 하지말고^^; 
부트스트랩있을시, table class만 해줘도 (table border설정없이) 가로선으로 테이블 모양 잡힘-->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>
	
	<!-- 에러나면 의심하되 jsp 정확히 이클립스가 에러 잘잡아주지못하므로 실행해서 확인해보기 -->

		<% 
	//리스트 안에 맵 하나하나  가게 정보 하나씩 구성
	//리스트 제너릭 타입 활용하기 -리스트 안에 Map<String, Object>
	
		List<Map<String, Object>> list = new ArrayList<>();
    Map<String, Object> map = new HashMap<String, Object>() {{ put("name", "버거킹"); put("menu", "햄버거"); put("point", 4.3); } };
    list.add(map);
    map = new HashMap<String, Object>() {{ put("name", "BBQ"); put("menu", "치킨"); put("point", 3.8); } };
    list.add(map);
    map = new HashMap<String, Object>() {{ put("name", "교촌치킨"); put("menu", "치킨"); put("point", 4.1); } };
    list.add(map);
    map = new HashMap<String, Object>() {{ put("name", "도미노피자"); put("menu", "피자"); put("point", 4.5); } };
    list.add(map);
    map = new HashMap<String, Object>() {{ put("name", "맥도날드"); put("menu", "햄버거"); put("point", 3.8); } };
    list.add(map);
    map = new HashMap<String, Object>() {{ put("name", "BHC"); put("menu", "치킨"); put("point", 4.2); } };
    list.add(map);
    map = new HashMap<String, Object>() {{ put("name", "반올림피자"); put("menu", "피자"); put("point", 4.3); } };
    list.add(map);
    
    String searchedMenu = request.getParameter("menu");
	String[] point4check = request.getParameterValues("point4check");
	// 제이쿼리의 .checked ? 혼동했는데 , 여기선 안됨ㅠㅠ
	// values로 받아 배열에넣어주고, 체크가되었다면 이 파라미터배열이 1개 그게 아니면 (0개)
	
    // map안에 <String, Object> upcasting? string key ... 리턴된게 오브젝트
   		%>
   		
   		<div class="container"> <!-- 우선 container 만들고 시작  -->
			<h1 class="text-center pt-4">검색 결과</h1>
   			
   			<table class="table text-center"> <!-- T table border안하심 -->
		   		<thead>
					<tr>
						<th>메뉴</th>
						<th>상호</th>
						<th>별점</th>
					</tr>
					<!--<hr> hr태그 테이블사이에넣었더니 안되고 테이블밖에 자동으로 배치됨 -->
				</thead>
				
				<tbody>
   				<% 	for(Map<String, Object> store:list) { // 이름 등 얻어오기
				   //	String restaurant = store.get("name").toString(); //오브젝트얻어와서 string으로? : no 출력은 문자열안바꿔줘도됨
				   //	String menuName = store.get("menu").toString(); 
	  		   	  //	String strPoint = store.get("point").toString();
			  	  // 근데 나 처럼 할 필요없이, (뜨긴하나) 아래 테이블<td>안에 <%= store.get("menu")메소드 그대로 써주면 간단
			    	//toString할 필요없는듯 그냥 뜨게 하면 됨
			    	//return되는 타입이 object이므로 upcasting으로 저장된 걸 객체?로 변환하는게 downcasting
					   	
					  //double point = Double.parseDouble(strPoint); 이거 말고 아래처럼 그냥 double로 바꾸기 (문자열 x)
					  //double point = (Double)restaurantInfo.get("point");
					   		
					    if(searchedMenu.equals(store.get("menu"))) { // 답안 - searchedMenu와 store menu일치하는 경우
					   	    	//맞을때만 반복시킴. 조건넣기!  // Map의 get(key) 매소드 기억!!
					   	    if(point4check != null) { //.checked == true ? / 맨앞 !은 안되는?
					    		double point = (double)store.get("point"); // 출력은 map의 get메소드로도 그대로 뜨지만, 이건 double 실수로바꿔야
					   	    		if(point > 4.0) {
    			%>
									  <tr>  <!-- 여기부터 반복 내용, <html>의 테이블 구성안에 넣어주기 -->
										 <td><%= store.get("menu")%></td>  <!-- menu -->
										 <td><%= store.get("name") %></td> <!--get메소드로 각 키("menu")에 따른 object? 문자열로 안바꿔도 그대로 출력가능-->
										 <td><%= store.get("point")%></td>
									  </tr>
				<% 	 				} %>
				<% 			 } else { %>
									 <tr>  <!-- 여기부터 반복 -->
										<td><%= store.get("menu")%></td>  <!-- menu -->
										<td><%= store.get("name") %></td> <!--get메소드로 각 키("menu")에 따른 object? 문자열로 안바꿔도 그대로 출력가능-->
										<td><%= store.get("point")%></td>
									</tr>
				<%			 } %>
				<% 		} %> <!--  //if문도 닫고 -->
				<% 	} %> <!-- for문도 닫기  반복 끝 -->
						
					<!-- 괄호닫기 {} 헷갈리니 주의! 아예 다 써놓고 마지막에 %<> 해주기 -->
					</tbody>
				
			</table>
	
		</div>

	
</body>
</html>