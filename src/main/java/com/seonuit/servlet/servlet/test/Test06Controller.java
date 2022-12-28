package com.seonuit.servlet.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test06")
public class Test06Controller extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("application/json");
		
		PrintWriter out = response.getWriter();
		
		String numberString1 = request.getParameter("number1");
		String numberString2 = request.getParameter("number2");
		
		int number1 = Integer.parseInt(numberString1);
		int number2 = Integer.parseInt(numberString2);
		
		int sum = number1 + number2;
		int sub = number1 - number2;
		int mul = number1 * number2;
		int div = number1 / number2;
		
		// 예시 작성해보기  {"addition":135, "subtraction":105, "multiplication":1800, "division":8}
		// 이거 그대로 아래에 넣어주면 알아서 \ 추가해줌 따옴표사이에 (이클립스가)
		// 그뒤에 변수 이어주고정리
		
		out.println("{\"addition\":" + sum + ", \"subtraction\":" + sub + ", \"multiplication\":" + mul + ", \"division\":" + div +"}");
		
		
	}
	

}
