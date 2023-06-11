package com.campmall.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.campmall.vo.CpmProductVO;

@Repository
public class CpmProductDAO {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	/**
	 * insert
	 */
	public int insert(CpmProductVO vo) {
		return sqlSession.insert("mapper.product.join", vo);
	}//insert-end
}
