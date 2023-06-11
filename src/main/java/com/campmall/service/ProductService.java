package com.campmall.service;

import java.util.ArrayList;

import com.campmall.vo.CpmProductVO;

public interface ProductService {

	int getSaveResult(CpmProductVO vo);
	ArrayList<CpmProductVO> getList(int startCount, int endCount);
}
