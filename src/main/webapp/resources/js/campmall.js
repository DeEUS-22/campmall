$(document).ready(function(){

	/*********************
		로그인폼 체크 함수
	**********************/
	$("#btnLogin").click(()=>{
		if($("#email").val() == ""){
			alert("이메일 주소를 정확하게 입력해주세요.");
			$("#email").focus();
			return false;
		}else if($("#pwd").val() == ""){
			alert("영문, 숫자, 특수문자를 조합해서 입력해주세요. (8-16자)");
			$("#pwd").focus();
			return false;
		}else{
			//서버전송
			loginForm.submit();
		}
	});
	
	/*********************
		회원가입 폼 유효성 체크
	**********************/
	$("#btnJoin").click(function(){		
		if($("#email").val() == ""){
			alert("이메일을 입력해주세요");
			$("#email").focus();
			return false;
		}else if($("#pwd").val() == ""){
			alert("패스워드를 입력해주세요");
			$("#pwd").focus();
			return false;
		}else if($("postcode").val() == ""){
			alert("우편번호를 입력해주세요.");
			$("#postcode").focus();
			return false;
		}else if($("#address").val() == ""){
			alert("주소를 입력해주세요");
			$("#address").focus();
			return false;
		}else if($("#detailAddress").val() == ""){
			alert("상세주소를 입력해주세요");
			$("#detailAddress").focus();
			return false;
		}else if($("#phone").val() == ""){
			alert("휴대번호를 입력해주세요");
			$("#phone").focus();
			return false;
		}else if($("#name").val() == ""){
			alert("성명을 입력해주세요");
			$("#name").focus();
			return false;
		}else if($("input[name='condition']:checked").length == 0){
			alert("이용약관에 동의해주세요");
			return false;
		}else if($("input[name='agreement']:checked").length == 0){
			alert("개인정보 수집 및 이용에 동의해주세요");
			return false;
		}else{
			//서버전송
			joinForm.submit();
		}
	}); //click()-end
	
}); 