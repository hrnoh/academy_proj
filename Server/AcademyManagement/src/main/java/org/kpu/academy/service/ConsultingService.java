package org.kpu.academy.service;

import java.util.List;

import org.kpu.academy.domain.ConsultingSearchCriteria;
import org.kpu.academy.domain.ConsultingVO;

public interface ConsultingService {
	
	public void regist(ConsultingVO vo) throws Exception;
	
	public ConsultingVO read(Integer cno) throws Exception;
	
	public void modify(ConsultingVO vo) throws Exception;
	
	public void remove(Integer cno) throws Exception;
	
	public List<ConsultingVO> list(ConsultingSearchCriteria cri) throws Exception;
	
	public Integer listCount(ConsultingSearchCriteria cri) throws Exception;
}
