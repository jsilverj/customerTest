package com.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.dao.QuestionDao;
import com.model.MemberVo;
import com.model.QuestionFileVo;
import com.model.QuestionVo;
import com.service.UploadService;

import javassist.bytecode.annotation.MemberValueVisitor;

@Controller
@RequestMapping("/question")
public class QuestionController {
	
	@Autowired
	QuestionDao questionDao;
	
	@Autowired
	UploadService uploadService;
	
	@RequestMapping("/send.do")
	public ModelAndView sendHandle(@SessionAttribute(name="auth") MemberVo vo,@RequestParam(value="num",defaultValue="10")String no) {
		ModelAndView mav = new ModelAndView();
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("writer", vo.getEmail());
		
		map.put("num", no);
		List<QuestionVo> qlist= questionDao.getQuestionByReceiver(map);
		mav.setViewName("el.question");
		mav.addObject("qlist", qlist);
		mav.addObject("contents", "/WEB-INF/view/quest/question.jsp");

		mav.addObject("contents2", "/WEB-INF/view/quest/send.jsp");
		return mav;
	}
	
	@RequestMapping("/sended.do")
	public ModelAndView sendedHandle(@ModelAttribute QuestionVo vo, @RequestParam("attach") MultipartFile files
			/*,@SessionAttribute(name="auth") MemverVo auth*/) {
		ModelAndView mav = new ModelAndView();
		int seq = questionDao.getQuestSequence();
		vo.setNum(seq);
		try {
			int r = questionDao.addQuestion(vo);
			if(!files.isEmpty()) {
				QuestionFileVo fvo = uploadService.execute(files, seq);
				questionDao.addAttach(fvo);
			}
			mav.setViewName("el.question2");
			mav.addObject("contents", "/WEB-INF/view/quest/sended.jsp");
			mav.addObject("qvo", vo);
		}catch(Exception e) {
			e.printStackTrace();
			mav.setViewName("el.question2");
			mav.addObject("contents", "/WEB-INF/view/quest/error.jsp");
		}
		return mav;
	}
	
}
