package com.my.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.my.domain.MemberVO;
import com.my.persistence.MemberDAO;

@Service
public class MemberServiceImpl implements MemberService {
	
	@Inject
	MemberDAO dao;

	@Override
	public Integer idCheck(String m_id) throws Exception {
		return dao.idCheck(m_id);
	}

	@Override
	public void insertM(MemberVO vo) throws Exception {
		dao.insertM(vo);
	}

	@Override
	public String loginM(MemberVO vo) throws Exception {
		return dao.loginM(vo);
	}
	
	

}
