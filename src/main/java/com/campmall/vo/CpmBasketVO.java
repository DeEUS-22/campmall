package com.campmall.vo;

public class CpmBasketVO {
	
	int rno;
	String bid, bbrdNm, bprdNm, bprice, bdate, bnote, mid;
	
	public String getBnote() {
		return bnote;
	}
	public void setBnote(String bnote) {
		this.bnote = bnote;
	}
	public String getMid() {
		return mid;
	}
	public void setMid(String mid) {
		this.mid = mid;
	}
	public int getRno() {
		return rno;
	}
	public void setRno(int rno) {
		this.rno = rno;
	}
	public String getBid() {
		return bid;
	}
	public void setBid(String bid) {
		this.bid = bid;
	}
	public String getBbrdNm() {
		return bbrdNm;
	}
	public void setBbrdNm(String bbrdNm) {
		this.bbrdNm = bbrdNm;
	}
	public String getBprdNm() {
		return bprdNm;
	}
	public void setBprdNm(String bprdNm) {
		this.bprdNm = bprdNm;
	}
	public String getBprice() {
		return bprice;
	}
	public void setBprice(String bprice) {
		this.bprice = bprice;
	}
	public String getBdate() {
		return bdate;
	}
	public void setBdate(String bdate) {
		this.bdate = bdate;
	}
}
