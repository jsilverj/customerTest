package com.model;

import java.util.Date;

//고객 센터 

public class CustomerVo {

	int num;	//글 번호
	String title;  //글 제목
	String content;  //글 내용
	Date regdate;	//글 작성일
	String category;  //카테고리
	int count;		//조회수 top5 확인용

	
	//---------------------------------------------------------------------------------------------------------
	
	
	@Override
	public String toString() {
		return "CustomerVo [num=" + num + ", title=" + title + ", content=" + content + ", regdate=" + regdate
				+ ", category=" + category + ", count=" + count + "]";
	}

	
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
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	
	


	
}
