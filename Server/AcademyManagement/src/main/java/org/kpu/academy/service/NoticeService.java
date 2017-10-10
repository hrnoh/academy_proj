package org.kpu.academy.service;

import java.util.List;

import org.kpu.academy.domain.Criteria;
import org.kpu.academy.domain.NoticeVO;

public interface NoticeService {
	public void regist(NoticeVO vo) throws Exception;
	
	public NoticeVO read(Integer nno) throws Exception;
	
	public void modify(NoticeVO vo) throws Exception;
	
	public void remove(Integer nno) throws Exception;
	
	public List<NoticeVO> listAll(Integer lno) throws Exception;
	
	public List<NoticeVO> listPage(Criteria cri, Integer lno) throws Exception;
	
	public int listCount(Integer lno) throws Exception;
}
