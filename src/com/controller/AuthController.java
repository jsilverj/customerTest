package com.controller;

import java.sql.Date;
import java.util.Map;

import javax.servlet.ServletRequestEvent;
import javax.servlet.ServletRequestListener;
import javax.servlet.annotation.WebListener;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
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
	public ModelAndView loginHandle(@RequestParam Map map, HttpSession session, HttpServletResponse response) {
		ModelAndView mav = new ModelAndView();
		System.out.println(map);
		MemberVo vo = memberDao.findByEmailAndPass(map);
		if(vo != null) {
			session.setAttribute("auth", vo);	// 로그인 성공하면 세션에 넣어두기
			mav.setViewName("mainPage");		// mainpage로 이동
				if(map.get("keep") != null && map.get("keep").equals("on")) {	// 쿠키
					Cookie cookie = new Cookie("keep", vo.getEmail());
					cookie.setPath("/");
					cookie.setMaxAge(60 * 60 * 24 * 30);
					response.addCookie(cookie);
			}
		}else {
			// mav.addObject("{\"fail\": \"email이나 password가 바르지 않습니다.\"}");
			mav.addObject("fail", "로그인 실패"); 
			mav.setViewName("loginPage");
		}
		return mav;
	}
	
	// 여기서 쿠키 삭제
	@RequestMapping("/logout.do")		
	public String logout(HttpSession session) {
		session.setAttribute("auth", null);
		return "mainPage";
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
	public String emailCheckHandle(@RequestParam String echeck) {	// parameter를 echeck로 받아옴
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


