package com.campmall.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class JoinController {

	/**
	 * join.do
	 */
	@RequestMapping(value="/join.do", method=RequestMethod.GET)
	public String login() {
		return "/join/join";
	}
	
}
