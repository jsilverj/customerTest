package com.model;

import java.sql.Date;


public class InfoVo {	// 공지사항 테이블에 대한 VO

	int num;
	String title;
	String content;
	Date regDate; 
	int count;
	
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	
	@Override
	public String toString() {
		return "InfoVo [num=" + num + ", title=" + title + ", content=" + content + ", regDate=" + regDate + ", count="
				+ count + "]";
	}

}


























