<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>header</title>
<!-- <link rel="stylesheet"  href="http://localhost:9000/campmall/resources/css/header.css"> -->
</head>
<body>
<!---------------------------------------------->
<!--------------- header ----------------------->
<!---------------------------------------------->
<header>
	<div></div>
	<div class="header_contents1">
		<ul>
			<c:choose>	
				<c:when test="${sessionScope.svo == null}">	
					<li><a href="http://localhost:9000/campmall/notice/qna.do">고객센터</a></li>
					<li><a href="http://localhost:9000/campmall/baskert/baskert.do">장바구니</a></li>
					<li><a href="http://localhost:9000/campmall/login/login.do">로그인</a></li>
				</c:when>
				<c:otherwise>
					<li><a href="http://localhost:9000/campmall/notice/qna.do">고객센터</a></li>
					<li><a href="http://localhost:9000/campmall/baskert/baskert.do">장바구니</a></li>
					<li><a href="#">마이페이지</a></li>
				    <li><a href="http://localhost:9000/campmall/login/logout.do" >로그아웃</li>
				</c:otherwise>
			</c:choose>
		</ul>
	</div>
	<div class="header_contents2">
		<div class="middle_menu_inner">
			<h1>
				<a href="http://localhost:9000/campmall/index.do">CAMPMALL</a>
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