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
    //목록으로 만들어놓고 (먼저 테이블구성하기) 어떻게해서 하나만 보여주게 할 수 있을지 , 파라미터생각해서!
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
   
		<div class="container">
			<h2 class="text-center pt-5">책 목록</h2> <!-- pt 위여백 -->
		
			<table class="table text-center">
				<thead> <!-- thead에 항목 -->
					<tr>
						<th>id</th>
						<th>표지</th>
						<th>목록</th>
					</tr>
				</thead>
		   		<tbody>
		   		<% for(Map<String, Object> book:list) { %>
		   			
		   			<tr> <!-- 반복할 내용 시작 -->
		   				<td><%= book.get("id") %></td>
		   				<td><img alt="img_<%= book.get("title") %>" width="130" src="<%= book.get("image") %>"></td>
		   				<!-- ㅇ기서 꼭 alt 이름 안달아줘도되는듯 (T도) -->
		   				
		   				<td class="display-4 text-primary"><a href="/jsp/test08_detail.jsp?id=<%= book.get("id") %>"> <%= book.get("title") %> </a></td>
		   				<!--!! id를 파라미터 주는거를 링크 주소를 통해서! (form태그 submit그런거 아니고) 링크주소 규칙 이용, 주소를 다르게 처리해서 연결!! 
		   				(다른submit type 태그(input,button등) 처럼 name, (혹value)주는게 아님 a태그는-->
		   				
		   				<!-- 내가한것
		   				<td><input type="submit" name="bookTitle" value="<.. book.get("title") %>" 
		   				class="display-4 text-primary"  style="border:none; background: transparent;"></td>
		   				<!--input태그 위처럼하면, value값이 제목으로 뜬다 (파라미터 name으로도 전달됨) 
		   				 name은 파라미터이름 다르게 다 설정해줘야 다르게 연결 >>NO -그게 아니고!, 
		   				 > !! selectbox처럼,  value로 책이름 다르게 설정하기!(name은 같이묶어줌) 
		   				   
		   				그런데 문제: '나미야 잡화점...'의 경우 title이 잘려서 나옴, 공백때문에? 공백도 문자열에 들어갈텐데
		   				생각해보니 버튼태그가 작아서인듯..? width="500" col-도 먹히지만 최대치도안되는듯  ..해도 안됨
		   				>> '페이지소스보기 ' 늘 확인하기!  해보니 " "가없어서
		   				<!-- font-size-large로는 왜 안먹힐까? (style=""도 안됨)/ img 부분 오류로 뜨나 실제 페이지 잘 뜸
		   				/ 그리고 form-control쓰면 display글자크기도 안먹음 ㅠㅠ 어쩌피 col-sm-12도 안됨-->
						
		   			
		   				<!-- !! T 여기서는 form이나 input은 맞지않다. (파라미터전달이 아닌가?)
		   				그냥링크로 넘기면 되는데, 파라미터 입력해서 넘길 필요가 없기때문  나는 form해서 하긴했지만 ㅠㅠ
		   				/ <!-- a href="/jsp/test08_2.jsp"  a 링크는 있어야..-->
		   				  <!--!! a href="" ? submit필요? name=%..? 파라미터전달, a태그 사용가능? 
		   				  >> input 태그를 style- 테두리,배경색 없애서 submit하기 (따로서칭)
		   				
		   				-->
		   			</tr>
		   			
		   		<%  } %>
	   			</tbody>
			</table>
		</div>
	

</body>
</html>