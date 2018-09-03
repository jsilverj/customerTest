package com.dao;

import java.util.List;
import java.util.Map;

import org.bson.Document;
import org.bson.types.ObjectId;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.data.mongodb.core.query.BasicQuery;
import org.springframework.data.mongodb.core.query.BasicUpdate;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.data.mongodb.core.query.Update;
import org.springframework.stereotype.Repository;

import com.model.MovieDetailVo;

@Repository
public class MovieDao {
	
	@Autowired
	SqlSessionTemplate template;
	
	@Autowired
	MongoTemplate mongo;

	// 1.관리자 - 영화 데이터 입력 
	public void addMovie(MovieDetailVo vo) {
		template.insert("movie.addMovie",vo);
	}
	//  2.관리자 - 영화 데이터 수정 
	public void updateMovie(MovieDetailVo vo) {
		template.insert("movie.updateMovie",vo);
	}
	// 3.관리자 - 영화 데이터 삭제 
	public void deleteMovie(int num) {
		template.insert("movie.deleteMovie",num);
	}
	// 4.영화 상세 정보 가져오기 
	public List getMovie(int num) {
		return template.selectList("movie.getMovie",num);
	}
	// 5.영화 평점순 가져오기
	public List getMovieGrade() {
		return template.selectList("movie.getMovieGrade");
	}
	//6.영화 장르 가져오기
	public List getGenre() {
		return template.selectList("movie.getGenre");
	}
	//7.영화 관람등급 가져오기
	public List getRating() {
		return template.selectList("movie.getRating");
	}
	//========================================================
	//8.mongoDB 리뷰 등록
	public void addReview(Map map) {
		mongo.insert(map, "reviewTest");
	}
	
	//9.mongoDB 리뷰 가져오기
	public List<Map> getReview(String num) {
		Query query = (Query) new BasicQuery(new Document().append("num",num));
		return mongo.find(query, java.util.Map.class, "reviewTest");
	}
	
	//10.영화 평점 처리
	public void setGradeInc(Map map) {
		Query query = new BasicQuery(new Document().append("num",map.get("num")));  //조건 
		Update update = new BasicUpdate(new Document().append("$inc", new Document().append("grade", map.get("grade")).append("cnt", map.get("cnt"))));  //세팅 시킬 값
		mongo.updateFirst(query, update, "gradeInc");
	}
	
	//11.평점 처리용 DB에 영화번호가 존재하는지 확인 
	public List<Map> findGradeInc(int num) {
		Query query = (Query) new BasicQuery(new Document().append("num",num));
		return mongo.find(query, java.util.Map.class, "gradeInc");
	}
	
	//12.평점 처리용 DB에 데이터 삽입
	public void addGradeInc(Map gmap) {
		mongo.insert(gmap, "gradeInc");
	}
	
	//13.리뷰 작성 기록이 있는지 확인
	public List<Map> findReview(String email, int num) {
		Query query = (Query) new BasicQuery(new Document().append("email",email).append("num",num));
		return mongo.find(query, java.util.Map.class, "reviewTest");
	}
}
