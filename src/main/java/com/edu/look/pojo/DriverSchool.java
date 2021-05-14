package com.edu.look.pojo;

public class DriverSchool {

	String did;
	String cid;
	String sid;//驾校评分
	String dname;
	String dtime;
	String dcontent;
	String dphoto;
	String daddress;
	String d1;//驾校最低价格
	String d2;//驾校联系方式
	
	String cname;

	public String getDid() {
		return did;
	}

	public void setDid(String did) {
		this.did = did;
	}

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

	public String getDname() {
		return dname;
	}

	public void setDname(String dname) {
		this.dname = dname;
	}

	public String getDtime() {
		return dtime;
	}

	public void setDtime(String dtime) {
		this.dtime = dtime;
	}

	public String getDcontent() {
		return dcontent;
	}

	public void setDcontent(String dcontent) {
		this.dcontent = dcontent;
	}

	public String getDphoto() {
		return dphoto;
	}

	public void setDphoto(String dphoto) {
		this.dphoto = dphoto;
	}

	public String getDaddress() {
		return daddress;
	}

	public void setDaddress(String daddress) {
		this.daddress = daddress;
	}

	public String getD1() {
		return d1;
	}

	public void setD1(String d1) {
		this.d1 = d1;
	}

	public String getD2() {
		return d2;
	}

	public void setD2(String d2) {
		this.d2 = d2;
	}

	public String getCname() {
		return cname;
	}

	public void setCname(String cname) {
		this.cname = cname;
	}

	@Override
	public String toString() {
		return "Driverschool [did=" + did + ", cid=" + cid + ", sid=" + sid + ", dname=" + dname + ", dtime=" + dtime
				+ ", dcontent=" + dcontent + ", dphoto=" + dphoto + ", daddress=" + daddress + ", d1=" + d1 + ", d2="
				+ d2 + ", cname=" + cname + "]";
	}
	
	
}
