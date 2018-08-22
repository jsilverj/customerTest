package com.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.model.CustomerVo;

@Repository
public class CustomerDao {
	
	@Autowired
	SqlSessionTemplate template;
	

	//1.Q&A insert
	public void addCustomer(CustomerVo vo) {
		template.insert("customer.addCustomer", vo);  
	}
	
	//2.Q&A delete
	public void deleteCustomer(int num) {
		template.delete("customer.deleteCustomer", num);  //�� ��ȣ�� �� ����
	}
	
	//3.Q&A update
	public void updateCustomer(CustomerVo vo) {
		template.update("customer.updateCustomer", vo);  
	}
	
	//4.ī�װ��� �˻�
	public List<CustomerVo> getCategory(String category){
		return template.selectList("customer.getCategory", category);  
	}
	
	//5.��ü ���� ��� ��������
	public List<CustomerVo> getAll(){
		return template.selectList("customer.getAll");  
	}
	
	//6.top5�� ��������
	public List<CustomerVo> getTop5(){
		return template.selectList("customer.getTop5");
	}
	
	//7.ī�װ� 
	public List getCateCount() {
		return template.selectList("customer.getCateCount");
	}
	
	//8.��ü ī�װ� ����
	public int getAllCount() {
		return template.selectOne("customer.getAllCount");
	}
	
	//9
	public List<CustomerVo> getPage(Map data) {
		return template.selectList("customer.getPage",data);
	}
}
