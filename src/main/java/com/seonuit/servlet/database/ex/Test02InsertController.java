package com.seonuit.servlet.database.ex;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.seonuit.servlet.common.MysqlService;

@WebServlet("/db/test02_insert")
public class Test02InsertController extends HttpServlet{

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
	
		String name = request.getParameter("name");
		String url = request.getParameter("url");
	
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connect();
	
		String query = "INSERT INTO `bookmark`\r\n"
				+ "(`name`, `url`, `createdAt`, `updatedAt`)\r\n"
				+ "VALUE\r\n"
				+ "('" + name +"', '" + url + "', now(), now());";
	
		int count = mysqlService.update(query);
	
		mysqlService.disconnect();
	
		// 목록 출력 페이지 test02.jsp로 리다이렉트
		response.sendRedirect("/db/test02.jsp");
		
		
		
		
	}
	
}
