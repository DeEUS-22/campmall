package com.campmall.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class AdminController {

	/**
	 * admin_list.do
	 */
	@RequestMapping(value="/admin.do", method=RequestMethod.GET)
	public ModelAndView admin(String auth) {
		ModelAndView mv = new ModelAndView();
		//mv.addObject("auth", auth);
		mv.setViewName("/admin/admin");
		return mv;
	}
}
