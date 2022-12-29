package com.seonuit.servlet.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/ex05")
public class Ex05Controller extends HttpServlet {

	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		//request.setCharacterEncoding("utf-8"); // request도 
		// body에 포함되는 순간 request encoding도 신경써줘야.
		//response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		// 이제 인코딩 설정 안해줘도 됨. encodingfilter있어서
		
		PrintWriter out = response.getWriter();
		
		
		String name = request.getParameter("name");
		// 20020311
		String birthday = request.getParameter("birthday");
		
		String yearString = birthday.substring(0, 4);
		int year = Integer.parseInt(yearString);
		
		int age = 2022 - year + 1;
		
	
		out.println("<html> <head><title>�젙蹂�</title></head>");
		out.println("<body>");
		out.println("<table border=1>");
		out.println("<tr> <td>이름</td> <td>" + name + "</td> </tr>");  // tr �븳 �뻾  (html)  td�븳移�
		out.println("<tr> <td>나이</td> <td>" + age + "</td> </tr>");  
		out.println("</table>");
		out.println("</body></html>");
		
		
		
		
		
		
		
	}
	
	
}