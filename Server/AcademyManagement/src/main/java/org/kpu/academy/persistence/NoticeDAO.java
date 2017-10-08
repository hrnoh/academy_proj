package org.kpu.academy.persistence;

import java.util.List;

import org.kpu.academy.domain.NoticeVO;

public interface NoticeDAO {
	public void create(NoticeVO vo) throws Exception;
	
	public NoticeVO read(Integer nno) throws Exception;
	
	public void update(NoticeVO vo) throws Exception;
	
	public void delete(Integer nno) throws Exception;
	
	public List<NoticeVO> listAll() throws Exception;
}
