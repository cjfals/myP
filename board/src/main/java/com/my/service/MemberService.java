package com.my.service;

import com.my.domain.MemberVO;

public interface MemberService {
	public Integer idCheck(String m_id) throws Exception;
	
	public void insertM(MemberVO vo) throws Exception;
	
	public String loginM(MemberVO vo) throws Exception;

}
