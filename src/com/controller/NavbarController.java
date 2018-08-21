package com.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class NavbarController {

	@RequestMapping("/login.do")
	public String loginPage(HttpSession session) {
		return "loginPage";
	}
	
	@RequestMapping("/logout.do")
	public String logout(HttpSession session) {
		session.setAttribute("auth", null);
		return "mainPage";
	}
	
	@RequestMapping("/join.do")	// 어떤 컨트롤러로 이동하는지
	public String joinPage(HttpSession session) {
		return "joinPage";	// 이동할 페이지
	}
	
}
