package com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.dao.CustomerDao;
import com.google.gson.Gson;
import com.model.CustomerVo;

@Controller
@RequestMapping("/customer")
public class CustomerController {

	@Autowired
	CustomerDao customerdao;

	@Autowired 
	Gson gson;

	@RequestMapping("/center.do")
	public ModelAndView customerHandle() { // FAQ(고객센터) 페이지로 이동
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("customer");
		mav.addObject("top", customerdao.getTop5()); 	// 디비에서 조회수 상위 5개 질문 가져오기
		mav.addObject("all", customerdao.getAll()); 	// 디비에서 전체 질문 가져오기
		mav.addObject("allCount", customerdao.getAllCount());  	// 카테고리 전체 갯수
		mav.addObject("cateCount", customerdao.getCateCount()); 	// 카테고리 별 갯수
		return mav;
	}

	@RequestMapping(value="/ajax.do", produces="application/json;charset=utf-8")
	@ResponseBody
	public String ajaxHandle(@RequestParam("category") String category) {
		
		CustomerVo vo = new CustomerVo();
		
		if(category.equals("전체")) {
			vo = (CustomerVo) customerdao.getAll();
		}else {
			vo = (CustomerVo) customerdao.getCategory(category);
		}
		
		Gson gson = new Gson();
		String json = gson.toJson(vo);
		
		System.out.println(json);
		return json;
		
	}

	
	
	
	
}
