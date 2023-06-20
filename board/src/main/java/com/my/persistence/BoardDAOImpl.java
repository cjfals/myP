package com.my.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.my.domain.BoardVO;

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
	

}
