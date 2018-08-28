package com.service;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.model.QuestionFileVo;

@Service
public class UploadService {
	@Autowired
	ServletContext ctx;
	
	public QuestionFileVo execute(MultipartFile file, int parent) throws Exception {
		File dir = new File(ctx.getRealPath("/attach"),String.valueOf(parent));
		if(!dir.exists()) {
			dir.mkdirs();
		}
		
		File dest = new File(dir,file.getOriginalFilename());
		
		file.transferTo(dest);
		QuestionFileVo vo = new QuestionFileVo();
		vo.setFname(file.getOriginalFilename());
		vo.setFsize(file.getSize());
		vo.setFurl("/attach/"+parent+"/"+file.getOriginalFilename());
		vo.setParent(parent);
		System.out.println(vo.toString());
		return vo;
	}
}
