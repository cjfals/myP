package com.my.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.my.domain.BoardVO;
import com.my.persistence.BoardDAO;

@Service
public class BoardServiceImpl implements BoardService {
	
	@Inject
	private BoardDAO dao;

	@Override
	public List<BoardVO> BoardList() throws Exception {
		return dao.BoardList();
	}

}
