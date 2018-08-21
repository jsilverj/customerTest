package com.controller;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.dao.MemberDao;
import com.model.MemberVo;

@Controller
public class AuthController {
	@Autowired
	MemberDao memberDao;
	
	@RequestMapping("/logining.do")	// do는 컨트롤러로 갈 때
	public ModelAndView loginHandle(@RequestParam Map map, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		MemberVo vo = memberDao.findByEmailAndPass(map);
		if(vo == null) {
			mav.setViewName("logerr");	// tiles를 이용해서 페이지 이동을 시키려면 리턴값이나 setviewNames에 적어야할게
		}else {
			session.setAttribute("auth", vo);	// 로그인 성공하면 세션에 넣어두기
			mav.setViewName("logsuc");
		}
		return mav;
	}
	
	@RequestMapping("/join.do")
	public ModelAndView joinHandle(@ModelAttribute MemberVo memberVo) {
		ModelAndView mav = new ModelAndView();
		int m = memberDao.addMember(memberVo);
		System.out.println(m);
		mav.addObject("suc", m);
		mav.setViewName("joinsuc");
		return mav;
	}
}