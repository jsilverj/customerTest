package com.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;

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
		InfoFileVo fvo = infoDao.getInfoFile(num);
		mav.addObject("InfoVo", vo);
		mav.addObject("infoFile", fvo);
		mav.setViewName("readInfo");
		return mav;
	}
	
	@RequestMapping("/writeInfo.do")
	public String writeInfo() {
		
		return "writeInfo";
	}
	
	@RequestMapping(value="/insertInfo.do")
	public ModelAndView insertInfo(MultipartHttpServletRequest multi, MultipartFile infoFile) throws IOException {
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
		String uploadPath = root + "infoFile" + "\\" + infoSeq;
		System.out.println(uploadPath);
		
		File file = new File(uploadPath);
		if(!file.exists()) {
			file.mkdirs();
		}

		System.out.println(infoFile.getOriginalFilename());
		
		File upload = new File(file, infoFile.getOriginalFilename());
		infoFile.transferTo(upload);
		System.out.println(infoFile.getSize());
		System.out.println(infoFile.getName());
		
		int parent = infoSeq;
		String url = String.valueOf(file);
		long length = infoFile.getSize();
		String fileName = infoFile.getOriginalFilename();
		
		String fileUrl = "/infoFile/" + infoSeq + "/" + fileName;
		
		InfoFileVo fileVo = new InfoFileVo();
		
		
		fileVo.setName(fileName);
		fileVo.setLength(length);
		fileVo.setUrl(fileUrl);
		fileVo.setParent(parent);
		
		int fileIn = infoDao.insertFile(fileVo);
		
		if((r == 1)&&(fileIn == 1)) {
			
			mav.setViewName("redirect:/info.do?num=1&page=1&viewPage=1");
		}else {
			mav.setViewName("infoPageError");
		}
        mav.setViewName("redirect:/info.do?num=1&page=1&viewPage=1");
		return mav;
	
	}
}































