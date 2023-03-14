package com.test.lesson04;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.seonuit.servlet.common.MysqlService;

@WebServlet("/lesson04/insert_ex02")
public class InsertEx02 extends HttpServlet{
 // 자바 작성시 서버 끄고
	// ex02.jsp에서 받아서 이쪽으로 request날라옴
	// 참고로 계속 중간에 확인하면서 
	
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		//response정의 ?생략
		// request parameters 꺼낸다.  (여기서 생년월일도 string
		// 두번 줄 클릭  브레이크포인트 걸고 .. 귀찮더라도 variables. 오류안걸리게미리
		String name = request.getParameter("name");
		String yyyymmdd = request.getParameter("yyyymmdd");
		String email = request.getParameter("email");
		String introduce = request.getParameter("introduce");
		
		// DB 연결
		MysqlService ms = MysqlService.getInstance();
		ms.connect();
		
		// DB insert
		String insertQuery = "insert into `user` (`name`, `yyyymmdd`, `email`, `introduce`) "
				+ "values ('" + name + "', '" 
				+ yyyymmdd + "', '" 
				+ email + "', '" 
				+ introduce + "')";
				// 변수 넣을때 헷갈리니 주의 (변수 " "로  )
		
		try {
			ms.update(insertQuery);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		// DB 연결 해제
		ms.disconnect();
		
		// 유저 목록 화면으로 Redirect (페이지보냄. 이렇게 안할 시 인서트만하고 빈화면 뜸) 
		response.sendRedirect("/lesson04/ex02_1.jsp"); //jsp까지 풀주소 - 내책임아니라서 위로 thorw
		
	}
	
}
