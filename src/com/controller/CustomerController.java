package com.controller;

import java.util.Map;

import org.apache.ibatis.annotations.ResultMap;
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
	public ModelAndView customerHandle() { 

		ModelAndView mav = new ModelAndView();
		mav.setViewName("customer");
		mav.addObject("top", customerdao.getTop5()); 
		mav.addObject("all", customerdao.getAll()); 
		mav.addObject("allCount", customerdao.getAllCount()); 
		mav.addObject("cateCount", customerdao.getCateCount()); 
		return mav;
	}

	@RequestMapping("/0.do")
	public ModelAndView memberHandle() {

		ModelAndView mav = new ModelAndView();
		mav.setViewName("member");
		mav.addObject("top", customerdao.getTop5());
		mav.addObject("allCount", customerdao.getAllCount());
		mav.addObject("cateCount", customerdao.getCateCount());
		// System.out.println(customerdao.getCategory("회원"));
		mav.addObject("member", customerdao.getCategory("회원"));
		return mav;
	}

	@RequestMapping("/1.do")
	public ModelAndView onlineHandle() {

		ModelAndView mav = new ModelAndView();
		mav.setViewName("online");
		mav.addObject("top", customerdao.getTop5());
		mav.addObject("allCount", customerdao.getAllCount());
		mav.addObject("cateCount", customerdao.getCateCount());
		// System.out.println(customerdao.getCategory("온라인"));
		mav.addObject("online", customerdao.getCategory("온라인"));
		return mav;
	}


}
