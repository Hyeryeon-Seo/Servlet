<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
		<nav class="main-menu bg-danger">
			<ul class="nav nav-fill pt-1"> <!-- d-flex text-align-center나, style.css통해 (nav-item) text-align:center해도 세로(vertical)가운데 정렬 적용 x -->
				<li class="nav-item"><a href="/jspTemplate/test01_2/test01_2.jsp" class="nav-link text-white">전체</a></li>
				<!-- 근데 그냥 test01_2 첫페이지 연결하면, link_table2(파라미터받는)가 동적방식 연결되어있어서 그 안에서 파라미터null경우 무조건 설정해줘야 -->
				<li class="nav-item"><a href="/jspTemplate/test01_2/link_table2.jsp?category=지상파" class="nav-link text-white">지상파</a></li>
				<li class="nav-item"><a href="/jspTemplate/test01_2/link_table2.jsp?category=드라마" class="nav-link text-white">드라마</a></li>
				<li class="nav-item"><a href="/jspTemplate/test01_2/link_table2.jsp?category=예능" class="nav-link text-white">예능</a></li>
				<li class="nav-item"><a href="/jspTemplate/test01_2/link_table2.jsp?category=영화" class="nav-link text-white">영화</a></li>
				<li class="nav-item"><a href="/jspTemplate/test01_2/link_table2.jsp?category=스포츠" class="nav-link text-white">스포츠</a></li>
			</ul> <!-- 여기서 파라미터category받으면 (메뉴 링크 눌러서) link_table.jsp 로 전달받아 연결-->
		</nav>