package com.test.lesson04;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.seonuit.servlet.common.MysqlService;

@WebServlet("/lesson04/delete_ex02")
public class DeleteEx02 extends HttpServlet{

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException { // 앵커태그? a태그..인듯! 무조건 get
		// request parameter 삭제할 id
		int id = Integer.valueOf(request.getParameter("id")); // valueOf 혹은 parseInt
		
		// DB 연결
		MysqlService ms = MysqlService.getInstance();
		ms.connect();
		
		// delete query DB (쿼리수행)
		String deleteQuery = "delete from `user` where `id` = " + id;  //id변수값으로 연결해서 delete
		try {
			ms.update(deleteQuery); // delete쿼리는 update문으로
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}  
		
		// DB 연결 해제 (여기까지만 하면 흰화면만 뜸)
		ms.disconnect();
		
		//  유저 목록 페이지로 리다이렉트Redirect 이동
		response.sendRedirect("/lesson04/ex02_1.jsp"); //예외처리thorw위로
		
	}
}
