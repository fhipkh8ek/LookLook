package com.edu.look.pojo;

public class Comment {

	String comid;
	String tid;
	String sid;
	String comment;
	String comtime;
	String com1;
	String comgood;
	String com2;
	
	String sname;
	String sphoto;

	public String getComid() {
		return comid;
	}

	public void setComid(String comid) {
		this.comid = comid;
	}

	public String getTid() {
		return tid;
	}

	public void setTid(String tid) {
		this.tid = tid;
	}

	public String getSid() {
		return sid;
	}

	public void setSid(String sid) {
		this.sid = sid;
	}

	public String getComment() {
		return comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}

	public String getComtime() {
		return comtime;
	}

	public void setComtime(String comtime) {
		this.comtime = comtime;
	}

	public String getCom1() {
		return com1;
	}

	public void setCom1(String com1) {
		this.com1 = com1;
	}

	public String getComgood() {
		return comgood;
	}

	public void setComgood(String comgood) {
		this.comgood = comgood;
	}

	public String getCom2() {
		return com2;
	}

	public void setCom2(String com2) {
		this.com2 = com2;
	}

	public String getSname() {
		return sname;
	}

	public void setSname(String sname) {
		this.sname = sname;
	}
	
	

	public String getSphoto() {
		return sphoto;
	}

	public void setSphoto(String sphoto) {
		this.sphoto = sphoto;
	}

	@Override
	public String toString() {
		return "Comment [comid=" + comid + ", tid=" + tid + ", sid=" + sid + ", comment=" + comment + ", comtime="
				+ comtime + ", com1=" + com1 + ", comgood=" + comgood + ", com2=" + com2 + ", sname=" + sname
				+ ", sphoto=" + sphoto + "]";
	}

	
	
	
}
