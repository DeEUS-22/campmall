package com.campmall.service;

import java.util.ArrayList;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.campmall.dao.CpmBasketDAO;
import com.campmall.vo.CpmBasketVO;

@Service
public class BasketServiceImpl implements BasketService {
	
	@Autowired
	private CpmBasketDAO cpmBasketDao;
	
	@Override
	public int insert(Map<String, Object> param) {
		
		return cpmBasketDao.insert(param);
	}
	
	@Override
	public ArrayList<CpmBasketVO> getList(String mid) {
		
		return cpmBasketDao.getList(mid);
	}
}
