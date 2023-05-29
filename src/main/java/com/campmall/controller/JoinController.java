package com.campmall.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.campmall.vo.CpmMemberVO;

@Controller
public class JoinController {

	/**
	 * join.do
	 */
	@RequestMapping(value="/join.do", method=RequestMethod.GET)
	public String login() {
		return "/join/join";
	}
	
	/**
	 * joinCheck.do
	 */
	@RequestMapping(value="/joinCheck.do", method=RequestMethod.POST)
	public ModelAndView joinCheck(CpmMemberVO vo) {
		ModelAndView mv = new ModelAndView();
		//int result = memberService.getJoinResult(vo);
		
		/*
		if(result == 1){
			mv.addObject("join_result","ok");
			mv.setViewName("/login/login");
		}else{
			mv.setViewName("errorPage");
		}
		
		*/
		return mv;
	}
}
