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
	
	/**
	 * admin_product.do
	 */
	@RequestMapping(value="/admin_product/product.do", method=RequestMethod.GET)
	public ModelAndView admin_product(String auth) {
		ModelAndView mv = new ModelAndView();
		//mv.addObject("auth", auth);
		mv.setViewName("/admin/admin_product/product");
		return mv;
	}
	
	/**
	 * admin_product.do
	 */
	@RequestMapping(value="/admin_product/special.do", method=RequestMethod.GET)
	public ModelAndView admin_product2(String auth) {
		ModelAndView mv = new ModelAndView();
		//mv.addObject("auth", auth);
		mv.setViewName("/admin/admin_product/special");
		return mv;
	}
	
	/**
	 * admin_product.do
	 */
	@RequestMapping(value="/admin_product/best.do", method=RequestMethod.GET)
	public ModelAndView admin_product3(String auth) {
		ModelAndView mv = new ModelAndView();
		//mv.addObject("auth", auth);
		mv.setViewName("/admin/admin_product/best");
		return mv;
	}
	
	/**
	 * admin_product.do
	 */
	@RequestMapping(value="/admin_product/new.do", method=RequestMethod.GET)
	public ModelAndView admin_product4(String auth) {
		ModelAndView mv = new ModelAndView();
		//mv.addObject("auth", auth);
		mv.setViewName("/admin/admin_product/new");
		return mv;
	}
	
	/**
	 * admin_product.do
	 */
	@RequestMapping(value="/admin_product/pick.do", method=RequestMethod.GET)
	public ModelAndView admin_product5(String auth) {
		ModelAndView mv = new ModelAndView();
		//mv.addObject("auth", auth);
		mv.setViewName("/admin/admin_product/pick");
		return mv;
	}
	
}
