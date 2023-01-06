<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!-- 이건 test01과 달리, a태그연결만 한게 아니라, 동적방식 import도 해서 <html>등 다 없애줘야 -->

<%
	List<Map<String, String>> list = new ArrayList<>();
	Map<String, String> map = new HashMap<String, String>() {{ put("ch", "5"); put("name", "SBS"); put("category", "지상파"); } };
	list.add(map);
	map = new HashMap<String, String>() {{ put("ch", "7"); put("name", "KBS2"); put("category", "지상파"); } };
	list.add(map);
	map = new HashMap<String, String>() {{ put("ch", "9"); put("name", "KBS1"); put("category", "지상파"); } };
	list.add(map);
	map = new HashMap<String, String>() {{ put("ch", "11"); put("name", "MBC"); put("category", "지상파"); } };
	list.add(map);
	
	map = new HashMap<String, String>() {{ put("ch", "54"); put("name", "OCN"); put("category", "영화"); } };
	list.add(map);
	map = new HashMap<String, String>() {{ put("ch", "56"); put("name", "Screen"); put("category", "영화"); } };
	list.add(map);
	map = new HashMap<String, String>() {{ put("ch", "57"); put("name", "Mplex"); put("category", "영화"); } };
	list.add(map);
	
	map = new HashMap<String, String>() {{ put("ch", "30"); put("name", "KBS 드라마"); put("category", "드라마"); } };
	list.add(map);
	map = new HashMap<String, String>() {{ put("ch", "32"); put("name", "MBC 드라마"); put("category", "드라마"); } };
	list.add(map);
	map = new HashMap<String, String>() {{ put("ch", "34"); put("name", "Olive"); put("category", "드라마"); } };
	list.add(map);
	
	map = new HashMap<String, String>() {{ put("ch", "3"); put("name", "tvN"); put("category", "예능"); } };
	list.add(map);
	map = new HashMap<String, String>() {{ put("ch", "28"); put("name", "MBC Every1"); put("category", "예능"); } };
	list.add(map);
	map = new HashMap<String, String>() {{ put("ch", "48"); put("name", "JTBC2"); put("category", "예능"); } };
	list.add(map);
	map = new HashMap<String, String>() {{ put("ch", "49"); put("name", "E채널"); put("category", "예능"); } };
	list.add(map);
	
	map = new HashMap<String, String>() {{ put("ch", "120"); put("name", "SPOTV"); put("category", "스포츠"); } };
	list.add(map);
	map = new HashMap<String, String>() {{ put("ch", "121"); put("name", "KBSN 스포츠"); put("category", "스포츠"); } };
	list.add(map);
		
	// 따로 블로그 등에 글 정리?..
		String category = request.getParameter("category");
		// 이 경우 전달받는 파라미터가 없으면 에러가 난다. 
		// T- category == null 경우 만듦, 근데 나도 했으나 안먹혔다.. (> or||아니라 else if로 해서인듯)
		
		// > T는 test01(첫페이지) 자체에 바로 파라미터받게만들고, null인 경우에 대해 만들었지만
		// > 나는 test01에서 link_table와 menu을 동적방식으로 받아오게 했으며 / menu.jsp에서 파라미터 a태그 연결시킴
		// > 즉 link_tale이 test01에 동적으로 포함되어있으나, 파라미터가 없는 경우 (첫페이지) 뜨지않는다
		// > 근데 link_table에서 파라미터 받아도 잘 작동가능/ 이건 문제가 x
		
		//  문제는, (link_table,test01 어디에서 파라미터받든) null인 경우를 만들때 else if 로는 안된다는 것
		
		
		// menu의 카테고리 눌러서 링크a태그로  연결 받음
%>

	<!-- 메뉴카테고리에서 연결된 이 link_table도, 헤더, 메뉴, 푸터 뜨게해야하므로 동적방식으로 마찬가지로 가져온다
	이건 동적방식으로 include된 table.jsp(첫화면내용) 과 달리 메뉴카테고리에서 링크a태그로 연결이므로 처음부터 그대로 내용 써야
	위에서 head 부트스트랩 등 뺴면 안됨! (이건 템플릿 구성이 아님) -->
	<!-- 각주달아도 jspinclude 써있으면 자꾸 동적방식 가져와서... 없앴다 ㅠ -->
	<!-- 
	//?만들어진 변수, 결과물을 정적방식으로 가져온 test01에 써야하는듯? > NO 동적
				// t- String target = channel.get("cate..") 이런 식으로 따로 변수 설정해서 사용
				
	<!-- category == null ||  넣어주면 (or로) 잘 작동함!
					// "전체"는 category=전체가 아니고, 파라미터 안받는것으로 a태그연결해야 (원래페이지) -->
	
			<table class="table text-center">
				<thead>
					<tr>
						<th>채널</th>
						<th>채널명</th>
						<th>카테고리</th>
					</tr>
				</thead>
				<tbody>
		<% for(Map<String, String> channel:list) { 
			String target = channel.get("category");
				if(category.equals(target)) { %>
					<tr>
						<td><%= channel.get("ch") %></td>
						<td><%= channel.get("name") %></td>
						<td><%= channel.get("category") %></td>
					</tr>
		<% 		} else if (category == null) {  %> 
				<!-- else if (category == null) 하면 dead code라고 뜬다 (에러)
				/ 그리고 else 라고 나머지 경우 다 퉁쳐도 모든 카테고리가 뜨게 된다 (but a태그로 파라미터없는페이지연결했으면 아예 안뜨는거같다)
				(equals("스포츠") 등등의 경우에도ㅠㅠ
				  
				  <!--여기서 그냥 else 해버리면 , 파라미터null경우 없어서 첫페이지도 안뜬다 
					else(그외의경우)에 (즉 위의 ..equals가 아닌 나머지 경우)
					 "전체"(혹은 NULL인 경우)도 포함된다고 생각했는데
					 
				  > 아래처럼 카테고리같지않은, 그외의 목록들도 다 뜨게 해서?? : O 맞음
				  > else라고 두고 목록 다써두면, 위의 category같은 목록도 뜨지만, 같지않은 목록들도 한꺼번에 다 뜨게 된다. -->
				 	<tr>
						<td><%= channel.get("ch") %></td>
						<td><%= channel.get("name") %></td>
						<td><%= channel.get("category") %></td>
					</tr>
	<% 		 	} 	
			}  %>
			
				</tbody>
			</table>


<!-- </section> </div..</body. </html..  < jsp: include page="footer.jsp" / -->
<!--section앞 각주부터해서 다니까 왜그런건지 ㅠ 동적방식과 연관되어서 다른 footer부분의 각주와 겹쳐서 이상해졌다
 (페이지소스보기로 확인) >> 헉 저거 각주달아도 footer가 동적방식으로 포함되어버렸다!!-->
	
		
		
		
	





