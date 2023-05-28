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
	
}); 