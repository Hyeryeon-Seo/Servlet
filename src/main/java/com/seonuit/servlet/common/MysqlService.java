package com.seonuit.servlet.common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class MysqlService {
	// B 보쌤 일단 3단계 흐름만 이해, 큰 개념만 , 코드 다 기억할필요없이 / mysql 사용자root, 비번도root로 설정 (나는java0628로 따로 설정했었음, 해킹되지않을걸로해야 깃허브올려서..ㅎ)
	// 맥락 덩어리만 이해해서 쓰면됨
	// 클래스는 행위 묶음, 
	// R, CUD
	
	
	
	// 인쌤 I T + B
	// 필드
	// static 객체 생성없이 바로 사용 가능 _ 외부에서는 객체 생성 자체를 막을 것
	private static MysqlService mysqlService = null; // 일단 null로 셋팅 하고 시작, mysqlService가 내부적으로 만들 수 있게
	// static. new를 안해도됨 
	
	// 접속 주소, 아이디, 비밀번호 > private (매번 접속 시 해줄 수 없으니까/ 변수로서의 역할없는 멤버변수 > 상수로 'final'
	// (한번 저장, 바뀔 수)
	// 도메인 뒤에 접속할 데이터베이스명까지 넣는다. 그래야 테이블 접근가능
	// + B쌤은 final안함
	private final String url = "jdbc:mysql://localhost:3306/hyeryeon"; // 포트번호 8080등이면 web. 3306이면 db / 그뒤에 접속할 데이터베이스있는..명
	private final String userId = "root";
	private final String password = "java0628"; // mysql 비밀번호 java0628!
	
	// 멤버변수로 만들기
	private Connection conn;  // B - conn
	private Statement statement;
	private ResultSet res;
	
	
	// 싱글톤 Singleton 패턴: MysqlServiceㄱ라는 객체가 단 하나만 생성될 수 있도록 하는 디자인 패턴 (db연결이곳저곳 다하면 좋지않아서. 한번만 연결하고 관리)
	// private으로, 내부에서 나만 할 수 있도록 해줌
	// 메소드 
	private MysqlService() {
	}

	// 객체 생성을 관리하는 메소드 : 메소드 이름은 getInstance (싱글톤에서 많이사용하는 메소드이름)
	// 얘도 객체 생성없이 하도록 static / 메소드이름 일반적으로 getInstance라 지음 > 하나의 객체를 돌려준다. 주라고 요청하는 메소드
	public static MysqlService getInstance() {
		// 하나의 객체만 생성 
		if(mysqlService == null) { // 객체한번도 생성된 적 없음, null이라면 
				mysqlService = new MysqlService();
		}
		return mysqlService;  // 객체 리턴, null이 아니면 mysqlService리턴하고
	}

	// DB 접속 기능
	public void connect() {
		// +드래그후 alt 누른채 이동가능
		// 다 알 필요 없음
		// 1. 드라이버(매개체) 메모리에 로딩  (하는 클래스. 모두 그렇지않고, 아래는 그 중 하나 - DriverManager.registerDriver) 
		try { // 이안에서 잘못되었다는, 에러 여기서 내가 책임진다는 > try,catch (jsp에서 에러발생안하고)
			DriverManager.registerDriver(new com.mysql.jdbc.Driver());
		
		// 2. (실제) DB 연결
			conn = DriverManager.getConnection(url, userId, password); // 이걸 객체형태로 리턴해줌
		
		// 3. 쿼리할 수 있는 준비 statement (라는 객체에)
			statement = conn.createStatement();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
				e.printStackTrace();
		}

	}

	// DB 연결 해제
	// 접속 끊는 메소드 (필요하지않으면 끊어줘야)
	public void disconnect() {
		try { // 이 연결해제시 나는 에러 얘가 책임지도록 try catch (쿼리만든사람 책임 아님)
				statement.close();
				conn.close();// 먼저쓰고
 		} catch (SQLException e) {
				e.printStackTrace(); // 에러나면 콘솔에찍히는 구문
		}
	}
	

	// CRUD  (R은 select 먼저. / 나머지 한메소드에서update delete)
	// R: read, select
	// 흐름 위주로만 파악. 예외처리 등은... 스프링이중요
	// 쿼리 수행기능 select
	public ResultSet select(String query) throws SQLException { // 이 쿼리가 수행돼 resultSet에 담기게 됨
		res = statement.executeQuery(query); // 얘는 try catch안묶고 쿼리 만든사람 책임
		return res;
	}

	
	// CUD: 쿼리 수행기능 insert, update, delete
	public void update(String query) throws SQLException { // 쿼리문 넘김 / 잘못되면 쿼리문제.. 위로 던져서 쿼리만든 사람 책임물게하기 throw (내가 책임 아니고 나를 부른 애 책임이니 try catch아님)
		statement.executeUpdate(query);
	}
}
