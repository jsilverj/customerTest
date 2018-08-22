package com.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {

	@RequestMapping("/index.do")	
	public String testHandler(HttpSession session) {	// 메인 페이지로 이동하는 메소드

		return "mainPage";
	}
}
