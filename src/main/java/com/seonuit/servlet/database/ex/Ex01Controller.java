package com.seonuit.servlet.database.ex;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.seonuit.servlet.common.MysqlService;

@WebServlet("/db/ex01")  //urlMapping /   꼭 /로 시작
public class Ex01Controller extends HttpServlet{
	
	@Override   //mysqul   사용법
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		//ctl shift o 로 임포트받기
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		// 아까만든 클래스, 객체 생성  (기능위주클래스)
		MysqlService mysqlService = new MysqlService(); // 생성자 안만들었으면 클래스이름, 근데 임포트는 해줘야한다 
		mysqlService.connect();
		String selectQuery = "SELECT * FROM `used_goods`;";
		ResultSet resultSet = mysqlService.select(selectQuery);
		
		out.println("<html><head><title>중고 물품</title></head><body>");
		
		try {
			while(resultSet.next()) { 
				//iterator와비슷 (다음거 리턴 받아 처리) 그러나 이건 여기자체에서 값 끄집어내야
				//반복문 while - 하나하나 반복하며 가리켜야
				String title = resultSet.getString("title");  //꺼낼값.  컬럼이름. 타입도 써주기
				int price = resultSet.getInt("price");
				
				out.println("<div> 제목 : " + title + " 가격 : " + price + "</div>");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
			
		
		String insertQuery = "INSERT INTO `used_goods`\r\n"
				+ "(`sellerId`, `title`, `price`, `description`, `picture`, `createdAt`, `updatedAt`)\r\n"
				+ "VALUE \r\n"
				+ "(3, '고양이 간식 팝니다', 2000, '저희 고양이가 까탈스러워 안먹어서 팝니다', NULL, now(), now());"
		
		int count = mysqlService.update(insertQuery);
		
		out.println("<div> 인서트 쿼리 수행 결과 : " + count + "</div>");
	
		out.println("</body></html>");	
		mysqlService.disconnect();
	
	}
//		// used_goods 에 있는 모든 행 출력하기
//		try {
//			DriverManager.registerDriver(new com.mysql.jdbc.Driver());
//			
//			// 접속 주소, 아이디, 비밀번호
//			String url = "jdbc:mysql://localhost:3306/hyeryeon";
//			String userId = "root";
//			String password = "java0628"; // mysql 비밀번호 java0628!
//			
//			// 접속
//			Connection connection = DriverManager.getConnection(url, userId, password);  // 이걸 객체형태로 리턴해줌
//			Statement statement = connection.createStatement();
//			
//			// 쿼리 수행
//			String selectQuery = "SELECT * FROM `used_goods`;";
//			ResultSet resultSet = statement.executeQuery(selectQuery);
//			
//			out.println("<html><head><title>중고 물품</title></head><body>");
//			while(resultSet.next()) { 
//				//iterator와비슷 (다음거 리턴 받아 처리) 그러나 이건 여기자체에서 값 끄집어내야
//				//반복문 while - 하나하나 반복하며 가리켜야
//				String title = resultSet.getString("title");  //꺼낼값.  컬럼이름. 타입도 써주기
//				int price = resultSet.getInt("price");
//				
//				out.println("<div> 제목 : " + title + " 가격 : " + price + "</div>");
//			}
//				
//			out.println("</body></html>");	
//				
//			
//		} catch (SQLException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//			
		
		
		
		
		
		
	}

}
