package com.seonuit.servlet.database.ex;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.seonuit.servlet.common.MysqlService;

@WebServlet("/db/ex02_delete") //혹은 ex02/delete이런 식으로 짓는다거나
public class Ex02DeleteController extends HttpServlet{

	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
	
		int id = Integer.parseInt(request.getParameter("id")); //파라미터받고
		
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connect();
		
		String query = "DELETE FROM `user` WHERE `id` = " + id + ";";
		int count = mysqlService.update(query);
		
		mysqlService.disconnect();
		
		// 삭제후 ..리스폰스
		response.sendRedirect("/db/ex02.jsp");
		
		
		
		
	}
}
