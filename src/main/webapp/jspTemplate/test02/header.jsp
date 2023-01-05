<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
		<header class="d-flex">
			<div class="logo col-2 d-flex align-items-center">
				<h1 class="text-success">Melong</h1>
			</div>
			<form method="get" action="/jspTemplate/test02/song_info.jsp>">
			<!-- 파라미터, title(검색하면)로 보낸다  -->
				<div class="search col-10 d-flex align-items-center">	
					<div class="input-group col-6"> <!-- col로도 넓이 잡힘 -->
						<input type="text" class="form-control ml-5" >
					<div class="input-group-append">
						<button type="submit" name="title" class="btn btn-info">검색</button> 
					</div>
					</div>
				</div>
			</form>
				
			<!-- width로 안됨 -->
			<!-- input text와 button붙어있는 형태 - input group (다 기억하진못해도 키워드만기억했다가 검색해서쓰기) -->
			
			<!-- 검색기능 추가! header의 검색창에서.. -->
		</header>