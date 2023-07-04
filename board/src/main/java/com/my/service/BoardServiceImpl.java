package com.my.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.my.domain.BoardVO;
import com.my.domain.SportsVO;
import com.my.persistence.BoardDAO;

@Service
public class BoardServiceImpl implements BoardService {
	
	@Inject
	private BoardDAO dao;

	@Override
	public List<BoardVO> BoardList() throws Exception {
		return dao.BoardList();
	}

	@Override
	public void writeS(SportsVO vo) throws Exception {
		dao.writeS(vo);
	}

	@Override
	public List<SportsVO> sportsList() throws Exception {
		return dao.SportsList();
	}

	@Override
	public SportsVO sportsDetail(int s_num) throws Exception {
		return dao.SportsDetail(s_num);
	}

	@Override
	public void viewCountUp(int s_num) throws Exception {
		dao.viewCountUp(s_num);
	}

	@Override
	public void sportsUpdate(SportsVO vo) throws Exception {
		dao.sportsUpdate(vo);
	}

	@Override
	public void sportsDelete(Integer s_num) throws Exception {
		dao.sportsDelete(s_num);
	}

}
