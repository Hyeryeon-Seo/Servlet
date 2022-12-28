package com.seonuit.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class HelloController extends HttpServlet {

	@Override // 부모에 잇는 메소드 아니면 오류남
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {// 이클래스에있는 파라미터를// 전달받는다는 뜻/톰캣 기본사용법
																									
		PrintWriter out = response.getWriter();
		out.println("Hello World!!");

	}

}