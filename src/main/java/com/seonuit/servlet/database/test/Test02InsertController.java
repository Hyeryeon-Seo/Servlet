package com.seonuit.servlet.database.test;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.seonuit.servlet.common.MysqlService;

@WebServlet("/db/test02/insert")
//얘도 웹페이지(인서트페이지). 여기에 접근해서 파라미터로 전달해야 수행됨- urlMapping필요
public class Test02InsertController extends HttpServlet{
	// T: FavoriteInsertController
	// insert 인서트 페이지 만들기 - (input페이지랑 다름 주의!) : 인서트 후 보여줄 내용 없음. (목록페이지다르게) - jsp가 아니라 class통해서 페이지 구성해야 
	// (jsp에 코드쓰는 이유:  html을 쉽게 편집, 구성하기 위함.) 이 경우가 아니므로 class사용 (html안쓸때는 jsp보다 자바코드가 수월)
	// 데이터입력하기. > 데이터베이스에서 인서트 하라는 것. 인서트 진행할수있도록 페이지 만들기
	// 위의 인서트 쿼리 수행위해서는, 인서트 코드 수행될 수 있도록 해야하므로 이 페이지가 필요한데 단 이는 사용자가 있는지도 모름.

	
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		//post 메소드 - 파라미터입력받을때 메소드 get,post중.. 여기서 주소입력받으므로, 길어질 수 : post
		// 얘는 post메소드이므로 직접 주소를 통해 확인할 수 없으므로 input태그만들어서 구성해나가기
		// ( > 이 페이지를 호출해서 인서트페이지(인서트쿼리수행할)로이동하게 할 인풋페이지(사용자가입력) 만들어야! ) > jsp로
		// 여기서 response로 돌려줄 것 없음_사용자에게 돌려줄것 x (그 과정 생략)

		// 이름과 주소를 전달받고 insert한다
		String name = request.getParameter("name");
		String url = request.getParameter("url");
	
		//MysqlService라는 클래스 객체를 통해서 쿼리 수행 과정 진행되어야
		// 싱글턴이므로 getInstance메소드로 가져온다
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connect();
	
		// 워크벤치로 쿼리수행문써보고 복붙하는게 좋음
		String query = "INSERT INTO `bookmark`\r\n"
				+ "(`name`, `url`, `createdAt`, `updatedAt`)\r\n"
				+ "VALUE\r\n"
				+ "('" + name +"', '" + url + "', now(), now());";
		// 위에 " + name + " 등 따옴표 주의
		// _근데 여기서 첨에 \r\n 안들어갔는데 되었었다. 복붙했을때도 안들어갔구
	
		int count = mysqlService.update(query);
	
		mysqlService.disconnect();
	
		// 목록 출력 페이지 test02.jsp(리스트페이지)로 리다이렉트
		// response객체의 sendRedirect 메소드 활용
		// 빨간줄 - exception처리까지 
		response.sendRedirect("/db/test02.jsp"); // webapp아래의 경로
		
		
		
	}
	
}
