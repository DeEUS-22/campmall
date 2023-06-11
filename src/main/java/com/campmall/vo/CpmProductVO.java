package com.campmall.vo;

public class CpmProductVO {
	int pid, price, dc, sale, stock;
	String category, prdnm, brdnm;
 int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getDc() {
		return dc;
	}
	public void setDc(int dc) {
		this.dc = dc;
	}
	public int getSale() {
		return sale;
	}
	public void setSale(int sale) {
		this.sale = sale;
	}
	public int getStock() {
		return stock;
	}
	public void setStock(int stock) {
		this.stock = stock;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getPrdnm() {
		return prdnm;
	}
	public void setPrdnm(String prdnm) {
		this.prdnm = prdnm;
	}
	public String getBrdnm() {
		return brdnm;
	}
	public void setBrdnm(String brdnm) {
		this.brdnm = brdnm;
	}
}
