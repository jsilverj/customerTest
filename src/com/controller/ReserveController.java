package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/reserve")
public class ReserveController {

	
	@RequestMapping("/page.do")
	public ModelAndView moveReserve() {
		ModelAndView mav = new ModelAndView();
		
		
		
		mav.setViewName("reserveMainPage");
		return mav;
	}
}
