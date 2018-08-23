package com.controller;

import java.sql.Date;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.dao.MemberDao;
import com.google.gson.Gson;
import com.model.MemberVo;
import com.service.Converter;

@Controller
public class AuthController {
	
	@Autowired
	MemberDao memberDao;
	@Autowired
	Gson gson;
	
	@RequestMapping("/logining.do")	// do는 컨트롤러로 갈 때
	public ModelAndView loginHandle(@RequestParam Map map, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		// System.out.println(map);
		MemberVo vo = memberDao.findByEmailAndPass(map);
		if(vo != null) {
			session.setAttribute("auth", vo);	// 로그인 성공하면 세션에 넣어두기
			mav.setViewName("mainPage");
		}
		return mav;
	}
	
	@RequestMapping("/joinHandle.do")	// joinPage에서 submit하면 애를 찾아와서 실행
	public ModelAndView joinHandle(@ModelAttribute MemberVo memberVo) {
		ModelAndView mav = new ModelAndView();
		Converter converter = new Converter();
		Date birth = converter.convertToDate(String.valueOf(memberVo.getBirth()));
		memberVo.setBirth(birth);
		System.out.println(memberVo);
		memberDao.addMember(memberVo);
		mav.setViewName("joinsuc");
		
		return mav;
	}
	
	@RequestMapping(value="/emailCheckHandle.do", produces="application/json;charset=utf-8")	// 컨트롤러 여기 타고 들어옴
	@ResponseBody
	public String emailCheckHandle(@RequestParam String echeck) {
		int r = memberDao.emailCheck(echeck);
		String t;
		if(r == 0) {
			t = "YYYY";
		}else {
			t = "NNNN";
		}
		return "{\"rst\": \""+t+"\"}";
	}
	

	
	
	
	
	
	
}