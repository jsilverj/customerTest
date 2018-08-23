package com.controller;

import java.io.File;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.dao.InfoDao;
import com.model.InfoFileVo;
import com.model.InfoVo;

@Controller
public class InfoController {

	@Autowired
	InfoDao infoDao;
	
	@RequestMapping("/readInfo.do")
	public ModelAndView readInfo(@RequestParam int num) {
		ModelAndView mav = new ModelAndView();
		InfoVo vo = infoDao.getReadCustomer(num);
		mav.addObject("InfoVo", vo);
		mav.setViewName("readInfo");
		return mav;
	}
	
	@RequestMapping("/writeInfo.do")
	public String writeInfo() {
		
		return "writeInfo";
	}
	
	@RequestMapping(value="/insertInfo")
	public ModelAndView insertInfo(MultipartHttpServletRequest multi) {
		ModelAndView mav = new ModelAndView();
		
		InfoVo infoVo = new InfoVo();
		infoVo.setContent(multi.getParameter("content"));
		infoVo.setTitle(multi.getParameter("title"));
		int infoSeq = infoDao.getInfoSequence();
		infoVo.setNum(infoSeq);
		int r = infoDao.insertInfo(infoVo);
		
//------------------------------------------------------------------------------------------------------------		
		// 저장 경로 설정
        String root = multi.getSession().getServletContext().getRealPath("/");
        String path = root+"resources/upload/" + r;
           
        File dir = new File(path);
        if(!dir.isDirectory()){
            dir.mkdirs();
        }

		
		/*MultipartFile file = multi.getFile("infoFile");
		
		int parent = infoSeq;
		String url = path;
		long length = file.getSize();
		String fileName = file.getOriginalFilename();

		InfoFileVo fileVo = new InfoFileVo();
		
		fileVo.setName(fileName);
		fileVo.setLength(length);
		fileVo.setUrl(url);
		fileVo.setParent(parent);
		
		int fileIn = infoDao.insertFile(fileVo);*/
		
		if(r == 1) {
			
			mav.setViewName("redirect:/info.do?num=1&page=1&viewPage=1");
		}else {
			mav.setViewName("infoPageError");
		}
		return mav;
	
	}
}































