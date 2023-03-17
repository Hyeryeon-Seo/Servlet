package com.test.lesson04;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.seonuit.servlet.common.MysqlService;

@WebServlet("/lesson04/ex01") // 깃허브에 올리기 다시 첨부터 설정해보기 ㅠ 
public class Ex01 extends HttpServlet{ // import  ctl shift o

	// 에러못찾겠을때  리퀘스트 어떻게날렸는지 주소 정보 주고 해야.  코드어느부분에서에러난거같은지. 단서도.  콘솔에러 중심 문장도 복사해서 보내드리기
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/plain");
		//response.setCharacterEncoding("utf-8");
		
		// db 연결
		MysqlService ms = MysqlService.getInstance(); //이건 객체만드는거까지 / DB 연결을 위한 객체 생성(싱글턴이라 한개만 생성됨)
		ms.connect(); // !!!! 중요 실질적인 db연결 꼭!!
		// conncect 메소드 호출해야 실제 db연결
		
		 
		// query insert
		String insertQuery = "insert into `used_goods` (`sellerId`, `title`, `description`, `price`)"
				+ "values (1, '고양이 간식 팝니다', '저희 고양이가 입맛이 까다로워서 안먹어요ㅠ', 2000);";
		try {
			ms.update(insertQuery);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		// 쿼리 수행 
		// db query select & 결과 출력
		String selectQuery = "select * from `used_goods`";
		PrintWriter out = response.getWriter();
		
		try {
			ResultSet res = ms.select(selectQuery); //지금은 spring달리 , 한행씩 뽑아내야 while문으로
			// ms.select(selectQuery);
			while (res.next ()) { // 결과 행이 있는 동안 수행
				out.println(res.getInt("id")); // db 속 타입따라 일치되게
				out.println(res.getString("title"));
				out.println(res.getInt("price"));
				out.println(res.getString("description"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} // try catch해주기
		// --- 쿼리 끝
		
		// db 연결 해제 (그래야 메모리 낭비 x)
		ms.disconnect();
		
	}

}
