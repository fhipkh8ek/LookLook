package com.edu.look.pojo;

public class Evaluate {

	String cid;
	String sid;
	String econtent;
	String etime;
	
	String sname;

	public String getCid() {
		return cid;
	}

	public void setCid(String cid) {
		this.cid = cid;
	}

	public String getSid() {
		return sid;
	}

	public void setSid(String sid) {
		this.sid = sid;
	}

	public String getEcontent() {
		return econtent;
	}

	public void setEcontent(String econtent) {
		this.econtent = econtent;
	}

	public String getEtime() {
		return etime;
	}

	public void setEtime(String etime) {
		this.etime = etime;
	}

	public String getSname() {
		return sname;
	}

	public void setSname(String sname) {
		this.sname = sname;
	}

	@Override
	public String toString() {
		return "Evaluate [cid=" + cid + ", sid=" + sid + ", econtent=" + econtent + ", etime=" + etime + ", sname="
				+ sname + "]";
	}
	
	
}
