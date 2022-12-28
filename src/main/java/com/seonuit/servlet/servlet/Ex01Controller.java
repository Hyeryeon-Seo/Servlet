package com.seonuit.servlet.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Ex01Controller extends HttpServlet {
// 서버에서 스타트 하고 서버 키기!
	// 한번 하면 그 이후엔 내용 바뀌어도 저장하고 사이트 다시 키면 (근데 꼭 껏다켜야 됨) 되는듯 (서버스타트안해도?)
	// 오 근데 저장만해도 console에서 '다시 로드 완료' 뜨면 그냥 된거임. 사이트 새로고침하면 되는듯
	// 근데 html도 리스타트 해줘야하는듯..
	// 만약 request.getParameter 파라미터 이름 바꿨으면..저장해도 바로 안바뀜 ㅠ 다시 그 메소드ㅡ 입력해서 수정해야하는듯 (controller에서)

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {

		// 문자 인코딩 설정 _내가만든결과물의 인코딩이 뭐다 알려주는 것
		response.setCharacterEncoding("utf-8");
		// 컨텐츠 타입 MIME(표준)에 의해 타입이 정해져있다_ 내가 만든결과물 타입 설정
		response.setContentType("text/plain"); // text/plain 순수 글자라는 뜻

		// 위는 텍스트헤더..

		PrintWriter out = response.getWriter(); // response문자열 만들어주는 거 쉽게채울수있게 respnse안의 getWriter메소드로
		// 위는 그냥 톰캣에서 정해진거

		// 날짜 객체
		// 이게 리스폰스 안의 텍스트 내용 .. 날짜..
		Date now = new Date(); // now객체에 현재시간 저장됨 (date.util?)
		// ctrl  + shift + o  눌러서 임포트 가능
		out.println(now); // out이라는 객체에

		// 날짜 포메팅 -- 또다른 객체 만들어줘야
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss"); // yyyy 다 써줘야(datepicker와다르게 html)
		// 월은 대문자 M , 분이 m ,  hh시는 12시간표현법, HH시는 24시간표현법
		// 12월이면MM이든 M이든 12월로 뜸.  그런데 한자리수, 5월이면 MM하면 05월이 됨
		String dateString = formatter.format(now); // 위의 형태로 dateString에 저장된다

		out.println(dateString);

		// 코드 수정하고 적용안되면 서버 껐다 켜보기. 그게 아니면 잘못된거

	}

}
