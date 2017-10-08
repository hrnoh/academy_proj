package org.kpu.academy.service;

import java.util.List;

import org.kpu.academy.domain.NoticeVO;

public interface NoticeService {
	public void regist(NoticeVO vo) throws Exception;
	
	public NoticeVO read(Integer nno) throws Exception;
	
	public void modify(NoticeVO vo) throws Exception;
	
	public void remove(Integer nno) throws Exception;
	
	public List<NoticeVO> listAll() throws Exception;
}
