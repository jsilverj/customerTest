package com.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class test {

	@RequestMapping("/index.do")
	public String testHandler(HttpSession session) {

		return "mainPage";
	}
}
