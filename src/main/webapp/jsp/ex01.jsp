<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>  <!-- 이게있어야 jsp정상동작 --> <!-- 스크립틀릿 문법사용하기 -->
<%@ page import="java.util.List" %> <!-- 외우기 힘드니 아래 동작문 붙여서 import된거 확인해서 복사하거나. -->
<%@ page import="java.util.ArrayList" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP</title>
</head>
<body>

	<h2>JSP 기본 문법</h2>
	
	<!-- 아래 자바코드 작성 _주석도 //로
	아래결과를 html사이에 , 밖에 표현-->
	<%
		//자바 주석
		// 1부터 10까지의 합 구하기
		int sum = 0;
		for(int i = 1; i<= 10; i++) {
			sum += i;
		}
	%>
	
	<!-- 위 자바코드 아래에 표현  : sum이라는 변수를 html태그사이에 
	자바코드는 response에 전달되지 않아? 뜨지않음 html만?-->
	<h3>합계 : <%= sum %></h3>
	<input type="text" value="<%= sum %>">
	
	<!-- html 주석 -->
	<%-- jsp 주석 , 이렇게 jsp자바코드 밖에도 달 수, / 위주석과달리 클라이언트가 확인할 수 없다! --%>
	
	<% 
		// 동물 이름 리스트
		List<String> animals = new ArrayList<>(); // jsp문법통해서 import해줘야함
		
		animals.add("dog");
		animals.add("cat");
		
	
	%>
	
	<h3><%= animals.get(0) %></h3> <!-- 출력 -->
	<h3><%= animals.get(1) %></h3>
	
	<%-- 메소드 만들기 --%>
	<%! 
		// Hello World 문자열을 리턴하는 메소드
		// 줄 스스로 잘 정리해주기 (자바코드와 달리)
		public String getHelloWorld() {
			return "Hello World"; //간단한 연산등도 가능
		}
	%>
	
	<h3><%= getHelloWorld() %></h3>
	
</body>
</html>