package com.campmall.service;

import java.util.ArrayList;

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
	
	/* 상품목록 불러오기*/
	@Override
	public ArrayList<CpmProductVO> getList(){
		ArrayList<CpmProductVO> list = productDao.select();
		return list;
	}
}
