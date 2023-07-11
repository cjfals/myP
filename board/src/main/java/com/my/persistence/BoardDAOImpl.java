package com.my.persistence;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.my.domain.BoardVO;
import com.my.domain.Criteria;
import com.my.domain.SportsVO;

@Repository
public class BoardDAOImpl implements BoardDAO {
	
	@Inject
	private SqlSession sqlSession;

	private static final String NAMESPACE 
	     = "com.itwillbs.mapper.boardMapper";

	@Override
	public List<BoardVO> BoardList(Criteria cri) throws Exception {
		return sqlSession.selectList(NAMESPACE + ".boardList", cri);
	}

	@Override
	public void writeS(SportsVO vo) throws Exception {
		sqlSession.insert(NAMESPACE+".writeS", vo);
	}

	@Override
	public List<SportsVO> SportsList(Criteria cri, String category, String division) throws Exception {
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("pageStart", cri.getPageStart());
		map.put("pageSize", cri.getPageSize());
		map.put("category", category);
		map.put("division", division);
		if(category == null && division == null) {
			return sqlSession.selectList(NAMESPACE+".sportsListALL", cri);
		}
		if(category == null) {
			return sqlSession.selectList(NAMESPACE+".sportsListDiv", map);
		}
		if(division == null) {
			return sqlSession.selectList(NAMESPACE+".sportsListCate", map);
		}
		return sqlSession.selectList(NAMESPACE+".sportsList", map);
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

	@Override
	public Integer countSportsList() throws Exception {
		return sqlSession.selectOne(NAMESPACE+".countSportsList");
	}
	

}
