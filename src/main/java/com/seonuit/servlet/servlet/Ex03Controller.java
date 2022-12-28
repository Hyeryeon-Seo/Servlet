package com.seonuit.servlet.servlet;
// test문제 에서... 7번 두조건중 하나라도 걸리면 나오게.
// 8번 리스트 문자열 중에서 검색어  .. 문자열 포함된것만 전달.  검색어 진하게. 만들기 
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/ex03")
public class Ex03Controller extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setCharacterEncoding("utf-8");
//		response.setContentType("application/json"); // !
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
//		// 이름과 생년월일을 전달 받고, 이름과 나이를 HTML 구성
		String name = request.getParameter("name");  // request의 파라미터 값을 전달해줌. na
		String birthday = request.getParameter("birthday"); // 파라미터는 무조건 문자열로 리턴!! 그래서 숫자로 계싼하고프면 변환해줘야?.
//		//ex03까지한 후 ?name= ...&birthday= ....
//		
//		out.println(name + " " + birthday); // 그럼 주소 쓴 대로 이 값이 그대로 뜬다
//		
//		// 생년월일로 나이계산
//		// 20011023   
		String yearString = birthday.substring(0,4); // birthday라는 문자열 문자 자르기! 0,1,2,3 자리 얻기
		int year = Integer.parseInt(yearString);  //변수 저장 (숫자로변환해서)
//		
		int age = 2022 - year + 1;
//		
		out.println("<html><head><title>나이</title></head>");
		out.println("<body> <h2> 이름 : " + name + "</h2>");
		out.println("<h3>나이 : " + age +"</h3> </body> </html>");
		
		// json  (사용자에게 데이터만 전달해줌) 
		// 문자열 형태로 데이터를 전달해야 , 
		//원래 xml 규격으로 데이터를 만들어준다. 예를 들어 <name>김인규</name> <age>25</age>
		// xml의 대안으로 나온게 json (자바스크립트?형태로.)
		// 예를들어 딕셔너리는 :"name":"김인규", "age":24}
		// ["김인규", "유재석", "지석진"]
	
	//	out.println("{\"name\":\""+ name + "\",\"age\":" + age +"}");  
		//역슬래시하고 따옴표쓰면 그 " " 문자열 안에 진자로 쓴 따옴표임.   안 ㄱ벼치게. 안헷갈리게하기 ㅠㅠ
	
		
//		문제에서  1번문제만..out 숫자따라서만 (주소에서)  그 페이지 만들수있게. 5가전달되면 5단, 6이전달되면 6. 도전해보려면 도전
//		페이지 2개임.
	}

}
