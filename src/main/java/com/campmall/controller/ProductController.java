package com.campmall.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ProductController {
	
	/**
	 * admin_product.do
	 */
	@RequestMapping(value="/product/product.do", method=RequestMethod.GET)
	public ModelAndView product(String auth) {
		ModelAndView mv = new ModelAndView();
		//mv.addObject("auth", auth);
		mv.setViewName("/product/product");
		return mv;
	}
	
	/**
	 * admin_product.do
	 */
	@RequestMapping(value="/product/special.do", method=RequestMethod.GET)
	public ModelAndView special(String auth) {
		ModelAndView mv = new ModelAndView();
		//mv.addObject("auth", auth);
		mv.setViewName("/product/special");
		return mv;
	}
	
	/**
	 * admin_product.do
	 */
	@RequestMapping(value="/product/best.do", method=RequestMethod.GET)
	public ModelAndView best(String auth) {
		ModelAndView mv = new ModelAndView();
		//mv.addObject("auth", auth);
		mv.setViewName("/product/best");
		return mv;
	}
	
	/**
	 * admin_product.do
	 */
	@RequestMapping(value="/product/new.do", method=RequestMethod.GET)
	public ModelAndView new_product(String auth) {
		ModelAndView mv = new ModelAndView();
		//mv.addObject("auth", auth);
		mv.setViewName("/product/new");
		return mv;
	}
	
	/**
	 * admin_product.do
	 */
	@RequestMapping(value="/product/pick.do", method=RequestMethod.GET)
	public ModelAndView pick(String auth) {
		ModelAndView mv = new ModelAndView();
		//mv.addObject("auth", auth);
		mv.setViewName("/product/pick");
		return mv;
	}
}
