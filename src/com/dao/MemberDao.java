package com.dao;

import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.model.MemberVo;


@Repository
public class MemberDao {	// DB를 연결해줌
	@Autowired
	SqlSessionTemplate template;
	
	public int addMember(MemberVo vo) {	// 회원가입
		return template.insert("member.addMember", vo);
	}	// mapper에 있는 명령문이랑 연결해서 값을 받아 옴
	
	public MemberVo findByEmailAndPass(Map map) {
		return template.selectOne("member.login", map);
	}
	
	public MemberVo findByEmail(String target) {
		return template.selectOne("member.findByEmail", target);
	}
	
	public int getSequence() {
		return template.selectOne("member.getSequence");
	}
	
}
