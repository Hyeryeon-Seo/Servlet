<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>책 목록</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>

	<%
	// T:  test08 책  저장된형태 object 이미지넣어서.. 태그로 먼저 만들어두고 책 하나만 보여주는 페이지. 보고싶은 책 정보 하나만.
    //목록으로 만들어놓고 어떻게해서 하나만 보여주게 할 수 있을지 , 파라미터생각해서!
    // 그다음 페이지에서 링크 누르면 책 정보 보여주는 페이지로
    // 7,8번 과제로, 리스트까지만 / 나머지 수업때
    // -- jsp 2? 여기서 파라미터주고 다른 jsp로?
	
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
	%>
	
   <form method="get" action="/jsp/test08_2.jsp">
   
		<div class="container">
			<h2 class="text-center pt-5">책 목록</h2> <!-- pt 위여백 -->
		
			<table class="table text-center">
			<thead>
				<tr>
					<th>id</th>
					<th>표지</th>
					<th>목록</th>
				</tr>
			</thead>
	   		</tbody>
	   		<% for(Map<String, Object> book:list) { %>
	   			
	   			<tr> <!-- 반복할 내용 시작 -->
	   				<td><%= book.get("id") %></td>
	   				<td><img alt="img_<%= book.get("title") %>" width="100" src="<%= book.get("image") %>"></td>
	   				<td class="display-4 text-primary"><a href="/jsp/test08_2.jsp" type="submit" name=<%= book.get("title")%>> <%= book.get("title") %></a></td> 
	   				<!-- a href="/jsp/test08_2.jsp"  a 링크는 있어야..-->
	   				<!-- font-size-large로는 왜 안먹힐까? (style=""도 안됨)/ img 부분 오류로 뜨나 실제 페이지 잘 뜸-->
	   				<!--!! a href="" ? submit? name=%..? 파라미터 name 
	   				name은 파라미터이름 다르게 다 설정해줘야 다르게 연결 -->
	   			</tr>
	   			
	   		<%  } %>
   			
   	</form>	
   		
  
	
	
	
	
		</table>
	</div>

</body>
</html>