package com.test.lesson04;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.seonuit.servlet.common.MysqlService;

@WebServlet("/lesson04/delete_quiz02")
public class DeleteQuiz02 extends HttpServlet{

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		int id = Integer.valueOf(request.getParameter("id"));
		
		// 연결
		MysqlService ms = MysqlService.getInstance();
		ms.connect();
		
		// delete 쿼리 수행
		String deleteQuery = "delete from `favorite` where `id` = " + id;
		try {
			ms.update(deleteQuery);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		// 연결 해제
		ms.disconnect();
		
		// 즐찾 목록 페이지 리다이렉트
		response.sendRedirect("/lesson04/quiz02.jsp");
		
		
		
	}
}
