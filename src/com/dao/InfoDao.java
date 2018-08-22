package com.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.model.InfoVo;

@Repository
public class InfoDao {

	@Autowired
	SqlSessionTemplate template;
	
	public List<InfoVo> getList(int num){
		
		return template.selectList("info.infoList", num);	// 공지 사항 전체 리스트를 가져오는 db template
	}
}
