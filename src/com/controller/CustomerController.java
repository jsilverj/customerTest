package com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.dao.InfoDao;
import com.model.InfoVo;

@Controller
public class CustomerController {

	@Autowired
	InfoDao infoDao;
	
	@RequestMapping("/readCustomer.do")
	public ModelAndView readCustomer(@RequestParam int num) {
		ModelAndView mav = new ModelAndView();
		InfoVo vo = infoDao.getReadCustomer(num);
		mav.addObject("InfoVo", vo);
		mav.setViewName("readCustomer");
		return mav;
	}
}
