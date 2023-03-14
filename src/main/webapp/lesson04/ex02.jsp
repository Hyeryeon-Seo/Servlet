<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사용자 추가</title>
</head>
<body>
	<%-- 
		1) 유저 추가: ex02.jsp -> InsertEx02.java (서블릿)  _얘가 insert처리  -> Redirect -> ex02_1.jsp(유저목록)
	 --%>
	 
	 <%-- 폼태그 작성 _ insert시 무조건 post방식 (사용자정보 노출안되게. 혹은 너무 길경우에_
	 dkfo 네임  db의칼럼이름과 똑같게--%>
	 <form method="post"  action="/lesson04/insert_ex02">
	 	<p>
	 		<b>이름</b>
	 		<input type="text" name="name"> 
	 	</p>
	 	<p>
	 		<b>생년월일</b>
	 		<input type="text" name="yyyymmdd"> 
	 	</p>	 	
	 	<p>
	 		<b>이메일</b>
	 		<input type="text" name="email"> 
	 	</p>	 	
	 	<p>
	 		<b>자기소개</b><br> <%--길수있으니 br해주고 / 아래 rows는 글자갯수처럼 보고--%>
	 		<textarea row="5" cols="50" name="introduce"></textarea>
	 	</p>
	 	<p>
	 		<input type="submit" value="회원추가">
	 	</p>
	 	
	 	
	 	
	 	
	 	
	 </form>
	 
	 
	 
</body>
</html>