package com.my.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.my.domain.BoardVO;
import com.my.domain.SportsVO;

@Repository
public class BoardDAOImpl implements BoardDAO {
	
	@Inject
	private SqlSession sqlSession;

	private static final String NAMESPACE 
	     = "com.itwillbs.mapper.boardMapper";

	@Override
	public List<BoardVO> BoardList() throws Exception {
		return sqlSession.selectList(NAMESPACE + ".boardList");
	}

	@Override
	public void writeS(SportsVO vo) throws Exception {
		sqlSession.insert(NAMESPACE+".writeS", vo);
	}

	@Override
	public List<SportsVO> SportsList() throws Exception {
		return sqlSession.selectList(NAMESPACE+".sportsList");
	}
	

}
