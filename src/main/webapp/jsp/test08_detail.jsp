<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>책 정보</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>
	
	<% 
	List<Map<String, Object>> list = new ArrayList<>();
    Map<String, Object> map = new HashMap<String, Object>() {
        { 
            put("id", 1000);
            put("title", "아몬드"); 
            put("author", "손원평"); 
            put("publisher", "창비");
            put("image", "http://image.kyobobook.co.kr/images/book/xlarge/267/x9788936434267.jpg");
        } 
    };
    list.add(map);

    map = new HashMap<String, Object>() {
        { 
            put("id", 1001);
            put("title", "사피엔스"); 
            put("author", "유발 하라리"); 
            put("publisher", "김영사");
            put("image", "http://image.kyobobook.co.kr/images/book/xlarge/464/x9788934972464.jpg");
        } 
    };
    list.add(map);

    map = new HashMap<String, Object>() {
        { 
            put("id", 1002);
            put("title", "코스모스"); 
            put("author", "칼 세이건"); 
            put("publisher", "사이언스북");
            put("image", "http://image.kyobobook.co.kr/images/book/xlarge/892/x9788983711892.jpg");
        } 
    };
    list.add(map);

    map = new HashMap<String, Object>() {
        { 
            put("id", 1003);
            put("title", "나미야 잡화점의 기적"); 
            put("author", "히가시노 게이고"); 
            put("publisher", "현대문학");
            put("image", "http://image.kyobobook.co.kr/images/book/xlarge/194/x9788972756194.jpg");
        } 
    };
    list.add(map);
    
    	Integer id = Integer.parseInt(request.getParameter("id"));
    	//따로 form, submit .. 전달할 name(이나value)없어도됨 (outcasting필요없단뜻?) 
    	// 그냥 a링크로 연결되어서 알아서..
    	//int는?.  Integer도 됨
    			
    			
    	//NO- String[] titleArray = request.getParameterValues("bookTitle");
    	// --!! parameter, 책 제목으로 어떻게 전달받는지? : input 태그쓰고 submit, value값에서 제목 다르게
    	// 파라미터 받을때 주의, bookTitle 파라미터 이름에 value값 전달?
    	// 파라미터이름에 바로 <..book.get("title") : X
    	// T?  - 파라미터는 받음! 그런데 a태그?.. (form도 필요없다) 
    		//일단 모든 책 정보 다 뜨게 한꺼번에. 만들기 - 그 뒤 특정조건일때만 나오게 하기
    %>

    <div class="container m-5">
    	
    	<% for(Map<String, Object> book:list) { 
    			
    		if(book.get("id").equals(id)){ //굳이 아웃캐스팅안해도됨 (?)
    			// 책 정보 꺼내서, 그게 변수파라미터와 같을 때 한권만 뜨게 한다
    			// 그런데 실제론 제목 같을 수 있어 id로 가져오는게 좋다
    	/*	for(int i = 0; i<titleArray.length; i++) {
			  if(titleArray[i].equals(book.get("title"))) {  이거 no ㅠㅠ */
		%>	
					<div class="d-flex">
						<div><img src="<%= book.get("image") %>"></div>
						<div class="m-5"> <!-- T: ml-4 -->
							<div class="display-1 font-weight-bold"><%= book.get("title") %></div>
							<div class="pt-2 display-2 text-info"><%= book.get("author") %></div>
							<div class="pt-2 display-4 text-secondary"><%= book.get("publisher") %></div>
						</div>
					</div>
					
					<!-- 주의: class 같은 거줄 때.. src=" "  따옴표사이에 <..%= 넣어야 -->
		<% 		} 
		  	} %>
	
	
	

		
		
			
	
	
	
	
	</div>
	
	
</body>
</html>