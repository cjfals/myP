package com.my.persistence;

import java.util.List;

import com.my.domain.BoardVO;
import com.my.domain.Criteria;
import com.my.domain.SportsVO;

public interface BoardDAO {
	public List<BoardVO> BoardList(Criteria cri) throws Exception;
	
	public void writeS(SportsVO vo) throws Exception;
	
	public List<SportsVO> SportsList(Criteria cri, String category, String division) throws Exception;
	
	public Integer countSportsList() throws Exception;
	
	public SportsVO SportsDetail(int s_num) throws Exception;
	
	public void viewCountUp(int s_num) throws Exception;
	
	public void sportsUpdate(SportsVO vo) throws Exception;
	
	public void sportsDelete(Integer s_num) throws Exception;

}
