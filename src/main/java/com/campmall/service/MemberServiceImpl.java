package com.campmall.service;

import org.springframework.stereotype.Service;

import com.campmall.vo.CpmMemberVO;

@Service
public class MemberServiceImpl implements MemberService{
	
	/**
	 * 회원가입
	 */
	@Override
	public int getJoinResult(CpmMemberVO vo) {	
		return memberDao.insert(vo);
	}

}
