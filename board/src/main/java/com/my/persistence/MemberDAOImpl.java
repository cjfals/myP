package com.my.persistence;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.my.domain.MemberVO;

@Repository
public class MemberDAOImpl implements MemberDAO {
	
	@Inject
	private SqlSession sqlSession;

	private static final String NAMESPACE 
	     = "com.itwillbs.mapper.memberMapper";

	@Override
	public Integer idCheck(String m_id) throws Exception {
		return sqlSession.selectOne(NAMESPACE+".idCheck", m_id);
	}

	@Override
	public void insertM(MemberVO vo) throws Exception {
		sqlSession.insert(NAMESPACE+".insertM", vo);
	}
	

}
