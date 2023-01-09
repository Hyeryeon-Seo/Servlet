package com.seonuit.servlet.database.ex;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.seonuit.servlet.common.MysqlService;

@WebServlet("/db/ex02_insert")
public class Ex02InsertController extends HttpServlet{

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		//redirect시 필요없어짐
	//	response.setContentType("text/plain");
		
	//	PrintWriter out = response.getWriter();
		
		
		// 이름, 생년월일, 이메일 파라미터로 얻기
		String name = request.getParameter("name");
		String birthday = request.getParameter("birthday");
		String email = request.getParameter("email");
		
		// insert 쿼리 수행
		// 채워질 값을 전달 받아서 쿼리에 추가한다
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connect(); //접속하고
		
		//쿼리 문자열로 만들기
		String query = "INSERT INTO `user`\r\n"
				+ "(`name`, `yyyymmdd`, `hobby`, `introduce`, `createdAt`, `updatedAt`, `email`)\r\n"
				+ "VALUE\r\n"
				+ "('" + name + "', '" + birthday + "', '', '', now(), now(), '" + email + "');";
		// ""따옴표 위에 넣을 대 주의  변수 넣을 때 사이에
		// 워크벤치켜서 쓰고 넣자  변수에서 `아니고 ' 문자열 사이에 넣을거니까
		// 참고로 나는 ..user table 쌤이랑 달라서 hobby introduce 등 있는 채로 했다 그러니까 에러안나구 됨  (insert때 다른칼럼도 다 써놓긴해야)
		
		int count = mysqlService.update(query);
	//	out.println("수행 결과 : " + count);
		
		mysqlService.disconnect(); //끊어주는게 좋다 수행했으면
		
		// redirect 
		//할 일 다하고 response 하지 않고 바로 
		response.sendRedirect("/db/ex02.jsp"); // (제 할일하고 나서 이동) 이동할 주소, 사용자들은 알 수 없다
		
	}
}
