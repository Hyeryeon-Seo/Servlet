package com.seonuit.servlet.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test04")
public class Test04Controller extends HttpServlet{
	//태그 완벽하지않아도 보여줄수있으므로 서버 열어서 오른쪽클릭으로 페이지소스보기 통해서 체크하기

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		
		out.println("<html><head><title>리스트30</title><head>");	
		out.println("<body><ul>");
		
		for(int i = 1; i <= 30; i++) {
			out.println("<li>" + i + "번째 리스트</li>");   //딱 이것만 반복시켜야 
		}

		out.println("</ul></body></html>");
		
	}
	
}

// 혹시 String 
