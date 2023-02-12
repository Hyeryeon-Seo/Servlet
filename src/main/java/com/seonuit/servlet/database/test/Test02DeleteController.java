package com.seonuit.servlet.database.test;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.seonuit.servlet.common.MysqlService;

@WebServlet("/db/test02/delete")
public class Test02DeleteController extends HttpServlet{
	// 화면구성할게없고 delete query만 수행하면 되니 class로

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// 딱 한 행 삭제할 예정
		// 삭제할 대상 id만 전달받으면 되니까 post할 필요없이 get
		// id를 통한 삭제가 가장 안전  (난 name했었으나_id못불러올까봐?.._ 바꾸자!)
		 
		int id = Integer.parseInt(request.getParameter("id")); 
		// 리턴받는 형태 문자열도 상관없으나, 그냥 숫자니까.. int로 바꿔주기
		
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connect();
	
		String query = "DELETE FROM `bookmark` WHERE `id` = " + id + ";";
		// 에러 ` ' 때문! 직접 mysql workbench에서 입력해본 후 (name변수자리에 인스타라든가) 
		// id부분은 문자열'" + name + "' .. 이런 형태와 달리, 
		// 그냥 int id 변수니까 " + id + " 되어야  (``칼럼말고, 뒤에' ' 말고)
		
		int count = mysqlService.update(query);
		// 쿼리수행. update, insert, delete 셋 다 수행하기 위한 update method 수행
		
		mysqlService.disconnect();
		// 접속 후 할일다했으면 끊어주는게 좋음 (네트워크자체가 계속접속시 리소스 잡아먹어)
		
		// 삭제후 리스폰스 리다이렉트 메소드 호출
		response.sendRedirect("/db/test02.jsp");
	
	
	}
	
}
