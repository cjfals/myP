package com.my.persistence;

import java.util.List;

import com.my.domain.BoardVO;

public interface BoardDAO {
	public List<BoardVO> BoardList() throws Exception;

}
