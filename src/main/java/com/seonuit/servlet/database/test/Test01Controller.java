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
	
		MysqlService mysqlService = new MysqlService(); 
		mysqlService.connect();
		// String selectQuery = "SELECT * FROM `real_estate`;";
		String selectQuery = "SELECT * FROM `real_estate`\r\n"
				+ "ORDER BY `id` DESC\r\n"
				+ "LIMIT 10;";
		//mysql의 쿼리 select문법 써서 내림차순, 10개까지 보여주기 (자바 for반복문 그런거 아니다..)
		ResultSet resultSet = mysqlService.select(selectQuery);
		
		
		try {
			while(resultSet.next()) {
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
		
		int count = mysqlService.update(insertQuery);
		// update.( ) 메소드 까지 꼭 해줘야 갱신  / 횟수
		//out.println(count);
		
		mysqlService.disconnect();
		
	}
}
