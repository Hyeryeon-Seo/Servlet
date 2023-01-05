<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>곡 정보</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

	<link rel="stylesheet" href="/jspTemplate/test02/style.css" type="text/css">
</head>
<body>

	<!-- 이건 include 아니고 링크 연결 (파라미터) -->
		<%
// 아티스트 정보 

    Map<String, Object> artistInfo = new HashMap<>();
    artistInfo.put("name", "아이유");
    artistInfo.put("debute", 2008);
    artistInfo.put("agency", "EDAM엔터테인먼트");
    artistInfo.put("photo", "http://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/081/867/444/81867444_1616662460652_1_600x600.JPG");


// 아이유 노래 리스트 
    List<Map<String, Object>> musicList = new ArrayList<>();

    Map<String, Object> musicInfo = new HashMap<>();
    musicInfo.put("id", 1);
    musicInfo.put("title", "팔레트");
    musicInfo.put("album", "Palette");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/b/b6/IU_Palette_final.jpg");
    musicInfo.put("time", 217);
    musicInfo.put("composer", "아이유");
    musicInfo.put("lyricist", "아이유");
    musicList.add(musicInfo);

    musicInfo = new HashMap<>();
    musicInfo.put("id", 2);
    musicInfo.put("title", "좋은날");
    musicInfo.put("album", "Real");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/3/3c/IU_-_Real.jpg");
    musicInfo.put("time", 233);
    musicInfo.put("composer", "이민수");
    musicInfo.put("lyricist", "김이나");
    musicList.add(musicInfo);

    musicInfo = new HashMap<>();
    musicInfo.put("id", 3);
    musicInfo.put("title", "밤편지");
    musicInfo.put("album", "palette");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/b/b6/IU_Palette_final.jpg");
    musicInfo.put("time", 253);
    musicInfo.put("composer", "제휘,김희원");
    musicInfo.put("lyricist", "아이유");
    musicList.add(musicInfo);

    musicInfo = new HashMap<>();
    musicInfo.put("id", 4);
    musicInfo.put("title", "삐삐");
    musicInfo.put("album", "삐삐");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/081/111/535/81111535_1539157728291_1_600x600.JPG");
    musicInfo.put("time", 194);
    musicInfo.put("composer", "이종훈");
    musicInfo.put("lyricist", "아이유");
    musicList.add(musicInfo);

    musicInfo = new HashMap<>();
    musicInfo.put("id", 5);
    musicInfo.put("title", "스물셋");
    musicInfo.put("album", "CHAT-SHIRE");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/080/724/877/80724877_1445520704274_1_600x600.JPG");
    musicInfo.put("time", 194);
    musicInfo.put("composer", "아이유,이종훈,이채규");
    musicInfo.put("lyricist", "아이유");
    musicList.add(musicInfo);

    musicInfo = new HashMap<>();
    musicInfo.put("id", 6);
    musicInfo.put("title", "Blueming");
    musicInfo.put("album", "Love poem");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/6/65/%EC%95%84%EC%9D%B4%EC%9C%A0_-_Love_poem.jpg");
    musicInfo.put("time", 217);
    musicInfo.put("composer", "아이유,이종훈,이채규");
    musicInfo.put("lyricist", "아이유");
    musicList.add(musicInfo);
    
   String idString = request.getParameter("id"); //문자열 리턴
     // 여러 데이터 중 딱 하ㅏ나 지칭할 값이라면, 제목(겹칠수도있다)보다는 id가 좋다 (책목록만들기 문제에서 했듯이)
     //파라미터 없는데 integer바꾸면 에러남 그래서 아래 if조건
     Integer id = null; // if문밖에서 만들어야  ,인티저 레퍼클래스 객체기때문에 저장할거없으면 null
	//int id 랑 다름
     if(idString != null) {
 	 	id = Integer.parseInt(idString);  
     }

     String title = request.getParameter("title");
    
%>
	<div class="container">
		<jsp:include page="header.jsp" />
		<jsp:include page="menu.jsp" />
	<!-- include하기 header, nav -->
		<section class="contents mt-3">
			<article class="song-info">
				<h2>곡 정보</h2>
	<%	for(Map<String, Object> music:musicList) { 
		//(다형성) map의 value 원래캐스팅으로 다운캐스트해줘야. 업캐스팅되어있어
		// 그런데 object .. string문자열로 따로 바꿔줄 필요 없다 그냥 get하면 문자열로 불러옴
			Integer musicId = (Integer)music.get("id"); //정수로 바꿔주기 (숫자니까 downcasting)
			// 아이디기가 null이 아니면, 아이디가 일치하는 결과
			// 타이틀이 null이 아니면, 타이틀이 일치하는 결과
			// 또는'  으로 묶는다
			if((id != null && id.equals(musicId)) 
					|| title != null && title.equals(music.get("title"))) {
				// 크게 ()  도 || 기준으로 묶어주기
				
			}
			if(musicId.equals(id))   { 
				int second = (Integer)music.get("time");  //int로 바꿔주기
				int minute = second / 60;
				second = second % 60; // 나머지 %
				// 나
				//int timeInt = Integer.parseInt(toString(music.get("time"))); 
				// >> toString하는거 아님
				//	int minute = Int(timeInt/60); 
				//	int second = timeInt - 60*minute;
			 	//  <div>< %= minute % > : < %= second % ></div>
				%>
				<div class="song-info d-flex border border-success p-3 mt-3">
					<div class="image col-3">
						<img alt="<%= music.get("title") %>_img" width="200" src="<%= music.get("thumbnail") %>">
					</div>
					<div class="info col-9 mt-2"> 
					<!-- sample에서 만들어둔 section파트 써먹기 , div로 구역많이나눠주면 좋다-->
					<!-- <div>
						<div>앨범</div>
						<div>< %= music.get("album")%></div>
						</div>   근데 이렇게 너무!!  div나누진말자..ㅠㅠ -->
						<div class="display-4"><%= music.get("title") %> </div>
						<div class="text-success font-weight-bold mt-2"><%= music.get("singer") %></div>
						<div class="small mt-3">
							<div>앨범 &nbsp;&nbsp; <%= music.get("album")%></div>
							<div>재생시간 &nbsp;<%= minute %> : <%= second %></div>
							<div>작곡가 &nbsp;<%= music.get("composer")%></div>
							<div>작사가  &nbsp;<%= music.get("lyricist")%></div>
					</div>
				</div>
			</article>
			<aside class="lyrics mt-5">
				<h3>가사</h3>
				<hr>
				<div>가사 정보 없음</div>
			</aside>
		</section>
	<%  	}
		}  %>
		<jsp:include page="footer.jsp" />
	</div>
	
	
	
</body>
</html>