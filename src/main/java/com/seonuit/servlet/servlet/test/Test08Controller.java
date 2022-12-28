package com.seonuit.servlet.servlet.test;

// 어렵다 헷갈
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test08")
public class Test08Controller extends HttpServlet {

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {

		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");

		PrintWriter out = response.getWriter();

		String searched = request.getParameter("searched");
		// char[] charSearch = search.toCharArray(); // 문자열을 문자로 array넣어주기

		List<String> list = new ArrayList<>(Arrays.asList( // new Arraylist다음은 뭐지? ㅠㅠ ... 내가 배운거 찾아봐도 안나오는듯? 근데
				// aslist 로 arraylist를 초기화한다는 말이 있다
				"강남역 최고 맛집 소개 합니다.", 
				"오늘 기분 좋은 일이 있었네요.", 
				"역시 맛집 데이트가 제일 좋네요.", 
				"집에 가는 길에 동네 맛집 가서 안주 사갑니다.",
				"자축 저 오늘 생일 이에요."));

		
		out.println("<html> <head><title>검색</title></head>");
		out.println("<body>");
		// out.println(list.get(0)); 뜸

		// if(list.contains("강남역 최고 맛집 소개 합니다.")) { // if(list.contains(search)) 는 안된다..
		// if(list.contains("강남역 최고 맛집 소개 합니다.")) 이렇게하면 무조건 뜬다.
		// 즉, list.contains("")를 쓸거면 ""안에 바로 그 list의 한 원소 ""문자열 그대로 나와야 맞다고 뜬다

		// 향상 for문 써보기?
//		for(String lists:list) {
//			if((lists.contains(search)) & (search != "")) { // null은 == ? =? ??  : == 인듯
//				// &&   (search != null ) 해도 안먹힘
//				// 근데 & (search != "") 하니까 그냥 공백은 안뜨긴하는데 (조건맞음) , "   오" 이렇게 쳐도 "오"해당으로 안뜸
//				String 
//				out.println(lists + "<hr>");				
//			}
//		}
//		
		// <b>강조 , search단어 포함시. 그 단어만 찾아서. : 반복시키며 그 부분 나오면 강조하기
		// 반복무의 list.get(i) 를 쪼갰어도 (문자열) 다시 쪼개야 .. char하나씩? 그래서

//		for (int i = 0; i < list.size(); i++) {
//			String lists = list.get(i); // 반복 돌면서
//			char[] charLists = lists.toCharArray(); // toCharArray() 이용. 문자열String을 문자 array로
//			for (char eachcharLists : charLists) { // charLists의 각각의 문자들 변수로 지정
//				for (char eachcharSearch : charSearch) {
//					if (eachcharLists == eachcharSearch) {
//						out.println("<b>" + eachcharSearch + "</b>");
//					} else {
//						out.println(eachcharLists);
//					}
//				}
//			} // >> 이렇게 하면 문자 하나하나 출력..  이거 말고 단위, 단어인듯 char말고 . 단어 단위로 하려면? 띄어쓰기 단위로 끊어야 > .split(" ")

		for (String listString : list) { // list에서 lists문자열을 꺼내고 (돌면서)
			if (listString.contains(searched)) { // 근데 이거 없으면 왜 다 뜨긴 하는지 의문..ㅠ // 글고 아무것도 안써도 !=null조건 붙여도 뜨뮤
				// 그냥 에러 다루는 ? 예외, exception의 역할인가

				String[] listWords = listString.split(" "); // 띄어쓰기 단위로 끊고 (단어) listWords array에 넣어서
				// 그런데 그냥 listWords를 출력하면 아무것도 안뜬다 (리스트면 모든 항목이 다 뜨던데.. array는 안뜨나? ;)
				// 그러나 for문 반복하며 listWords[i] 하면 다 뜸 (혹은 개선for문)
//			for(int i = 0; i < listWords.length; i++) {
//				out.println(listWords[i]);				
//			}
				for (String alistWord : listWords) {
					if (alistWord.equals(searched)) { // == 아님..ㅠㅠ
						out.println("<b>" + alistWord + "</b>");
					} else {
						out.println(alistWord);
					}
				} 
				// for each문 안에서 listWord 다 출력 후  (서치단어 같은지 묻는 if문 안에는 있어야. 그래야 해당되는 문자열 lists들 간에만 <hr>줄생김
				out.println("<hr>");
			}
		}
		
//			for (String listWord : listWords) { // 그 listWords array의 각 단어들을 listWord라고 한다면
//				if (listWord == search) { // 이 listWord가 search단어와 같을 시
//					out.println(listWord);
//				} else {
//					out.println("안녕");
//				}
//			}
//		}

//			for (String listWord : listWords) {
//				if (listWord == search) {
//					out.println("<b>" + listWord + "</b>");
//				} else {
//					out.println(listWord);
//				}
//			}
//		}

//			if(lists.contains(search)) { // 그 문자열에서 단어 찾았으면   // for(char eachcharLists:charLists   위에서 써주고 써야
//				if(charLists.equals(charSearch)) { // 그 해당 문자가 나오면
//					out.println("<b>" + charSearch +"</b>"); // 그 문자만 강조
//				}
//				else {
//					out.println(charLists); // 아니면 나머지 그냥 문자열 그대로 쓰기. (문자?)
//				}
//			//	out.println("<b>" +lists.contains(search) + "</b>");   // lists.contains(search)그냥 이걸 뜨게 하면 있을경우 true로 뜸 (있다는 표시)
//			}

		out.println("</body></html>");

	}

}
