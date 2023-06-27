package com.my.persistence;

import java.util.List;

import com.my.domain.BoardVO;
import com.my.domain.SportsVO;

public interface BoardDAO {
	public List<BoardVO> BoardList() throws Exception;
	
	public void writeS(SportsVO vo) throws Exception;
	
	public List<SportsVO> SportsList() throws Exception;

}
