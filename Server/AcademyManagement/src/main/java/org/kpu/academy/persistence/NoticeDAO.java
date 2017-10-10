package org.kpu.academy.persistence;

import java.util.List;

import org.kpu.academy.domain.Criteria;
import org.kpu.academy.domain.NoticeVO;

public interface NoticeDAO {
	public void create(NoticeVO vo) throws Exception;
	
	public NoticeVO read(Integer nno) throws Exception;
	
	public void updateViewCnt(Integer nno) throws Exception;
	
	public void update(NoticeVO vo) throws Exception;
	
	public void delete(Integer nno) throws Exception;
	
	public List<NoticeVO> listAll(Integer lno) throws Exception;
	
	public List<NoticeVO> listPage(Criteria cri, Integer lno) throws Exception;
	
	public int listCount(Integer lno) throws Exception;
}
