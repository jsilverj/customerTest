package com.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.dao.InfoDao;
import com.model.InfoVo;

@Controller
public class NavbarController {

	
	@Autowired
	InfoDao infoDao;
	
	@RequestMapping("/login.do")
	public String loginPage(HttpSession session) {	// loginPage로 이동하는 메소드
		session.setAttribute("auth", "aa");
		return "loginPage";
	}
	
	@RequestMapping("/logout.do")
	public String logout(HttpSession session) {		// logout 하는 메소드
		
		session.setAttribute("auth", null);
		return "mainPage";
	}
	
	@RequestMapping("/info.do")
	public ModelAndView infoHandle() {				// 공지 사항 페이지로 이동하는 메소드
		ModelAndView mav = new ModelAndView();
		List<InfoVo> list = infoDao.getList();
		System.out.println("list : " + list);
		mav.addObject("list", list);
		mav.setViewName("infoPage");
		return mav;
	}
}













