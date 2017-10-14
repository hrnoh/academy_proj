package org.kpu.academy.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.kpu.academy.domain.ConsultingSearchCriteria;
import org.kpu.academy.domain.ConsultingVO;
import org.kpu.academy.domain.SearchCriteria;
import org.springframework.stereotype.Repository;

@Repository
public class ConsultingDAOImpl implements ConsultingDAO {

	@Inject
	SqlSession session;
	
	private static final String namespace = "org.kpu.academy.mapper.ConsultingMapper";
	
	@Override
	public void create(ConsultingVO vo) throws Exception {
		session.insert(namespace + ".create", vo);
	}
	
	@Override
	public ConsultingVO read(Integer cno) throws Exception {
		return session.selectOne(namespace + ".read", cno);
	}
	
	@Override
	public void update(ConsultingVO vo) throws Exception {
		session.update(namespace + ".update", vo);
	}
	
	@Override
	public void delete(Integer cno) throws Exception {
		session.delete(namespace + ".delete", cno);
	}
	
	@Override
	public List<ConsultingVO> list(ConsultingSearchCriteria cri) throws Exception {
		// TODO Auto-generated method stub
		return session.selectList(namespace + ".listAll", cri);
	}

	public Integer listCount(ConsultingSearchCriteria cri) throws Exception {
		return session.selectOne(namespace + ".listCount", cri);
	}
}
