package com.dao;

import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MasterDao {
	@Autowired
	SqlSessionTemplate template;
	
	public int DeleteId(String id) {
		return template.delete("master.deleteId",id);
	}
	
	public int UpdateId(Map map) {
		return template.update("master.updateId",map);
	}
}
