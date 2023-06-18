package com.campmall.service;

import java.io.File;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import com.campmall.vo.CpmProductVO;

@Service
public class FileServiceImpl {
	
	/**
	 * file 조회
	 */
	public CpmProductVO fileCheck(CpmProductVO vo) {
		
		if(vo.getFile1().getOriginalFilename().equals("")) {
			vo.setPfile("");
			vo.setPsfile("");
		}else {
			UUID uuid = UUID.randomUUID();
			vo.setPfile(vo.getFile1().getOriginalFilename());
			vo.setPsfile(uuid + "_" + vo.getFile1().getOriginalFilename());
		}
		
		return vo;
	}
	
	/**
	 * fileSave
	 */
	public void fileSave(CpmProductVO vo, HttpServletRequest request) throws Exception {
			
		if(!vo.getFile1().getOriginalFilename().equals("")) {
			String path = request.getSession().getServletContext().getRealPath("/");
			path += "\\resources\\upload\\";
			
			File file = new File(path+vo.getPsfile());
			vo.getFile1().transferTo(file);
		}
		
	}
	
	/**
	 * fileUpdate
	 */
	public CpmProductVO update_fileCheck(CpmProductVO vo, HttpServletRequest request, String old_filename) throws Exception {
		
		if(!vo.getFile1().getOriginalFilename().equals("")) {
			UUID uuid = UUID.randomUUID();
			
			vo.setPfile(vo.getFile1().getOriginalFilename());
			vo.setPsfile(uuid+ "_" + vo.getFile1().getOriginalFilename());
		}
		
		return vo;
	}
	
	/**
	 * 
	 */
	public void update_filesave(CpmProductVO vo, HttpServletRequest request, String old_filename) throws Exception {
		
		if(!vo.getFile1().getOriginalFilename().equals("")) {
			String path = request.getSession().getServletContext().getRealPath("/");
			path += "\\resources\\upload\\";
			
			File ofile = new File(path+old_filename);
			if(ofile.exists()) {
				ofile.delete();
			}
		}
	}
	
	/**
	 * 
	 */
	public void fileDelete(CpmProductVO vo, HttpServletRequest request) throws Exception{
		if(vo.getPsfile() != null) {
			String path=request.getSession().getServletContext().getRealPath("/");
			path += "\\resources\\upload\\";
			
			File old_file = new File(path+vo.getPsfile());
			if(old_file.exists()) {
				old_file.delete();
			}
		}
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
