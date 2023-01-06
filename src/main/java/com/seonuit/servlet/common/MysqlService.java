package com.seonuit.servlet.common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class MysqlService {

	// 싱글톤 -..
	// static 객체 생성없이 바로 사용 가능 _ 외부에서는 객체 생성 자체를 막을 것
	private static MysqlService mysqlService = null;

	// 접속 주소, 아이디, 비밀번호 > private (매번 접속 시 해줄 수 없으니까/ 변수로서의 역할없는 멤버변수 > 상수로 'final'
	// (한번 저장, 바뀔 수)
	private final String url = "jdbc:mysql://localhost:3306/hyeryeon";
	private final String userId = "root";
	private final String password = "java0628"; // mysql 비밀번호 java0628!

	// 멤버변수로 만들기
	private Connection connection;
	private Statement statement;
	
	// private으로
	private MysqlService() {
		
	}

	// 객체 생성을 관리하는 메소드
	// 얘도 객체 생성없이 하도록 static / 메소드이름 일반적으로 getInstance라 지음
	public static MysqlService getInstance() {
		// 하나의 객체만 생성 
		if(mysqlService == null) {
			mysqlService = new MysqlService();
		}
		
		return mysqlService;
	}

	// 접속 기능
	public void connect() {
		// 접속
		try {
			DriverManager.registerDriver(new com.mysql.jdbc.Driver());
			connection = DriverManager.getConnection(url, userId, password); // 이걸 객체형태로 리턴해줌
			statement = connection.createStatement();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	// 흐름 위주로만 파악. 예외처리 등은... 스프링이중요
	// 쿼리 수행기능 select
	public ResultSet select(String query) {

		try {
			return statement.executeQuery(query);
		} catch (SQLException e) {

			e.printStackTrace();

			return null; // exception발생시 null을 리턴
		}
	}

	// 쿼리 수행기능 insert, update, delete
	public int update(String query) {
		try {
			return statement.executeUpdate(query);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return -1; // 일반적으로 에러상황은 음수로 리턴
		}
	}

	// 접속 끊는 메소드 (필요하지않으면 끊어줘야)
	public void disconnect() {
		try {
			statement.close();
			connection.close();// 먼저쓰고
		} catch (SQLException e) {

			e.printStackTrace();
		}
	}

}
