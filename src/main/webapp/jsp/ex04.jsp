<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import= "java.util.*" %> <!-- 사실 이러면 안되지만 java.util.* 하면 util에있는거 다 import됨 거의 해결됨 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>반복문 활용</title>
</head>
<body>
<!-- test 7 조건없이보여주는거 먼저해보고... 4점제외마지막에 
향상 for문 이터레이터 등 사용가능-->

	<% // 스크립틀릿 활용
	
		// 과일 이름 리스트
		List<String> fruitList = new ArrayList<>();
		fruitList.add("사과");
		fruitList.add("바나나");
		fruitList.add("딸기");
		fruitList.add("망고");
	
		// 1) 향상 for문  - 리스트 안 ..하나씩 저장할 객체 만들기
		//그러나 그때 그때 response못쌓아?
		/* String result = "";
		for(String fruit:fruitList) {
			result += fruit + " ";
		}
		*/
	
		//2) 문자열 쭉 이어붙이기보다는 위처럼... 아래처럼 out.println이용하면 한번에!
		//그러나 이것도 데이터?많이잡아먹고 결국 얘도 문자열쌓는거와 다를 바 없다...
		//이걸 쌓이게 해준다
		/*for(String fruit:fruitList) {
			out.println("<h2>" + fruit + "</h2>");
		}*/
	%>
	
	<%  //중간에 끊고 해주느게 좋다
		for(String fruit:fruitList) { %>
			
			<h2><%= fruit %></h2>
	
	<%
		}
	%>
	
	
	
	<table border="1">
	<% for(String fruit:fruitList) {  %>
		<tr>
			<td><%= fruit %></td>
		</tr>
	<% } %>
	</table>
	



</body>
</html>