package com.seonuit.servlet.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test05")//annotation
public class Test05Controller extends HttpServlet{
	// 구구단페이지 먼저 만들고, 각 구구단으로 이동하는 페이지도 따로 만들어준다 (링크연결)
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		
//		out.println("<html> <head><title>구구단</title></head>");
//		out.println("<body> <h3>구구단 링크<h3>");
//		out.println("<a href=\"/servlet/test05?number=5\">5단</a><br>");
//		out.println("<a href=\"servlet/test05?number=7\">7단</a><br>");
//		out.println("<a href=\"servlet/test05?number=9\">9단</a>");
//		out.println("</body></html>");
		
		String numberString = request.getParameter("number"); 
		// number라는 파라미터 값 요청..  링크에서 써줘야  ..?number= ..이렇게
		// ""안에는 어떤 이름으로 전달받을지.  그 리턴은 문자열형식으로 받아, numberString에 넣어준다
		int number = Integer.parseInt(numberString);
		
		out.println("<html><head><title>구구단</title></head>");
		out.println("<body> <ul>");
		
		for(int i = 1; i <= 9; i++) {
			out.println("<li>" + number + " X " + i + " = " + (number * i) + "</li>"); //여기서 그 json처럼 \"넣을필요없음
		}
		
		out.println("</ul></body></html>");
		
		
	}

}
