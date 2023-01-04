<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<!-- section부분 목록만들때 -->
	<!-- 나는 a태그파라미터 받는거 따로 만들음 ㅠ.ㅠ  null안먹히길래.. else if했을때
		//리스트 복붙하구 (마론달에서)
		
		String category = request.getParameter("category"); 파라미터 전달받고 카테고리연결위해  
		내가한대로
		<% for(Map<String, String> channel:list) {
			String target = channel.get("category"); //헷갈리면 변수 이름 설정해주기
			// t - 카테고리가 일치하면 테이블 tr 추가
			// 카테고리가 없으면 테이블에 tr 추가 //파라미터가 없으면 전체를 보여줘야! 
				if( category == null || target.equals(category)) { // !!!
				// or category 파라미터 ..없으면  모두 보여줌  / category일치하면 
				//그런데 null조건은 문제안일으키려면 앞에 있는 게 좋다. 또는 ||일때 앞조건을 먼저따져서 제외하므로..
		%>
		
		// 그리고 테이블 내용 반복.. <tr><td>~~
		
		
		/ 메뉴nav는 내가 한대로 a 태그 잡아서  ?category=지상파  이런 식으로 파라미터포함 url써주기 각각
		/ 그런데 전체는 파라미터 없는 링크를 써준다. ../test01.jsp 까지만!!!
		
		
	 -->

</body>
</html>