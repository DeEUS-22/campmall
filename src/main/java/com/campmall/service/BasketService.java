package com.campmall.service;

import java.util.ArrayList;
import java.util.Map;

import com.campmall.vo.CpmBasketVO;

public interface BasketService {
	
	int insert(Map<String, Object> param);
	ArrayList<CpmBasketVO> getList(String mid);
	int delete(Map<String, Object> param);
	
}
