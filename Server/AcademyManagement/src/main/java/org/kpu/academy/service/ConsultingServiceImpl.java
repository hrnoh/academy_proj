package org.kpu.academy.service;

import java.util.List;

import javax.inject.Inject;

import org.kpu.academy.domain.ConsultingSearchCriteria;
import org.kpu.academy.domain.ConsultingVO;
import org.kpu.academy.domain.SearchCriteria;
import org.kpu.academy.persistence.ConsultingDAO;
import org.springframework.stereotype.Service;

@Service
public class ConsultingServiceImpl implements ConsultingService {

	@Inject
	private ConsultingDAO consultingDAO;
	
	@Override
	public void regist(ConsultingVO vo) throws Exception {
		consultingDAO.create(vo);
	}
	
	@Override
	public ConsultingVO read(Integer cno) throws Exception {
		return consultingDAO.read(cno);
	}
	
	@Override
	public void modify(ConsultingVO vo) throws Exception {
		consultingDAO.update(vo);
	}
	
	@Override
	public void remove(Integer cno) throws Exception {
		consultingDAO.delete(cno);
	}
	
	@Override
	public List<ConsultingVO> list(ConsultingSearchCriteria cri) throws Exception {
		// TODO Auto-generated method stub
		return consultingDAO.list(cri);
	}
	
	public Integer listCount(ConsultingSearchCriteria cri) throws Exception {
		return consultingDAO.listCount(cri);
	}

}
