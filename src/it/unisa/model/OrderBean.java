package it.unisa.model;

import java.io.Serializable;

public class OrderBean implements Serializable {

	private static final long serialVersionUID = 1L;
	
	int code;
	int userid;
	String data;
	int total;
	String paymethod;

	public OrderBean() {
		code = -1;
		userid = -1;
		data = "";
		total = -1;
		paymethod = "";
	}
	
	public int getCode() {
		return code;
	}

	public void setCode(int code) {
		this.code = code;
	}

	public int getUserid() {
		return userid;
	}

	public void setUserid(int userid) {
		this.userid = userid;
	}

	public String getData() {
		return data;
	}

	public void setData(String data) {
		this.data = data;
	}

	public int getTotal() {
		return total;
	}

	public void setTotal(int total) {
		this.total = total;
	}

	public String getPaymethod() {
		return paymethod;
	}

	public void setPaymethod(String paymethod) {
		this.paymethod = paymethod;
	}

	@Override
	public String toString() {
		return "OrderBean [code=" + code + ", userid=" + userid + ", data=" + data + ", total=" + total + ", paymethod="
				+ paymethod + "]";
	}
}
