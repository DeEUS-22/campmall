<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login</title>
<link rel="stylesheet"  href="http://localhost:9000/campmall/resources/css/login.css">
<script src="http://localhost:9000/campmall/resources/js/jquery-3.6.0.min.js"></script>
<script src="http://localhost:9000/campmall/resources/js/campmall.js"></script>
<script>
	let join_result = '${join_result}';
	let login_result = '${login_result}';

	if(login_result == 'fail'){
		alert("아이디 또는 패스워드가 다릅니다. 다시 로그인해주세요");	
	}
	
	if(join_result == 'ok'){
		alert("회원가입에 성공하셨습니다.");
	}
	
</script>
</head>
<body>
<!-------------------->
<!-- header Include -->
<!-------------------->
<iframe src="header.do" width="100%" height="160px" scrolling="no" frameborder=0 ></iframe>

<!-------------------->
<!----- content ------>
<!-------------------->
<div class="container">
	<section class="login">
		<div class="login_inner">
			<h2>LOGIN</h2>
			<form name="loginForm" action="loginCheck.do" method="post">
				<h1>로그인</h1>
				<div class="input_box">
					<p class="title">
						<strong>이메일 주소</strong>
					</p>
					<input type="email" name="email" id="email" class="input_email" placeholder="예) camp@campmall.com">
				</div>
				<div class="input_box">
					<p class="title">
						<strong>비밀번호</strong>
					</p>
					<input type="password" name="pwd" id="pwd" class="input_password">
				</div>
				<button type="button" id="btnLogin" class="submit_login">로그인</button>
				<button type="reset">다시쓰기</button>
				<ul>
					<li><a href="http://localhost:9000/campmall/signup/register.jsp">이메일 가입</a></li>
					<li><a href="http://localhost:9000/campmall/login/find_email.jsp">이메일 찾기</a></li>
					<li><a href="http://localhost:9000/campmall/login/find_pwd.jsp">비밀번호 찾기</a></li>
				</ul>
			</form>
		</div>
	</section>
</div>
<!-------------------->
<!-- footer Include -->
<!-------------------->
<iframe src="footer.do" width="100%" height="160px" scrolling="no" frameborder=0 ></iframe>
</body>
</html>