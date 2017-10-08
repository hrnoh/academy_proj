package org.kpu.academy.persistence;

import java.util.List;

import org.kpu.academy.domain.DiaryVO;

public interface DiaryDAO {
	public void create(DiaryVO vo) throws Exception;
	
	public DiaryVO read(Integer dno) throws Exception;
	
	public void update(DiaryVO vo) throws Exception;
	
	public void delete(Integer dno) throws Exception;
	
	public List<DiaryVO> listAll() throws Exception;
}
