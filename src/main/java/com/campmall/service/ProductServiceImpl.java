package com.campmall.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.campmall.dao.CpmProductDAO;
import com.campmall.vo.CpmProductVO;

@Service
public class ProductServiceImpl implements ProductService{

	@Autowired
	private CpmProductDAO productDao;

	/* 상품등록 */
	@Override
	public int getSaveResult(CpmProductVO vo) {	
		return productDao.insert(vo);
	}
}
