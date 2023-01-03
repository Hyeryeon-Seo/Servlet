<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>기사</title>
</head>
<body>
	<h1>[속보] 오늘밤 날씨 추워</h1>
<<<<<<< HEAD
	<%-- 정적방식 (<%@ include file= ...) 내용 그대로 가져온다 --%>
=======
	<%-- 정적방식 (<%@ include file= ...ㄴ) 내용 그대로 가져온다 --%>
>>>>>>> f376337 ([서혜련])
	<div>기사 전송시간 : <%@ include file="date.jsp" %></div>
	<!-- (너무기니까 따로 만들고) 아까 만든걸 활용, 폴더같으니까 폴더이름등 따로 쓸 필요없는데 다르면 경로 더 써줘야 -->

	<%= dateString %>
<<<<<<< HEAD
	<!-- 그대로 가져와서 date.jsp안의 걸 그대로 쓸 수 있다 위처럼 -->
=======
	<!-- 그대로 가져와서 date.jsp안의 걸 그대로 쓸 수 있다 위처럼 
	그러나 새롭게 dateString 변수 등 여기서 만들면 오류가 난다. 코드 겹쳐서?.. (정적이 효율적일때도있으나)
	그래서 유지보수에는 안정적인 코드.. 만드려면 독립적인 코드가 나아서, 
	실제로는 (html방식만 가져오는?) 동적방식이 더 많이 쓰인다. -->
>>>>>>> f376337 ([서혜련])
	<hr>
	<div>(끝)</div>

</body>
</html>