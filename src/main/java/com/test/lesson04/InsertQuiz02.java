package com.test.lesson04;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.seonuit.servlet.common.MysqlService;

@WebServlet("/lesson04/insert_quiz02") 
public class InsertQuiz02 extends HttpServlet{

	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		//response.setContentType("text/plain"); 생략
		
		String name = request.getParameter("name");
		String url = request.getParameter("url");
		
		// mysql 연결
		MysqlService ms = MysqlService.getInstance();
		ms.connect();
		
		// DB insert
		String insertQuery = "insert into `favorite` (`name`, `url`) "
				+ "values ('" + name + "', '"
				+ url + "')";
		try {
			ms.update(insertQuery);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		// DB 연결 해제
		ms.disconnect();
		
		// 즐겨찾기 목록 화면으로 리다이렉트
		response.sendRedirect("/lesson04/quiz02.jsp");
		
		
	}
	
	
}
