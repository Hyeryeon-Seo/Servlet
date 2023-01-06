package com.seonuit.servlet.database.ex;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.seonuit.servlet.common.MysqlService;

@WebServlet("/db/test02_delete")
public class Test02DeleteController extends HttpServlet{

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
	
		String name = request.getParameter("name");
		
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connect();
	
		String query = "DELETE FROM `bookmark` WHERE `name` = " + name + ";";
		int count = mysqlService.update(query);
	
		mysqlService.disconnect();
	
		// 삭제후 리스폰스 리다이렉트
		response.sendRedirect("/db/test02.jsp");
	
	
	}
	
}
