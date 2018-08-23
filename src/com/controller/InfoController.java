package com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.dao.InfoDao;
import com.model.InfoVo;

@Controller
public class InfoController {

	@Autowired
	InfoDao infoDao;
	
	@RequestMapping("/readInfo.do")
	public ModelAndView readInfo(@RequestParam int num) {
		ModelAndView mav = new ModelAndView();
		InfoVo vo = infoDao.getReadCustomer(num);
		mav.addObject("InfoVo", vo);
		mav.setViewName("readInfo");
		return mav;
	}
	
	@RequestMapping("/writeInfo.do")
	public String writeInfo() {
		
		return "writeInfo";
	}
}
