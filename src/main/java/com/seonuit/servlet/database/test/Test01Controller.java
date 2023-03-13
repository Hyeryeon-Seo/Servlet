package com.seonuit.servlet.database.test;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.seonuit.servlet.common.MysqlService;

@WebServlet("/db/test01") 
public class Test01Controller extends HttpServlet{

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/plain");
	
		PrintWriter out = response.getWriter();
	
		MysqlService mysqlService = MysqlService.getInstance(); 
		mysqlService.connect();
		// String selectQuery = "SELECT * FROM `real_estate`;";
		String selectQuery = "SELECT * FROM `real_estate`\r\n"
				+ "ORDER BY `id` DESC\r\n"
				+ "LIMIT 10;";
		//mysql의 쿼리 select문법 써서 내림차순, 10개까지 보여주기 (자바 for반복문 그런거 아니다..)
		// >> 답: SELECT * `address`, `area`, `type`
		// FROM `real...` ORDER BY ... LIMIT 10;
		// 위에거 mysql에 써두고 여기다 복붙(알아서 \r\n붙음) , 즉 아래에서 따로 address 등 변수 해줄게 아니라 칼럼 불러오기?..
		ResultSet resultSet = null; //null로 자체수정
		try {
			resultSet = mysqlService.select(selectQuery); //try catch 자체수정
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		
		
		try {
			while(resultSet.next()) {
				// 답: out.print("매물 주소 : " + resultSet.getString("address"));
				//     out. ...(", 면적 : " + resultSet.getInt("..)); 이런 식
				// 즉 이렇게 바로바로 불러올 수 있다. 나처럼 변수 설정(ex예제대로함) 따로 안해도 
				// 위에서 특정 칼럼들 불러오면 ..? > 하지만 변수설정하든 아니든 상관없음. 줄여서 쓸 수 있지만
				String address = resultSet.getString("address");
				int area = resultSet.getInt("area");
				String type = resultSet.getString("type");
				 
				out.println("매물 주소 : " + address + ", 면적 : " + area + ", 타입 : " + type);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		
		// insert
		String insertQuery = "INSERT INTO `real_estate`\r\n"
				+ "(`realtorId`, `address`, `area`, `type`, `price`, `rentPrice`, `createdAt`, `updatedAt`)\r\n"
				+ "VALUE\r\n"
				+ "(3, '헤라펠리스 101동 5305호', 350, '매매', 1500000, NULL, now(), now());";
		
	//	int count = mysqlService.update(insertQuery);  수정 후 안되어 자체주석 (mysqlService수정)
		// update.( ) 메소드 까지 꼭 해줘야 갱신  / 횟수
		//out.println(count);
		
		mysqlService.disconnect();
		
	}
}
