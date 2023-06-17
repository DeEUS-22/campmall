package com.campmall.vo;

public class SessionVO {

	int loginresult;
	String email, pwd, mid;
	public String getMid() {
		return mid;
	}
	public void setMid(String mid) {
		this.mid = mid;
	}
	public int getLoginresult() {
		return loginresult;
	}
	public void setLoginresult(int loginresult) {
		this.loginresult = loginresult;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
}
