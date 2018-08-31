package com.model;

import java.util.Date;

import org.bson.types.ObjectId;

public class MovieReviewVo {

	ObjectId _id;  //아이디
	String grade;   //평점
	String comments;   //리뷰 내용
	String username;   //유저 이름
	Date regdate;  //날짜
	String _class;  //클래스
	
	
	public ObjectId get_id() {
		return _id;
	}
	public void set_id(ObjectId _id) {
		this._id = _id;
	}
	public String getGrade() {
		return grade;
	}
	public void setGrade(String grade) {
		this.grade = grade;
	}
	public String getComments() {
		return comments;
	}
	public void setComments(String comments) {
		this.comments = comments;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	public String get_class() {
		return _class;
	}
	public void set_class(String _class) {
		this._class = _class;
	}
	@Override
	public String toString() {
		return "MovieReviewVo [_id=" + _id + ", grade=" + grade + ", comments=" + comments + ", username=" + username
				+ ", regdate=" + regdate + ", _class=" + _class + "]";
	}
	
	
	
	

	
	
	
}
