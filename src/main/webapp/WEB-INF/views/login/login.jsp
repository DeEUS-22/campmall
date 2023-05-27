<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login</title>
<link rel="stylesheet"  href="http://localhost:9000/campmall/resources/css/login.css">
</head>
<body>
<!-------------------->
<!-- header Include -->
<!-------------------->
<iframe src="header.do" width="100%" height="160px" scrolling="no" frameborder=0 ></iframe>

<!-------------------->
<!----- content ------>
<!-------------------->
<div class="arrow">
	<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-caret-up-fill arrow-up" viewBox="0 0 16 16">
		<path d="m7.247 4.86-4.796 5.481c-.566.647-.106 1.659.753 1.659h9.592a1 1 0 0 0 .753-1.659l-4.796-5.48a1 1 0 0 0-1.506 0z" />
	</svg>
	<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-caret-down-fill arrow-down" viewBox="0 0 16 16">
		<path d="M7.247 11.14 2.451 5.658C1.885 5.013 2.345 4 3.204 4h9.592a1 1 0 0 1 .753 1.659l-4.796 5.48a1 1 0 0 1-1.506 0z" />
	</svg>
</div>
<div class="container">
	<section class="login">
		<div class="login_inner">
			<h2>LOGIN</h2>
			<form action="${contextPath}/login" name="frmlogin" method="post">
				<fieldset>
					<legend>로그인 폼</legend>
					<div class="input_box">
						<p class="title">
							<strong>이메일 주소</strong>
						</p>
						<input type="email" class="input_email"
							placeholder="예) camp@campmall.com" name="email" required>
						<p class="warning_email">이메일 주소를 정확하게 입력해주세요.</p>
					</div>
					<div class="input_box">
						<p class="title">
							<strong>비밀번호</strong>
						</p>
						<input type="password" class="input_password" autocomplete="on"
							name="pwd" required>
						<p class="warning_password">영문, 숫자, 특수문자를 조합해서 입력해주세요. (8-16자)</p>
					</div>
					<input type="submit" value="로그인" class="submit_login">
					<ul>
						<li><a href="${contextPath}/signup/register.jsp">이메일 가입</a></li>
						<li><a href="${contextPath}/login/find_email.jsp">이메일 찾기</a></li>
						<li><a href="${contextPath}/login/find_pwd.jsp">비밀번호 찾기</a></li>
					</ul>
				</fieldset>
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