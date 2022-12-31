<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import= "java.util.*" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
	String point4check = request.getParameter("point4check");
	
    // map안에 <String, Object> upcasting? string key ... 리턴된게 오브젝트
   // String restaurant= Map.get("name").toString();
    // test08 책  저장된형태 object 이미지넣어서 ,, 태그로 먼저 만들어두고 
    // 책 하나만 보여주는 페이지. 보고싶은 책 정보 하나만.
    //목록으로 만들어놓고 어떻게해서 하나만 보여주게 할 수 있을지 , 파라미터생각해서!
    // 그다음 페이지에서 링크 누르면 책 정보 보여주는 페이지로
    // 7,8번 과제로  , 근데 리스트까지만 마늘고 쉬기 나머지 수업때
   		%>
   		
   		<div class="container"> <!-- 우선 container 만들고 시작  -->
			<h1 class="text-center">검색 결과</h1>
   			
   			<table border="1" class="table text-center"> <!-- T table border안하심 -->
		   		<thead>
					<tr>
						<th>메뉴</th>
						<th>상호</th>
						<th>별점</th>
					</tr>
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
					    			double point = (double)store.get("point"); // 출력은 map의 get메소드로도 그대로 뜨지만, 이건 double 실수로바꿔야
					   	    	if(point4check.checked) {
					   	    		double poin		
					   	    	}
	    		
	   	
    				%>
    
					<tr>  <!-- 여기부터 반복 -->
						<td><%= store.get("menu")%></td>  <!-- menu -->
						<td><%= store.get("name") %></td> <!--get메소드로 각 키("menu")에 따른 object? 문자열로 안바꿔도 그대로 출력가능-->
						<td><%= store.get("point")%></td>
					</tr>
					<%  } //if문도 닫고//여기서 닫힌다 %>
					<%  } //for문도 닫기  반복 끝%>
						
					</tbody>
				
				
			</table>
	
		</div>

	
</body>
</html>