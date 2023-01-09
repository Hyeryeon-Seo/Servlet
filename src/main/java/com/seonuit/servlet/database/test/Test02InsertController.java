package com.seonuit.servlet.database.test;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.seonuit.servlet.common.MysqlService;

@WebServlet("/db/test02_insert")
public class Test02InsertController extends HttpServlet{

	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		//post 메소드
		
		String name = request.getParameter("name");
		String url = request.getParameter("url");
	
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connect();
	
		String query = "INSERT INTO `bookmark`\r\n"
				+ "(`name`, `url`, `createdAt`, `updatedAt`)\r\n"
				+ "VALUE\r\n"
				+ "('" + name +"', '" + url + "', now(), now());";
		//근데 여기서 첨에 \r\n 안들어갔는데 되었었다. 복붙했을때도 안들어갔구
	
		int count = mysqlService.update(query);
	
		mysqlService.disconnect();
	
		// 목록 출력 페이지 test02.jsp(리스트페이지)로 리다이렉트
		response.sendRedirect("/db/test02.jsp");
		
		
		
		
	}
	
}
