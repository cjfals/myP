package com.my.service;

import java.util.List;

import com.my.domain.BoardVO;
import com.my.domain.SportsVO;

public interface BoardService {
	public List<BoardVO> BoardList() throws Exception;
	
	public void writeS(SportsVO vo) throws Exception;
	
	public List<SportsVO> sportsList() throws Exception;
	
	public SportsVO sportsDetail(int s_num) throws Exception;
	
	public void viewCountUp(int s_num) throws Exception;
	
	public void sportsUpdate(SportsVO vo) throws Exception;
	
	public void sportsDelete(Integer s_num) throws Exception;

}
