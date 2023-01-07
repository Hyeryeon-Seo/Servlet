package com.seonuit.servlet.database.test;

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
	
		String query = "DELETE FROM `bookmark` WHERE `name` = '" + name + "';";
		// 에러 ` ' 때문! 직접 mysql workbench에서 입력해본 후 (name변수자리에 인스타라든가) 
		// 그 부분은 문자열 ' ' 이니까  위에 쓸때 '" + name + "' ...이 되어야  (``칼럼말고)
		int count = mysqlService.update(query);
	
		mysqlService.disconnect();
	
		// 삭제후 리스폰스 리다이렉트
		response.sendRedirect("/db/test02.jsp");
	
	
	}
	
}
