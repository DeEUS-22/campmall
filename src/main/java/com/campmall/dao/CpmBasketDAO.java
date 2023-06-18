package com.campmall.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.campmall.vo.CpmBasketVO;

@Repository
public class CpmBasketDAO {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	/**
	 * insert
	 */
	public int insert(Map<String, Object> param) {
		return sqlSession.insert("mapper.basket.insert", param);
	}//insert-end
	
	/**
	 * getList
	 */
	public ArrayList<CpmBasketVO> getList(String mid) {

		List<CpmBasketVO> list = sqlSession.selectList("mapper.basket.getList", mid);
		
		return (ArrayList<CpmBasketVO>)list;
	}
	
	/**
	 * delete
	 */
	public int delete(Map<String, Object> param) {
		return sqlSession.delete("mapper.basket.delete", param);
	}
}
