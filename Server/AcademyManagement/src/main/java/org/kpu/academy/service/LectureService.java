package org.kpu.academy.service;

import java.util.List;

import org.kpu.academy.domain.Criteria;
import org.kpu.academy.domain.LectureVO;

public interface LectureService {
	public void regist(LectureVO vo) throws Exception;
	
	public LectureVO read(Integer lno) throws Exception;
	
	public void modify(LectureVO vo) throws Exception;
	
	public void remove(Integer lno) throws Exception;
	
	public List<LectureVO> listAll() throws Exception;
	
	public List<LectureVO> listPage(Criteria cri) throws Exception;
	
	public int listCount() throws Exception;
}
