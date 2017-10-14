package org.kpu.academy.persistence;

import java.util.List;

import org.kpu.academy.domain.ConsultingSearchCriteria;
import org.kpu.academy.domain.ConsultingVO;
import org.kpu.academy.domain.SearchCriteria;

public interface ConsultingDAO {
	public void create(ConsultingVO vo) throws Exception;
	
	public ConsultingVO read(Integer cno) throws Exception;
	
	public void update(ConsultingVO vo) throws Exception;
	
	public void delete(Integer cno) throws Exception;
	
	public List<ConsultingVO> list(ConsultingSearchCriteria cri) throws Exception;
	
	public Integer listCount(ConsultingSearchCriteria cri) throws Exception;
}
