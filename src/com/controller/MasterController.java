package com.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.dao.InfoDao;
import com.dao.MasterDao;
import com.model.InfoFileVo;
import com.model.InfoVo;

@Controller
@RequestMapping("/master")
public class MasterController {
	@Autowired
	MasterDao masterDao;
	
	@Autowired
	InfoDao infoDao;
	
	@RequestMapping("/showmember.do")
	public ModelAndView showMember() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("el.master");
		mav.addObject("contents", "/WEB-INF/view/master/member.jsp");
		return mav;
	}
	
	@RequestMapping("/mdeleteid.do")
	public ModelAndView deleteIdHandle(@RequestParam(name="id") String id) {
		ModelAndView mav = new ModelAndView();
		int r = masterDao.DeleteId(id);
		if(r==1) {
			mav.setViewName("el.master");
			mav.addObject("contents", "/WEB-INF/view/master/membered.jsp");
		}else {
			mav.setViewName("el.master");
			mav.addObject("contents", "/WEB-INF/view/master/error.jsp");
		}
		return mav;
	}
	
	@RequestMapping("/mupdateId.do")
	public ModelAndView updateIdHandle(@RequestParam(name="no")int no,@RequestParam(name="id") String id) {
		ModelAndView mav = new ModelAndView();
		Map<String, Object> map = new HashMap<String,Object>();
		map.put("id", id);
		map.put("no", no);
		int r = masterDao.UpdateId(map);
		if(r==1) {
			mav.setViewName("el.master");
			mav.addObject("contents", "/WEB-INF/view/master/membered.jsp");
		}else {
			mav.setViewName("el.master");
			mav.addObject("contents", "/WEB-INF/view/master/error.jsp");
		}
		return mav;
	}
	
	@RequestMapping("/info.do")
	public ModelAndView infoHandle(@RequestParam int num, int page, int viewPage) {				// 공지 사항 페이지로 이동하는 메소드
		ModelAndView mav = new ModelAndView();
		List<InfoVo> list = infoDao.getList(viewPage);
		int pageCount = infoDao.getPageCount(page);
		double aa = (double)pageCount/10;
		mav.addObject("list", list);
		mav.addObject("num", num);
		mav.addObject("pageCount", Math.ceil(aa));
		mav.addObject("page", page);
		mav.setViewName("el.master");
		mav.addObject("contents","/WEB-INF/view/info/info.jsp");
		return mav;
	}
	
	@RequestMapping("/readInfo.do")
	public ModelAndView readInfo(@RequestParam int num) {
		ModelAndView mav = new ModelAndView();
		InfoVo vo = infoDao.getReadCustomer(num);
		InfoFileVo fvo = infoDao.getInfoFile(num);
		mav.addObject("InfoVo", vo);
		mav.addObject("infoFile", fvo);
		mav.setViewName("readInfo");
		mav.setViewName("el.master");
		mav.addObject("contents","/WEB-INF/view/info/readInfo.jsp");
		return mav;
	}
	
	
}
