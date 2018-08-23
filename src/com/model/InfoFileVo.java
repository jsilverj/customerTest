package com.model;

public class InfoFileVo {

	int num;
	String name;
	long length;
	String url;
	int parent;
	
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public long getLength() {
		return length;
	}
	public void setLength(long length) {
		this.length = length;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public int getParent() {
		return parent;
	}
	public void setParent(int parent) {
		this.parent = parent;
	}
	
	@Override
	public String toString() {
		return "InfoFileVo [num=" + num + ", name=" + name + ", length=" + length + ", url=" + url + ", parent="
				+ parent + "]";
	}

}
