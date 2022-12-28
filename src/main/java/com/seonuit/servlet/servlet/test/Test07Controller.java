package com.seonuit.servlet.servlet.test;
//8번  "<b>맛집</b>"이렇게 되어야
// 이런페이지는 뜨게하려면 parameter필요. localhost:8080/servlet/test07/address=서울시 강남구&card=궁민카드&price=1200  이런식으로 이게 사용법
//404 주소잘못
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test07")
public class Test07Controller extends HttpServlet {

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {

		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");

		PrintWriter out = response.getWriter();

		String address = request.getParameter("address");
		String card = request.getParameter("card");
		String priceString = request.getParameter("price");

		int price = Integer.parseInt(priceString);  // t: 여기서 int로 안바꿔줘도 됨!! 계산할거아니고 그냥 price뜨게하면되니까

		out.println("<html> <head><title>주문 결제</title></head>");
		out.println("<body>");
		
		if (!address.contains("서울시")) { // ! 앞에 써서 부정, 잘 기억 / .contains(" ")해서 그 변수에 " " 내용 포함되는지
			out.println("<h2>배달 불가 지역입니다.</h2>");
			// 쌤: 위에거 먼저 처리하고 넘어가면 되니까 (한꺼번에 하기보단 여기선) else if
			// t: 자바스크립트에서 == 사용 .. 이제 자바는 .equals 헷갈리지말기 문자열비교
		} else if (card.equals("신한카드")) { // 변수 일치 비교할때.. .equals와 잘 구분!- equals("") 는 ""내용같은지 / == 은 변수이름쓸때 가 아니라!!! ..equals도 ()안에 변수이름 씀
			// ==는 object동일 체크 라고..?
			out.println("<h2>결제 불가 카드입니다.</h2>");
		} else {  // 그외에ㄴ 다정상
			out.println("<h2>" + address + "(으)로 배달 준비중</h2> ");
			out.println("<hr> 결제금액 : " + price + "원");
		}
		
		out.println("</body></html>");

	}
}
