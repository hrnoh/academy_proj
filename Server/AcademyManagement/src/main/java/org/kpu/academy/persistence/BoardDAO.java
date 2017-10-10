package org.kpu.academy.persistence;

import java.util.List;

import org.kpu.academy.domain.BoardVO;
import org.kpu.academy.domain.Criteria;

public interface BoardDAO {
	public void create(BoardVO vo) throws Exception;
	
	public BoardVO read(Integer bno) throws Exception;
	
	public void updateViewCnt(Integer bno) throws Exception;
	
	public void update(BoardVO vo) throws Exception;
	
	public void delete(Integer bno) throws Exception;
	
	public List<BoardVO> listAll() throws Exception;
	
	public List<BoardVO> listPage(Criteria cri) throws Exception;
	
	public Integer listCount() throws Exception;
}
