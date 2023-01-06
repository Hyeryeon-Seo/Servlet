<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <!-- 테이블 목록 한페이지로 (link_table) 만들기!  파라미터도 여기로 받고, 전체 첫페이지 목록도 -->
 <!--  원래 내가 푼 방식은 (test01) : table.jsp, 파라미터받는 link_table.jsp따로 만들기 (파라미터 null처리 x) -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>템플릿 Layout - Sk broadband IPTV</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	<!-- stylesheet 경로 정확히 폴더부터 쭉 잡아줘야 -->
	<link rel="stylesheet" href="/jspTemplate/test01_2/style.css" type="text/css">
</head>

<body> 
	<div class="container">
		<jsp:include page="header.jsp" />
		<jsp:include page="menu.jsp" />
		<section class="contents">
			<jsp:include page="link_table2.jsp" /> <!-- 동적방식 / 나는 table따로, 메뉴카테고리링크받는 link_table따로
			그런데 link_table 하나로 연결하면 작동하지 않는다. 파라미터 null의 경우가 설정되지 않아서? >null경우 ||or로 만들면 됨-->
		</section>
		<jsp:include page="footer.jsp" />
	</div>
</body>
</html>
<!-- 정적방식은 < % @ include file="table.jsp" % > 
 < jsp:include page="table.jsp" / > 안됐다가 서버 다시껐다키니 됨!-->
			
<!-- header, menu(nav), section안 table, footer 정적방식으로 불러와서 템플릿 구성 
		첫화면뜨는 테이블내용은 table.jsp에서,  (nav)main-menu 카테고리 링크(a태그)는 link_table.jsp로 파라미터통해 연결
		같은 table.jsp에서 해버리면 parameter가 없을 경우 에러나서..-->