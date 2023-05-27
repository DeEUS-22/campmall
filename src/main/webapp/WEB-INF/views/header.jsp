<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>header</title>
<link rel="stylesheet"  href="http://localhost:9000/campmall/resources/css/header.css">
</head>
<body>
	<header>
		<div class="top_menu">
			<div class="top_menu_inner clearfix">
				<ul>
					<%
					if (session.getAttribute("email") == null) {
					%>
					<li><a href="http://localhost:9000/campmall/notice/qna.jsp">고객센터</a></li>
					<li><a href="http://localhost:9000/campmall/baskert/baskert.jsp">장바구니</a></li>
					<li><a href="http://localhost:9000/campmall/login/login.do">로그인</a></li>
					<%
					} else {
					%>
					<li><a href="http://localhost:9000/campmall/notice/qna.jsp">고객센터</a></li>
					<li><a href="http://localhost:9000/campmall/baskert/baskert.jsp">장바구니</a></li>
					<li><a href="#">마이페이지</a></li>
				    <li><a href="http://localhost:9000/campmall/login/logout.jsp" >로그아웃</li>
					
					<%
					}
					%>

				</ul>
			</div>
		</div>
		<div class="middle_menu">
			<div class="middle_menu_inner">
				<h1>
					<a href="http://localhost:9000/campmall/index.jsp">CAMPMALL</a>
				</h1>
				<ul>
					<li><a href="#"><strong>NOTICE</strong></a></li>
					<li><a href="#">EVENT</a></li>
					<li><a href="#">REVIEW</a></li>
					<li><a href="#">SEARCH</a></li>
				</ul>
			</div>
		</div>
		<div class="bottom_menu">
			<div class="bottom_menu_inner">
				<ul class="clearfix">
					<li><a href="#"> <strong>베스트</strong>
					</a></li>
					<li><a href="#">신상품</a></li>
					<li><a href="#">특가상품</a></li>
					<li><a href="#">추천상품</a></li>
				</ul>
			</div>
		</div>
		<div class="notice">
			<div class="notice_inner">
				<a href="#">공지사항입니다.</a>
			</div>
		</div>
	</header>
</body>
</html>