package com.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class NavbarController {

	@RequestMapping("/login.do")
	public String loginPage(HttpSession session) {
		session.setAttribute("auth", "aa");
		return "loginPage";
	}
	
	@RequestMapping("/logout.do")
	public String logout(HttpSession session) {
		
		session.setAttribute("auth", null);
		return "mainPage";
	}
}
