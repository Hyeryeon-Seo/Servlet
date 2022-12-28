package com.seonuit.servlet.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Test01Controller extends HttpServlet{

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/plain");
		
		PrintWriter out = response.getWriter();
		
		Date now = new Date(); 
		
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy년 M월 d일");
		// 05, .. 이렇게 한자리수에 0 붙일거 아니니까 M월 d일  한자리로!
		String dateString = formatter.format(now);
		
		out.println("오늘의 날짜는 " + dateString);
		
	}
	
}
