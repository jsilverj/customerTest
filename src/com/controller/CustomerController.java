package com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.dao.CustomerDao;

@Controller
@RequestMapping("/customer")
public class CustomerController {

	@Autowired
	CustomerDao customerdao;

	@RequestMapping("/center.do")
	public ModelAndView customerHandle() { // FAQ(고객센터) 페이지로 이동
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("customer");
		mav.addObject("top", customerdao.getTop5()); // 디비에서 조회수 상위 5개 질문 가져오기
		mav.addObject("all", customerdao.getAll()); // 디비에서 전체 질문 가져오기
		mav.addObject("cateCount", customerdao.getCateCount());
		
		return mav;
	}
	
	@RequestMapping("/faq.do")
	public ModelAndView categoryHandle() { // FAQ(고객센터) 페이지로 이동
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("customer");
		mav.addObject("top", customerdao.getTop5()); // 디비에서 조회수 상위 5개 질문 가져오기
		mav.addObject("all", customerdao.getAll()); // 디비에서 전체 질문 가져오기
		mav.addObject("cateCount", customerdao.getCateCount());
		
		return mav;
	}

}
