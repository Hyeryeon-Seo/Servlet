<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Arrays" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jsp 기본</title>
</head>
<body>

	<%
	// 1
		int[] scores = {80, 90, 100, 95, 80};
		int scoreSum = 0;
		for(int i = 0; i < scores.length; i++) { // <=아니고 , 그런데 여기서 오류나니 다 안뜸 ㅠ
			scoreSum += scores[i];
		}
		
		double avg = scoreSum/(double)scores.length; //나누기!니까 double실수형 주의
	%>

	<h3>점수 평균은 : <%= avg %></h3>
	
	<%
	// 2
		List<String> scoreList = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"});
		// 향상 for문 
		int score = 0;
		for(String check:scoreList) {  //check변수에  저장
			
			if(check.equals("O")) {
				score += 100 / scoreList.size();
			}
		}
	//		for(int i = 0; i<scoreList)
	//		if(String.equals("O")) {
	%>
	
		<h2><%= score %>점 입니다.</h2>
	
	<%!
	// 3
	
	public int sumAll(int N) { // sumAll 메소드만들기 잘 기억 (입력값 자료형도 설정)
		int result = 0;
		for(int i = 1; i<=N; i++) {
			result += i;
		}
			return result; //간단한 연산등도 가능
	}
	%>

	<h3>1에서의 50까지의 합은 <%= sumAll(50) %></h3>
	
	
	<%
	// 4 나이구하기
		String birthDay = "20010820";
		String strBirthYear= birthDay.substring(0,4); //yearString  // .substring 문자열자르기
		int birthYear = Integer.parseInt(strBirthYear);
		int age = 2022 - birthYear + 1;
		%>

	<h3><%= birthDay %>의 나이는 <%= age%>살 입니다.</h3>
	
	
	
</body>
</html>