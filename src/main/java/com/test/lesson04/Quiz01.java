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

@WebServlet("/lesson04/quiz01") 
public class Quiz01 extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/plain");
		
		// mysql 연결
		MysqlService ms = MysqlService.getInstance(); //이건 객체만드는거까지
		ms.connect();	
	
		// insert DB
		String insertQuery = "insert into `real_estate` (`realtorId`, `address`, `area`, `type`, `price`)"
				+ "values (3, '헤라펠리스 101동 5305호', 350, '매매', 150000);";
		try { // 내 쿼리 잘못 try catch
			ms.update(insertQuery);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		// select DB > 출력
		PrintWriter out = response.getWriter(); // 내잘못 아니니 위로 던질것
		String selectQuery = "select `address`, `area`, `type` from `real_estate` order by `id` desc limit 10"; // 여기서 안에 ; 없어도됨
		// 만약 다 안가져온ㄴ다면 * 대신 `address`, `area`, `type`
		try {
			ResultSet res = ms.select(selectQuery);  //import하고 trycatch
			while (res.next()) {
				out.println("매물 주소:" + res.getString("address") 
				+ ", 면적:" + res.getInt("area")
				+ ", 타입:" + res.getString("type"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		// Mysql 연결 해제
		ms.disconnect();
				
			
	
	
	}

}
