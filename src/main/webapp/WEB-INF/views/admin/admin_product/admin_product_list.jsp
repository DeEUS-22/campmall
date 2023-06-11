<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품목록</title>
<link rel="stylesheet" href="http://localhost:9000/campmall/resources/css/admin.css">
<link rel="stylesheet"  href="http://localhost:9000/model2_cgv/resources/css/am-pagination.css">
<script src="http://localhost:9000/model2_cgv/resources/js/jquery-3.6.0.min.js"></script>
<script src="http://localhost:9000/model2_cgv/resources/js/am-pagination.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css">
</head>
<body>
<!-------------------->
<!-- header Include -->
<!-------------------->
<jsp:include page="../../header.jsp"></jsp:include>

<!-------------------->
<!----- content ------>
<!-------------------->
<div class="content">
	<h1>상품리스트</h1>
	<div>
		<a href="/campmall/admin_product_write.do">
			<button type="button" class="btn_style">상품등록</button>
		</a>
	</div>
	<table class="table table-hover table-bordered table-striped text-center">
		<!-- <tr>
			<td colspan="4">
				<a href="/campmall/admin_product_write.do">
				<button type="button" class="btn_style">상품등록</button>
				</a>
			</td>
		</tr> -->
		<tr>
			<th>번호</th>
			<th>카테고리</th>
			<th>상품명</th>
			<th>브랜드명</th>
			<th>정상가(원)</th>
			<th>할인률(%)</th>
			<th>행사가(원)</th>
			<th>등록날짜</th>
		</tr>
		<%-- <c:forEach var="vo"  items="${list}">
		<tr>
			<td>${vo.rno }</td>
			<td><a href="/campmall/admin_product_content.do?nid=${vo.nid }">${vo.ntitle }</a></td>
			<td>${vo.ndate }</td>
			<td>${vo.nhits }</td>
		</tr>
		</c:forEach> --%>
		<tr>
			<td>1</td>
			<td>캠핑장비</td>
			<td><a href="/campmall/admin_product_update.do">망치</a></td>
			<td>삼성</td>
			<td>20,000</td>
			<td>10</td>
			<td>18,000</td>
			<td>23/03/04</td>
		</tr>
		<!-- <tr>
			<td colspan="8"><div id="ampaginationsm"></div></td>
		</tr> -->
	</table>
	<div id="ampaginationsm"></div>
</div>
<!-------------------->
<!-- footer Include -->
<!-------------------->
<jsp:include page="../../footer.jsp"></jsp:include>
</body>
</html>