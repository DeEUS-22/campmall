<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 수정</title>
<link rel="stylesheet" href="http://localhost:9000/campmall/resources/css/admin.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css">
<script src="http://localhost:9000/campmall/resources/js/jquery-3.6.0.min.js"></script>
<script src="http://localhost:9000/campmall/resources/js/campmall.js"></script>
<style>
	#upload_file {
		/*border:1px solid red;*/
		position:relative;
		left:89px; top:-30px;
		width:1020px;  height:32px;
		display:inline-block;	
		background-color:white;	
		font-size: 1rem;
		font-weight: 400;
		padding-left:13px;
		padding-top: 2px;
		border-radius: 0.25rem;
		border:1px solid #ced4da;
	}
</style>
</head>
<body>
<!-------------------->
<!-- header Include -->
<!-------------------->
<jsp:include page="../../header.jsp"></jsp:include>

<!-------------------->
<!----- content ------>
<!-------------------->
<section class="bg-light">
	<div id="contents" class="container py-4">
		<form id="prdUpdateForm" method="post" action="prdUpdate.do" enctype="multipart/form-data">
			<input type="hidden" name="pid"  value="${vo.pid}" >
			<input type="hidden" name="pfile"  value="${vo.pfile}" >
			<input type="hidden" name="psfile"  value="${vo.psfile}" >
			<div class="form-group">
				<span class="text-dark h4">상품 상세설명</span>
			</div>
			
			<div class="form-group">
				<p>대표이미지</p>
				<input type="file" name="file1">
				<span id="upload_file">${vo.pfile }</span>
			</div>
			
			<div class="form-group">
				<label calss="form-label mt-4">카테고리</label>
				<select id="category" name="category" class="form-control">
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
			</div>
			
			<div class="form-group">
				<label for="prdNm" class="form-label mt-4">상품명</label>
				<input type="text" id="prdNm" name="prdNm" class="form-control" value="${vo.prdNm }" placeholder="상품명을 입력해주세요">
			</div>
			<div class="form-group">
				<label for="brdNm" class="form-label mt-4">브랜드명</label>
				<input type="text" id="brdNm" name="brdNm" class="form-control" value="${vo.brdNm }" placeholder="브랜드명을 입력해주세요">
			</div>
			<div class="form-group">
				<label for="price" class="form-label mt-4">정상가(원)</label>
				<input type="number" id="price" step="500" name="price" class="form-control" value="${vo.price }" placeholder="정상가를 입력해주세요">
			</div>
			<div class="form-group">
				<label for="dc" class="form-label mt-4">할인률(%)</label>
				<input type="number" id="dc" name="dc" class="form-control" value="${vo.dc }" placeholder="할인률을 입력해주세요">
			</div>
			<div class="form-group">
				<label for="sale" class="form-label mt-4">판매가(원)</label>
				<input type="number" id="sale" name="sale" class="form-control" value="${vo.sale }" value="" readonly>
			</div>
			<div class="form-group">
				<label for="stock" class="form-label mt-4">재고</label>
				<input type="number" id="stock" name="stock" class="form-control" value="${vo.stock }" placeholder="재고를 입력해주세요">
			</div>
			<div class="form-group">
				<label class="form-label mt-4">분류</label>
				<div class="form-check">
					<input type="radio" name="event" id="best" value="best" class="form-check-input"><label for="best" class="form-check-label" style="margin-right:25px;">베스트</label>
					<input type="radio" name="event" id="new" value="newProduct" class="form-check-input" checked><label for="new" class="form-check-label" style="margin-right:25px;">신상품</label>
					<input type="radio" name="event" id="special" value="special" class="form-check-input"><label for="special" class="form-check-label" style="margin-right:25px;">특가상품</label>
					<input type="radio" name="event" id="pick" value="pick" class="form-check-input"><label for="pick" class="form-check-label" style="margin-right:25px;">추천상품</label>
				</div>
			</div>
		</form>
			<div class="d-grid gap-2">
				<button type="submit" id="prdUpdate" class="btn btn-primary btn-lg">수정하기</button>
				<a href="/campmall/admin_product_delete.do?pid=${vo.pid }"><button type="button" class="btn btn-primary btn-lg">삭제하기</button></a>
				<a href="/campmall/admin_product_list.do"><button type="button" class="btn btn-primary btn-lg">목록보기</button></a>
			</div>
	</div>
</section>
<!-------------------->
<!-- footer Include -->
<!-------------------->
<jsp:include page="../../footer.jsp"></jsp:include>
</body>
<script>
  $(document).ready(function() {
    var categoryValue = "${vo.category}"; // JSP에서 전달된 기존 카테고리 값
  
    $("#category").val(categoryValue); // 카테고리 값을 선택
    
  	//새로운 파일선택하는 이벤트 
	$("input[type=file]").change(function(){
		if(window.FileReader){
			let fname = $(this)[0].files[0].name;
			$("#upload_file").text(fname);
		}
	});
    
  });
</script>

</html>