<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-------------------->
<!-- header Include -->
<!-------------------->
<jsp:include page="../../header.jsp"></jsp:include>

<!-------------------->
<!----- content ------>
<!-------------------->
<div id="contents" class="contents">
	<form id="#" method="post" action="#" enctype="multipart/form-data">
		<p>대표이미지</p>
		<div id="prdThumbBox">
			<div>
				<input id="prdAddFile" type="file" accept="image/*" name="file">
				<div id="fileNm">
					<c:if test="${not empty prgrView.fileOrgNm}">${prgrView.fileOrgNm}</c:if>
					<c:if test="${empty prgrView.fileNm}">대표이미지 등록해주세요</c:if>
				</div>
				<button type="button" id="btnDelThumb" style="display: none;">삭제</button>
			</div>
			<label for="prdAddFile">첨부</label>
		</div>
		
		<p>카테고리</p>
		<select id="category" >
			<option value="default">선택</option>
			<option value="vr">듀랑고VR</option>
			<option value="tent">텐트-타프</option>
			<option value="bed">침낭-매트</option>
			<option value="furniture">퍼니처</option>
			<option value="rt">라이팅</option>
			<option value="bbq">화로-BBQ</option>
			<option value="kitchen">키친</option>
			<option value="season">계절용품</option>
			<option value="storage">스토리지</option>
			<option value="rv">RV용품</option>
			<option value="acc">악세서리</option>
			<option value="mt">밀리터리</option>
		</select>
		
		<p>상품명</p>
		<input type="text" id="prdNm" name="prdNm" value="${prdView.prdNm}" placeholder="상품명을 입력해주세요">
		
		<p>브랜드명</p>
		<input type="text" id="brdNm" name="brdNm" value="${prdView.brdNm}" placeholder="브랜드명을 입력해주세요">
		
		<p>정상가</p>
		<input type="text" id="price" name="price" value="${prdView.price}" placeholder="정상가를 입력해주세요">
		
		<p>할인률</p>
		<input type="text" id="dc" name="dc" value="${prdView.dc}" placeholder="할인률을 입력해주세요">
		
		<p>행사가</p>
		<input type="text" id="sale" name="sale" value="" readonly>
		
		<p>이벤트</p>
		<select id="event" >
			<option value="default">선택</option>
			<option value="best">베스트</option>
			<option value="new">신상품</option>
			<option value="special">특가상품</option>
			<option value="pick">추천상품</option>
		</select>
		
	</form>
	
	<button type="button" id="prdSave" class="btn_bottom">등록하기</button>
	
</div>
<!-------------------->
<!-- footer Include -->
<!-------------------->
<jsp:include page="../../footer.jsp"></jsp:include>
</body>
</html>