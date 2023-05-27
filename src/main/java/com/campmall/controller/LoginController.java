package com.campmall.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class LoginController {

	/**
	 * login.do
	 */
	@RequestMapping(value="/login.do", method=RequestMethod.GET)
	public ModelAndView login(String auth) {
		ModelAndView mv = new ModelAndView();
		//mv.addObject("auth", auth);
		mv.setViewName("/login/login");
		return mv;
	}
}
