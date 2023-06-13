package com.campmall.dao;

import java.util.ArrayList;
import java.util.List;

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
	
	/**
	 * select
	 */
	public ArrayList<CpmProductVO> select(){
		
		List<CpmProductVO> list = sqlSession.selectList("mapper.product.list");
		
		return (ArrayList<CpmProductVO>)list;
	}
}
