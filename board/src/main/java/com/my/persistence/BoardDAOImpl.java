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

	@Override
	public SportsVO SportsDetail(int s_num) throws Exception {
		return sqlSession.selectOne(NAMESPACE+".sportsDetail", s_num);
	}

	@Override
	public void viewCountUp(int s_num) throws Exception {
		sqlSession.update(NAMESPACE+".viewCountUp", s_num);
	}

	@Override
	public void sportsUpdate(SportsVO vo) throws Exception {
		sqlSession.update(NAMESPACE+".sportsUpdate", vo);
	}

	@Override
	public void sportsDelete(Integer s_num) throws Exception {
		sqlSession.delete(NAMESPACE+".sportsDelete", s_num);
	}
	

}
