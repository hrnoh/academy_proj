package org.kpu.academy.persistence;

import java.util.List;

import org.kpu.academy.domain.LectureVO;

public interface LectureDAO {
	public void create(LectureVO vo) throws Exception;
	
	public LectureVO read(Integer lno) throws Exception;
	
	public void update(LectureVO vo) throws Exception;
	
	public void delete(Integer lno) throws Exception;
	
	public List<LectureVO> listAll() throws Exception;
}
