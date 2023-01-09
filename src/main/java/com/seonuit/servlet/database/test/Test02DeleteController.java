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
		////삭제할 대상 id만 전달받으면 되니까 post할 필요업ㅄ이 get
		//id를 통한 삭제가 가장 안전  (난 name했었으나_id못불러올ㄲ봐?.._ 바꾸자!)
		int id = Integer.parseInt(request.getParameter("id")); //int로 바꿔주기
		
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connect();
	
		String query = "DELETE FROM `bookmark` WHERE `id` = '" + id + "';";
		// 에러 ` ' 때문! 직접 mysql workbench에서 입력해본 후 (name변수자리에 인스타라든가) 
		// 그 부분은 문자열 ' ' 이니까  위에 쓸때 '" + name + "' ...이 되어야  (``칼럼말고)
		int count = mysqlService.update(query);
	
		mysqlService.disconnect();
	
		// 삭제후 리스폰스 리다이렉트
		response.sendRedirect("/db/test02.jsp");
	
	
	}
	
}
