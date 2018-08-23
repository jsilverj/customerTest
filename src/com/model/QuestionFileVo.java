package com.model;

public class QuestionFileVo {
	int fnum;
	String fname;
	long fsize;
	String furl;
	int parent;
	public int getFnum() {
		return fnum;
	}
	public void setFnum(int fnum) {
		this.fnum = fnum;
	}
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public long getFsize() {
		return fsize;
	}
	public void setFsize(long fsize) {
		this.fsize = fsize;
	}
	public String getFurl() {
		return furl;
	}
	public void setFurl(String furl) {
		this.furl = furl;
	}
	public int getParent() {
		return parent;
	}
	public void setParent(int parent) {
		this.parent = parent;
	}
	@Override
	public String toString() {
		return "QuestionFileVo [fnum=" + fnum + ", fname=" + fname + ", fsize=" + fsize + ", furl=" + furl + ", parent="
				+ parent + "]";
	}
	
	
}
