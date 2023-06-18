package com.campmall.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.campmall.service.BasketServiceImpl;
import com.campmall.vo.CpmBasketVO;
import com.campmall.vo.SessionVO;

@Controller
public class BaskertController {
	
	@Autowired
	private BasketServiceImpl basketService;
	
	/**
	 * basket.do
	 */
	@RequestMapping(value="/basket.do", method=RequestMethod.GET)
	public ModelAndView basket(HttpSession session) {
		ModelAndView mv = new ModelAndView();
		
		SessionVO svo = (SessionVO)session.getAttribute("svo");
		String mid = svo.getMid();
		
		ArrayList<CpmBasketVO> list = basketService.getList(mid);
		
		int totalPrice = 0;
		
		for(int i=0; i<list.size(); i++) {
			totalPrice += Integer.parseInt(list.get(i).getBprice());
		}
		
		mv.addObject("totalPrice", totalPrice);
		mv.addObject("list", list);
		mv.setViewName("/basket/basket");
		return mv;
	}
	
	/**
	 * basketCheck.do
	 */
	@RequestMapping(value="/basketCheck.do", method=RequestMethod.POST)
	public ModelAndView basketCheck(CpmBasketVO vo, HttpSession session) {
		ModelAndView mv = new ModelAndView();
		
		SessionVO svo = (SessionVO)session.getAttribute("svo");
		
		Map<String, Object> param = new HashMap<String, Object>();
		
		param.put("mid", svo.getMid());
		param.put("bbrdNm", vo.getBbrdNm());
		param.put("bprdNm", vo.getBprdNm());
		param.put("bnote", "주문번호");
		param.put("bprice", vo.getBprice());

		int result = basketService.insert(param);
		
		
		mv.setViewName("redirect:/basket.do");
		return mv;
	}
	
	/**
	 * basketDelete.do
	 */
	@RequestMapping(value="/basketDelete.do", method=RequestMethod.GET)
	public ModelAndView basketDelete(String bid, HttpSession session) {
		ModelAndView mv = new ModelAndView();
		
		SessionVO svo = (SessionVO)session.getAttribute("svo");
		
		Map<String, Object> param = new HashMap<String, Object>();
		
		param.put("bid", bid);
		param.put("mid", svo.getMid());
		
		int result = basketService.delete(param);
		
		
		mv.setViewName("redirect:/basket.do");
		return mv;
	}
}
