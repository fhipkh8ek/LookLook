package com.edu.look.pojo;

public class Topic {

	String tid;
	String tname;
	String sid;
	String ttype;
	String tlook;
	String tgood;
	String ttime;
	String tcontent;
	String comid;
	String t1;
	String t2;
	String tphoto;
	
	String sname;

	public String getTid() {
		return tid;
	}

	public void setTid(String tid) {
		this.tid = tid;
	}

	public String getTname() {
		return tname;
	}

	public void setTname(String tname) {
		this.tname = tname;
	}

	public String getSid() {
		return sid;
	}

	public void setSid(String sid) {
		this.sid = sid;
	}

	public String getTtype() {
		return ttype;
	}

	public void setTtype(String ttype) {
		this.ttype = ttype;
	}

	public String getTlook() {
		return tlook;
	}

	public void setTlook(String tlook) {
		this.tlook = tlook;
	}

	public String getTgood() {
		return tgood;
	}

	public void setTgood(String tgood) {
		this.tgood = tgood;
	}

	public String getTtime() {
		return ttime;
	}

	public void setTtime(String ttime) {
		this.ttime = ttime;
	}

	public String getTcontent() {
		return tcontent;
	}

	public void setTcontent(String tcontent) {
		this.tcontent = tcontent;
	}

	public String getComid() {
		return comid;
	}

	public void setComid(String comid) {
		this.comid = comid;
	}

	public String getT1() {
		return t1;
	}

	public void setT1(String t1) {
		this.t1 = t1;
	}

	public String getT2() {
		return t2;
	}

	public void setT2(String t2) {
		this.t2 = t2;
	}

	public String getTphoto() {
		return tphoto;
	}

	public void setTphoto(String tphoto) {
		this.tphoto = tphoto;
	}

	public String getSname() {
		return sname;
	}

	public void setSname(String sname) {
		this.sname = sname;
	}

	@Override
	public String toString() {
		return "Topic [tid=" + tid + ", tname=" + tname + ", sid=" + sid + ", ttype=" + ttype + ", tlook=" + tlook
				+ ", tgood=" + tgood + ", ttime=" + ttime + ", tcontent=" + tcontent + ", comid=" + comid + ", t1=" + t1
				+ ", t2=" + t2 + ", tphoto=" + tphoto + ", sname=" + sname + "]";
	}
	
	
}
