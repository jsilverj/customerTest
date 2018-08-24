package com.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.model.InfoFileVo;
import com.model.InfoVo;

@Repository
public class InfoDao {

	@Autowired
	SqlSessionTemplate template;
	
	public List<InfoVo> getList(int num){
		
		return template.selectList("info.infoList", num);	// 공지 사항 전체 리스트를 가져오는 db template
	}

	public int getPageCount(int num) {
		
		return template.selectOne("info.pageCount", num);
	}

	public InfoVo getReadCustomer(int num) {
		
		return template.selectOne("info.readCustomer", num);
	}
	
	public int getInfoSequence() {
		return template.selectOne("info.getSequence");
	}

	public int insertInfo(InfoVo infoVo) {

		return template.insert("info.insertInfo", infoVo);
		
	}

	public int insertFile(InfoFileVo fileVo) {
		
		return template.insert("info.insertFile", fileVo);
	}
	
	public InfoFileVo getInfoFile(int parent) {
		
		return template.selectOne("info.getInfoFile", parent);
	}
}
